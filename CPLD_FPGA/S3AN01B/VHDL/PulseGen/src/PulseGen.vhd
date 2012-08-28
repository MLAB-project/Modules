----------------------------------------------------------------------------------
-- Company:        www.mlab.cz
-- Engineer:       miho, kakl
-- 
-- Create Date:    29/08/2011 
-- Design Name:    S3AN01A Test Design
-- Module Name:    PulseGen
-- Project Name:   PulseGen
-- Target Devices: XC3S50AN-4
-- Tool versions:  ISE 13.3
-- Description:    Sample of Pulse Generator at S3AN01A MLAB board.
--
-- Dependencies:   External PS/2 Keyboard has to be connected.
--
-- Revision:       1.00 File Created
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use WORK.PS2_pkg.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity PulseGen is
	generic (
		--	Top Value for 100MHz Clock Counter
		MAXCOUNT:	integer	:=	30_000_000;
		MUXCOUNT:	integer	:=	100_000				--	LED Display Multiplex Clock Divider
	);
	port (
		-- Main Clock
		CLK100MHz:	in		std_logic;

		-- Mode Signals (usualy not used)
		M:				in		std_logic_vector(2 downto 0);
		VS:			in		std_logic_vector(2 downto 0);

		-- Dipswitch Inputs
		DIPSW:		in		std_logic_vector(7 downto 0);

		-- Push Buttons
		PB:			in		std_logic_vector(3 downto 0);

		-- LED Bar Outputs
		LED:			out	std_logic_vector(7 downto 0);

		--	LED Display (8 digit with 7 segments and ddecimal point)
		LD_A_n:		out	std_logic;
		LD_B_n:		out	std_logic;
		LD_C_n:		out	std_logic;
		LD_D_n:		out	std_logic;
		LD_E_n:		out	std_logic;
		LD_F_n:		out	std_logic;
		LD_G_n:		out	std_logic;
		LD_DP_n:		out	std_logic;
		LD_0_n:		out	std_logic;
		LD_1_n:		out	std_logic;
		LD_2_n:		out	std_logic;
		LD_3_n:		out	std_logic;
		LD_4_n:		out	std_logic;
		LD_5_n:		out	std_logic;
		LD_6_n:		out	std_logic;
		LD_7_n:		out	std_logic;

		--	VGA Video Out Port
		VGA_R:		out	std_logic_vector(1 downto 0);
		VGA_G:		out	std_logic_vector(1 downto 0);
		VGA_B:		out	std_logic_vector(1 downto 0);
		VGA_VS:		out	std_logic;
		VGA_HS:		out	std_logic;

		-- Bank 1 Pins - Inputs for this Test
		B:				inout		std_logic_vector(24 downto 0);
		
		-- PS/2 Bidirectional Port (open collector, J31 and J32)
--		PS2_CLK1:	inout	std_logic;
--		PS2_DATA1:	inout	std_logic;
		PS2_CLK2:	inout	std_logic;
		PS2_DATA2:	inout	std_logic;

		--	Diferencial Signals on 4 pin header (J7)
		DIF1P:		inout	std_logic;
		DIF1N:		inout	std_logic;
		DIF2P:		inout	std_logic;
		DIF2N:		inout	std_logic;
		

		--	I2C Signals (on connector J30)
		I2C_SCL:		inout	std_logic;
		I2C_SDA:		inout	std_logic;

		--	Diferencial Signals on SATA like connectors (not SATA capable, J28 and J29)
		SD1AP:		inout	std_logic;
		SD1AN:		inout	std_logic;
		SD1BP:		inout	std_logic;
		SD1BN:		inout	std_logic;
		SD2AP:		inout	std_logic;
		SD2AN:		inout	std_logic;
		SD2BP:		inout	std_logic;
		SD2BN:		inout	std_logic;

		--	Analog In Out
	   ANA_OUTD:	out	std_logic;
		ANA_REFD:	out	std_logic;
		ANA_IND:		in		std_logic;

		--	SPI Memory Interface
		SPI_CS_n:	inout	std_logic;
		SPI_DO:		inout	std_logic;
		SPI_DI:		inout	std_logic;
		SPI_CLK:		inout	std_logic;
		SPI_WP_n:	inout	std_logic
	);
end entity PulseGen;


architecture PulseGen_a of PulseGen is

function to_bcd ( bin : std_logic_vector(7 downto 0) ) return std_logic_vector is
variable i : integer:=0;
variable mybcd : std_logic_vector(11 downto 0) := (others => '0');
variable bint : std_logic_vector(7 downto 0) := bin;
begin
	for i in 0 to 7 loop  -- repeating 8 times.
		mybcd(11 downto 1) := mybcd(10 downto 0);  --shifting the bits.
		mybcd(0) := bint(7);
		bint(7 downto 1) := bint(6 downto 0);
		bint(0) :='0';


		if(i < 7 and mybcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
		mybcd(3 downto 0) := std_logic_vector(unsigned(mybcd(3 downto 0)) + 3);
		end if;

		if(i < 7 and mybcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
		mybcd(7 downto 4) := std_logic_vector(unsigned(mybcd(7 downto 4)) + 3);
		end if;

		if(i < 7 and mybcd(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
		mybcd(11 downto 8) := std_logic_vector(unsigned(mybcd(11 downto 8)) + 3);
		end if;
	end loop;
	
	return mybcd;
end to_bcd;


-- O1: ____|^^^^^^^|______
-- O2: _________|^^|______
--           t1  t2    
-- t1/t2 is from 0 to 2000 ns; repeating frequency is cca 1,6 kHz

	signal T1: 		unsigned(15 downto 0)	:=	X"000a"; -- Time t1 to Impuls at O2
	signal T2: 		unsigned(15 downto 0)	:=	X"0001"; -- Duration t2 of impuls at O2
	signal CT0:		unsigned(15 downto 0) := X"0000";	-- Timer
	signal O1:	std_logic := '0';	-- Output 1
	signal O2:	std_logic := '0'; -- Output 2
	
	-- LED Demo Signals
	--	----------------

	signal Counter:		unsigned(31 downto 0)	:= X"00000000";	--	Main Counter (binary)
	signal Bar:				unsigned(7 downto 0)		:=	X"00";			--	Counter for Bar output (binary)

	signal FastBlink:		std_logic;											--	Signal mask for half intensity LED output (several kHz)

	--	LED Display
	--	-----------

	signal Number:			std_logic_vector(32 downto 0);				--	LED Display Input
	signal MuxCounter:	unsigned(31 downto 0)	:=	(others => '0');	--	LED Multiplex - Multiplex Clock Divider
	signal Enable:			std_logic;
	signal Digits:			std_logic_vector(7 downto 0)	:=	X"01";	--	LED Multiplex - Digit Counter - LED Digit Output
	signal Segments:		std_logic_vector(0 to 7);						--	LED Segment Output
	signal Code:			std_logic_vector(3 downto 0);					--	BCD to 7 Segment Decoder Output

	--	PS/2 Port
	-- ---------

	--	Interface Signals
	signal PS2_Code:		std_logic_vector(7 downto 0);					--	Key Scan Code
	signal PS2_Attribs:	std_logic_vector(7 downto 0);					--	State of Shifts for Scan Code
	signal PS2_Valid:		boolean;												--	Valid Data (synchronous with Main Clock)
	signal PS2_Shifts:	std_logic_vector(9 downto 0);					--	Immediate (life) State of Shifts for Scan Code

	--	Result
	signal PS2_Result:	std_logic_vector(15 downto 0);				--	Result (memory)

--	signal Key:				std_logic_vector(7 downto 0);					-- Cislo na klavese
	
	-- VGA Demo Signals
	--	----------------

	signal CLK:				std_logic;											--	Main Clock - global distribution network
	signal CLKVGAi:		std_logic;											--	DCM Clock Out (40MHz Pixel Clock) - internal connection from DCM to BUFG
	signal CLKVGA:			std_logic;											--	DCM Clock Out (40MHz Pixel Clock) - global distribution network
	signal VGA_Blank:		boolean;												--	Blank
	signal VGA_Hsync:		boolean;												--	Horisontal Synchronisation
	signal VGA_Vsync:		boolean;												--	Vertical Synchronisation

	signal VCounter:		unsigned(9 downto 0)		:=	"0000000000";	--	Vertical Counter
	signal HCounter:		unsigned(10 downto 0)	:=	"00000000000";	--	Horisontal Counter

	signal PinState:		std_logic;											-- For IB1 Port Test
	signal Red:				std_logic_vector(1 downto 0);
	signal Green:			std_logic_vector(1 downto 0);
	signal Blue:			std_logic_vector(1 downto 0);

	--	ADDA
	signal ADDA_DataIn:	std_logic_vector(7 downto 0);

begin

	--	Basic LED Blinking Test
	--	=======================

	-- LED Bar Counter
	process (CLK100MHz)
	begin
		if rising_edge(CLK100MHz) then
			if Counter < MAXCOUNT-1 then
				Counter <= Counter + 1;
			else
				Counter <= (others => '0');
				Bar <= Bar + 1;
			end if;
		end if;
	end process;

   LED <= std_logic_vector(Bar); --	LED Bar Connected to Counter

	FastBlink <= Counter(13) and Counter(14) and Counter(15) and Counter(16);	--	1/16 intensity

	--	LED Display (multiplexed)
	--	=========================

	--	Connect LED Display Output Ports (negative outputs)
	LD_A_n	<=	not (Segments(0) and Enable);
	LD_B_n	<=	not (Segments(1) and Enable);
	LD_C_n	<=	not (Segments(2) and Enable);
	LD_D_n	<=	not (Segments(3) and Enable);
	LD_E_n	<=	not (Segments(4) and Enable);
	LD_F_n	<=	not (Segments(5) and Enable);
	LD_G_n	<=	not (Segments(6) and Enable);
	LD_DP_n	<=	not (Segments(7) and Enable);

	LD_0_n	<=	not Digits(0);
	LD_1_n	<=	not Digits(1);
	LD_2_n	<=	not Digits(2);
	LD_3_n	<=	not Digits(3);
	LD_4_n	<=	not Digits(4);
	LD_5_n	<=	not Digits(5);
	LD_6_n	<=	not Digits(6);
	LD_7_n	<=	not Digits(7);

	--	Time Multiplex
	process (CLK100MHz)
	begin
		if rising_edge(CLK100MHz) then
			if MuxCounter < MUXCOUNT-1 then
				MuxCounter <= MuxCounter + 1;
			else
				MuxCounter <= (others => '0');
				Digits(7 downto 0) <= Digits(6 downto 0) & Digits(7);	--	Rotate Left
				Enable <= '0';
			end if;
			if MuxCounter > (MUXCOUNT-4) then
				Enable <= '1';
			end if;
		end if;
	end process;

	--	BCD to 7 Segmet Decoder
	--	 --     A
	--	|  |  F   B
	--	 --     G
	--	|  |  E   C
	--	 --     D   H
	--              ABCDEFGH
	Segments		<=	"11111100"	when	Code="0000"	else	--	Digit 0
						"01100000"	when	Code="0001"	else	--	Digit 1
						"11011010"	when	Code="0010"	else	--	Digit 2
						"11110010"	when	Code="0011"	else	--	Digit 3
						"01100110"	when	Code="0100"	else	--	Digit 4
						"10110110"	when	Code="0101"	else	--	Digit 5
						"10111110"	when	Code="0110"	else	--	Digit 6
						"11100000"	when	Code="0111"	else	--	Digit 7
						"11111110"	when	Code="1000"	else	--	Digit 8
						"11110110"	when	Code="1001"	else	--	Digit 9
						"11101110"	when	Code="1010"	else	--	Digit A
						"00111110"	when	Code="1011"	else	--	Digit b
						"10011100"	when	Code="1100"	else	--	Digit C
						"01111010"	when	Code="1101"	else	--	Digit d
						"10011110"	when	Code="1110"	else	--	Digit E
						"10001110"	when	Code="1111"	else	--	Digit F
						"00000000";

	Code 			<=	Number( 3 downto  0)	when	Digits="00000001"	else
						Number( 7 downto  4)	when	Digits="00000010"	else
						Number(11 downto  8)	when	Digits="00000100"	else
						Number(15 downto 12)	when	Digits="00001000"	else
						Number(19 downto 16)	when	Digits="00010000"	else
						Number(23 downto 20)	when	Digits="00100000"	else
						Number(27 downto 24)	when	Digits="01000000"	else
						Number(31 downto 28)	when	Digits="10000000"	else
						"0000";

--	Key		<=	"00000000"	when	PS2_Result(7 downto 0)=X"70"	else	--	Digit 0
--				   "00000001"	when	PS2_Result(7 downto 0)=X"69"	else	--	Digit 1
--				   "00000010"	when	PS2_Result(7 downto 0)=X"72"	else	--	Digit 2
--					"11111111";
						
--  Number(31 downto 28) <= Key(3 downto 0);

--	Number( 7 downto  0) <=	std_logic_vector(BAR);
--	Number(31 downto 24)	<=	DIPSW;

	--	PS/2 Port
	--	=========

	--	Instantiate PS/2 Keyboard Interface Handler
	PS2_Keyboard: PS2 generic map(
		CLKFREQ		=>	100_000_000
	)
	port map(
		-- Main Clock
		Clk			=>	CLK100MHz,

		-- PS/2 Port
		PS2_Clk		=>	PS2_CLK2,
		PS2_Data		=>	PS2_DATA2,

		-- Result - valid when PS2_Valid
		PS2_Code		=>	PS2_Code,
		PS2_Attribs	=>	PS2_Attribs,
		PS2_Valid	=>	PS2_Valid,

		--	Immediate State of Shifts
		PS2_Shifts	=>	PS2_Shifts
	);	--	PS2

	process (CLK100MHz)
	begin
		if rising_edge(CLK100MHz) then
			if PS2_Valid and PS2_Attribs(7)='0' then
				--	Valid Scan Code with no Break Attribute
				PS2_Result( 7 downto 0)	<=	PS2_Code;
				PS2_Result(15 downto 8)	<=	PS2_Attribs;
			end if;
			
			if PS2_Valid and PS2_Attribs(7)='0' then
			   if PS2_Code = X"74" and T1<200 then T1<=T1+1; end if;
			   if PS2_Code = X"6b" and T1>0 then T1<=T1-1; end if;
			   if PS2_Code = X"75" and T2<200 then T2<=T2+1; end if;
			   if PS2_Code = X"72" and T2>0 then T2<=T2-1; end if;
				CT0<=X"0000";
				O1<='0';
				O2<='0';
			end if;

			if CT0=X"F000" then
				CT0<=X"0000";
			else
				CT0<=CT0+1;
			end if;
			
			if CT0=X"0000" then
				O1<='1';
			end if;
			
			if CT0=T1 then
				O2<='1';
			end if;
		
			if CT0=(T2+T1) then
				O1<='0';
				O2<='0';
			end if;
			
		end if;
		
	end process;

	--	Display Result on LED
	Number(3  downto 0)  <= (others=>'0');
	Number(15 downto 4)  <= to_bcd(std_logic_vector(T2));
	Number(19 downto 16) <=	(others=>'0');
	Number(31 downto 20) <=	to_bcd(std_logic_vector(T1));
	

	--	Test Diferencial In/Outs
	-- ========================

	--	Output Signal on SATA Connector
	SD1AP			<=	Bar(0);
	SD1AN			<=	Bar(1);
	SD1BP			<=	Bar(2);
	SD1BN			<=	Bar(3);

	--	Input Here via SATA Cable
	SD2AP			<=	'Z';
	SD2AN			<=	'Z';
	SD2BP			<=	'Z';
	SD2BN			<=	'Z';

	--	Copy SATA Connector Input to 4 pin header (J7) - Connect these signals to B port input to visualize them
	-- !!!!!!!!!!!! Pulse Generator Outputs !!!!!!!!!!!!!!!!!!!!!
	DIF1P			<=	O1; 
	B(0)			<= O1;
	DIF1N			<=	not O1; 
	B(1)			<=	not O1;
	DIF2P			<=	O2;
	B(2)			<= O2;
	DIF2N			<=	not O2;
	B(3)			<=	not O2;

	--	Unused Signals
	--	==============

	--	I2C Signals (on connector J30)
	I2C_SCL		<=	'Z';
	I2C_SDA		<=	'Z';

	--	SPI Memory Interface
	SPI_CS_n		<=	'Z';
	SPI_DO		<=	'Z';
	SPI_DI		<=	'Z';
	SPI_CLK		<=	'Z';
	SPI_WP_n		<=	'Z';

   ANA_OUTD	<= 'Z';
	ANA_REFD <= 'Z';

	VGA_R	<= "ZZ";
	VGA_G	<= "ZZ";
	VGA_B	<= "ZZ";
	VGA_VS	<= 'Z';
	VGA_HS	<= 'Z';

end architecture PulseGen_a;
