-- ========================================================================
-- 
-- S3AN01_ChipScope
--
-- Logic Analyser based on Xilinx ChipScope IP Core for S3AN01 Board
--
-- (c) miho 2013 / http://www.mlab.cz/PermaLink/XILINX_ChipScope
--
-- Demo application contains some Clock Logic (DCM block and 
-- clock switch to be able to set different sample clocks).
-- The main function is ChipScope Logic Analyser with 16 data inputs
-- (with 24 bit trigger) and storage for 1024 Data Samples.
--
-- Sampling clock is selectable to 170/100/50/20/10/5/2/1MHz
--
-- To implement the design the ChipScope license is required.
--
-- To use (the logic analyser) no speceial license is needed,
-- WebPack ISE or Lab Tools is enough). Requires some compatible
-- JTAG cable. Compatible with MLAB Xilinx Virtual Cable as well
-- http://www.mlab.cz/PermaLink/XILINX_XVC
--
-- Device:		Spartan3AN XC3S50AN-4TQG144C
--
-- Software:	ISE WebPack 14.5
--
-- ========================================================================


-- Standard Library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


-- Xilinx Library (necessary for DMC and other Xilinx blocks)
library UNISIM;
use UNISIM.VComponents.all;


-- Interface
entity S3AN01_ChipScope is
	generic(
		ILA_WIDE:	boolean := TRUE;										--	TRUE/FALSE	-> 18bit x 1024 / 9bit x 2048 logic analyser
		MUXCOUNT:	integer := 100_000									--	LED Display Multiplex Clock Divider
	);
	port(
		-- Main Clock
		CLK100MHz:	in		std_logic;										--	100MHz external xtal clock source

		-- Mode Signals (usualy not used)
		VS:			out	std_logic_vector(2 downto 0);				--	SPI Flash Vendor Mode Select

		-- Dipswitch Inputs
		DIPSW:		in		std_logic_vector(7 downto 0);

		-- LED Bar Outputs
		LED:			out	std_logic_vector(7 downto 0);

		--	LED Display (8 digits with 7 segments and decimal point)
		LD_CA_n:		out	std_logic_vector(7 downto 0);
		LD_SEG_n:	out	std_logic_vector(7 downto 0);

		-- Bank 1 Pins Inputs
		P:				in		std_logic_vector(24 downto 0);

		--	Diferencial Signals on 4 pin header (J7)
		DIF1P:		inout	std_logic;
		DIF1N:		inout	std_logic;
		DIF2P:		inout	std_logic;
		DIF2N:		inout	std_logic
	);
end S3AN01_ChipScope;


-- Implementation
architecture S3AN01_ChipScope_a of S3AN01_ChipScope is

	--	Clock Signals
	--	=============

	--	DCM Signals
	signal DCM_CLK0:				std_logic;														--	DCM output for feedback
	signal DCM_CLKFX:				std_logic;														--	DCM output of the fastest clock 
	signal CLK_FAST:				std_logic;														--	Main clock for ILA
	signal CLK_FAST_Q:			std_logic;														--	Auxiliary signal (for CLK_FAST sent to pin)

	--	100MHz Clock Switch
	-- CLK100MHz Clock Domain
	signal CLK100MHz_CE:			std_logic;														--	Gate Signal for slow dwn of the 100MHz clock
	signal CLK100MHz_Gated:		std_logic;														--	Gated Clocks
	signal CLK100MHz_CE_Cnt:	unsigned(6 downto 0) := (others => '0');				--	Gate Signal Counter (min frequency is 1/100 of CLK100MHz

	--	1 Hot Clock Select Signals
	-- CLK100MHz Clock Domain
	signal SET_CLK_MAX:			std_logic := '0';												--	Clock Select Signal - Maximim (150-170Mhz)
	signal SET_CLK_100MHz:		std_logic := '1';												--	Clock Select Signal - 100MHz
	signal SET_CLK_50MHz:		std_logic := '0';												--	Clock Select Signal - 50MHz
	signal SET_CLK_20Mhz:		std_logic := '0';												--	Clock Select Signal - 20MHz
	signal SET_CLK_10Mhz:		std_logic := '0';												--	Clock Select Signal - 10MHz
	signal SET_CLK_5Mhz:			std_logic := '0';												--	Clock Select Signal - 5MHz
	signal SET_CLK_2Mhz:			std_logic := '0';												--	Clock Select Signal - 2MHz
	signal SET_CLK_1Mhz:			std_logic := '0';												--	Clock Select Signal - 1MHz

	--	Signals from and to ChipScope Virtual IO (set and display frequency)
	-- CLK_FAST and CLK100MHz time domain
	signal SYNC_IN:				std_logic_vector(7 downto 0);								--	Input to ChipScope VIO
	signal SYNC_OUT:				std_logic_vector(7 downto 0);								--	Output from ChipScope VIO
	signal SW_SYNC:				std_logic_vector(7 downto 0) := (others => '0');	--	Asyn inputs synced


	--	LED Ouput with time multiplex
	--	=============================

	signal WideBCD:				std_logic_vector(2*5-1 downto 0);						--	Constant width of ILA in BCD (2 char wide)
	signal FrequencyBCD:			std_logic_vector(3*5-1 downto 0);						--	Selected frequency in BCD (3 char wide)
	signal Code:					std_logic_vector(4 downto 0);								--	BCD to 7 Segment Decoder Output
	signal Segments:				std_logic_vector(0 to 7);									--	LED Segment Output

	--	Time Multiplex
	signal MuxCounter:			unsigned(31 downto 0)			:=	(others => '0');	--	LED Multiplex - Multiplex Clock Divider
	signal LedEnable:				std_logic;														--	LED Display Brightness
	signal Digits:					std_logic_vector(7 downto 0)	:=	X"01";				--	LED Multiplex - Digit Counter - LED Digit Output


	--	Test Generator signals
	--	======================
	
	signal Counter:				std_logic_vector(7 downto 0);								--	Counter


	--	ChipScope Signals
	--	=================

	-- Input data
	--	CLK_FAST Clock Domain
	signal DataReg:				std_logic_vector(P'range);									--	Data and Trigger input
	
	--	Trigger Output
	signal TriggerOut:			std_logic;														--	Trigegr output from ChipScope ILA to pin

	--	User Outputs from ChipScope Virtual IO
	signal SYNC_OUT_USER:		std_logic_vector(2 downto 0);								--	Output from ChipScope VIO

	--	ChipScope Control Signals
	signal Control0:				std_logic_vector(35 downto 0);
	signal Control1:				std_logic_vector(35 downto 0);
	signal Control2:				std_logic_vector(35 downto 0);

	--	ChipScope Control Block
	component ChipScope_ICON
	port (
		CONTROL0:	inout	std_logic_vector(35 downto 0);
		CONTROL1:	inout	std_logic_vector(35 downto 0);
		CONTROL2:	inout	std_logic_vector(35 downto 0)
	);
	end component;

	-- ChipScope Virtual I/O Block
	component ChipScope_VIO_FreqSel
	port (
		CONTROL:		inout	std_logic_vector(35 downto 0);
		CLK:			in		std_logic;
		SYNC_IN:		in		std_logic_vector(7 downto 0);
		SYNC_OUT:	out	std_logic_vector(7 downto 0)
	);
	end component;

	-- ChipScope Virtual I/O Block
	component ChipScope_VIO_UserOut
	port (
		CONTROL:		inout	std_logic_vector(35 downto 0);
		CLK:			in		std_logic;
		SYNC_OUT:	out	std_logic_vector(2 downto 0)
	);
	end component;

	--	ChipScope Integrated Logic Analyser
	component ChipScope_ILA_18_1024
	port (
		CONTROL:		inout	std_logic_vector(35 downto 0);
		CLK:			in		std_logic;
		DATA:			in		std_logic_vector(17 downto 0);	-- 18 bits wide data
		TRIG0:		in		std_logic_vector(23 downto 0);
		TRIG_OUT:	out	std_logic
	);
	end component;

	--	ChipScope Integrated Logic Analyser
	component ChipScope_ILA_9_2048
	port (
		CONTROL:		inout	std_logic_vector(35 downto 0);
		CLK:			in		std_logic;
		DATA:			in		std_logic_vector(8 downto 0);		--	9 bits wide data
		TRIG0:		in		std_logic_vector(23 downto 0);
		TRIG_OUT:	out	std_logic
	);
	end component;

begin


	--	===================================================
	--	Clock Network and Clock Switching
	--	===================================================
	--
	-- The fastest clock signal is generated from 100MHz by DCM.
	-- The design maximim is 170MHz for selected device.
	--
	-- For lower frequency the 100MHz clocks are gated in BUFGCE
	--	acording to SET_CLK_xxx signals.
	--
	-- For Logic Analyser we use 170MHz from DCM or gated 100MHz
	-- switchd by BUFGMUX block.
	

	-- DCM_SP: Digital Clock Manager Circuit
	--         Spartan-3A
	-- Xilinx HDL Language Template, version 14.5
	--
	--	CLKFB without BUFG (we do not need phase relation to the original clock)
	--
	--	Design Limits (XC3S50AN-4):
	--
	--		5/3	-> 166MHz - o.k. (best 5.9ns   - 169.5MHz)
	--		17/10	-> 170MHz - o.k. (best 5.748ns - 174MHz)		<------ Used Here
	--		12/7	-> 171MHz - Timing Error
	--		 7/4	-> 175MHz - Timing Error
	--		18/10	-> 180MHz - Timing Error
	--
	DCM_SP_inst:	DCM_SP
	generic map (
		CLKDV_DIVIDE				=>	2.0,							--  Divide by: 1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0,7.5,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0 or 16.0
		CLKFX_DIVIDE				=>	10,							--  Can be any interger from 1 to 32
		CLKFX_MULTIPLY				=>	17,							--  Can be any integer from 2 to 32
		CLKIN_DIVIDE_BY_2			=>	FALSE,						--  TRUE/FALSE to enable CLKIN divide by two feature
		CLKIN_PERIOD				=>	10.0,							--  Specify period of input clock
		CLKOUT_PHASE_SHIFT		=>	"NONE",						--  Specify phase shift of "NONE", "FIXED" or "VARIABLE" 
		CLK_FEEDBACK				=>	"1X",							--  Specify clock feedback of "NONE", "1X" or "2X" 
		DESKEW_ADJUST				=>	"SYSTEM_SYNCHRONOUS",	-- "SOURCE_SYNCHRONOUS", "SYSTEM_SYNCHRONOUS" or an integer from 0 to 15
		DLL_FREQUENCY_MODE		=>	"HIGH",						-- "HIGH" or "LOW" frequency mode for DLL
		DUTY_CYCLE_CORRECTION	=>	TRUE,							--  Duty cycle correction, TRUE or FALSE
		PHASE_SHIFT					=>	0,								--  Amount of fixed phase shift from -255 to 255
		STARTUP_WAIT				=>	FALSE							--  Delay configuration DONE until DCM_SP LOCK, TRUE/FALSE
	)
	port map (
		CLK0		=>	DCM_CLK0,		-- 0 degree DCM CLK ouptput
	--	CLK180	=>	CLK180,			-- 180 degree DCM CLK output
	--	CLK270	=>	CLK270,			-- 270 degree DCM CLK output
	--	CLK2X		=>	CLK2X,			-- 2X DCM CLK output
	--	CLK2X180	=>	CLK2X180,		-- 2X, 180 degree DCM CLK out
	--	CLK90		=>	CLK90,			-- 90 degree DCM CLK output
	--	CLKDV		=>	CLKDV,			-- Divided DCM CLK out (CLKDV_DIVIDE)
		CLKFX		=>	DCM_CLKFX,		-- DCM CLK synthesis out (M/D)
	--	CLKFX180	=>	CLKFX180,		-- 180 degree CLK synthesis out
	--	LOCKED	=>	LOCKED,			-- DCM LOCK status output
	--	PSDONE	=>	PSDONE,			-- Dynamic phase adjust done output
	--	STATUS	=>	STATUS,			-- 8-bit DCM status bits output
		CLKFB		=>	DCM_CLK0,		-- DCM clock feedback
		CLKIN		=>	CLK100MHz,		-- Clock input (from IBUFG, BUFG or DCM)
	--	PSCLK		=>	PSCLK,			-- Dynamic phase adjust clock input
	--	PSEN		=>	PSEN,				-- Dynamic phase adjust enable input
	--	PSINCDEC	=>	PSINCDEC,		-- Dynamic phase adjust increment/decrement
		RST		=>	'0'				-- DCM asynchronous reset input
	);


	--	Generate Clock Gate signal for 100MHz Clock
	process (CLK100MHz)
	begin
		if rising_edge(CLK100MHz) then
			if CLK100MHz_CE_Cnt=0 then
				CLK100MHz_CE <= '1';
				if SET_CLK_100MHz='1' then
					CLK100MHz_CE_Cnt <= to_unsigned(1-1, CLK100MHz_CE_Cnt'length);
				elsif SET_CLK_50MHz='1' then
					CLK100MHz_CE_Cnt <= to_unsigned(2-1, CLK100MHz_CE_Cnt'length);
				elsif SET_CLK_20MHz='1' then
					CLK100MHz_CE_Cnt <= to_unsigned(5-1, CLK100MHz_CE_Cnt'length);
				elsif SET_CLK_10MHz='1' then
					CLK100MHz_CE_Cnt <= to_unsigned(10-1, CLK100MHz_CE_Cnt'length);
				elsif SET_CLK_5MHz='1' then
					CLK100MHz_CE_Cnt <= to_unsigned(20-1, CLK100MHz_CE_Cnt'length);
				elsif SET_CLK_2MHz='1' then
					CLK100MHz_CE_Cnt <= to_unsigned(50-1, CLK100MHz_CE_Cnt'length);
				elsif SET_CLK_1MHz='1' then
					CLK100MHz_CE_Cnt <= to_unsigned(100-1, CLK100MHz_CE_Cnt'length);
				end if;
			else
				CLK100MHz_CE <= '0';
				CLK100MHz_CE_Cnt <= CLK100MHz_CE_Cnt-1;
			end if;
		end if;
	end process;


	-- Gate 100MHz Clocks (to produce 100/50/20/10/5/2/1 MHz)
	--	Generates 5ns pulses with 10/20/50/100/200/500/1000ns period
	BUFGCE_CLK100MHz: BUFGCE
	port map (
		I	=> CLK100MHz,			-- Clock buffer input
		CE	=> CLK100MHz_CE,		-- Clock enable input
		O	=> CLK100MHz_Gated	-- Clock buffer ouptput
	);


	--	Switch (gated) 100MHz and the fastest Clock signal from DCM
	BUFGMUX_CLK_FAST: BUFGMUX
	port map (
		I0	=>	CLK100MHz_Gated,	-- Clock0 input			--	100/50/20/10/50/20/1MHz
		I1	=>	DCM_CLKFX,			-- Clock1 input			--	170MHz
		S	=>	SET_CLK_MAX,		-- Clock select input
		O	=>	CLK_FAST				-- Clock MUX output
	);


	-- Assynchrnous inputs and inputs from CLK_FAST clock domain must be synchronised
	--		SYNC_OUT -	CLK_FAST clock domain
	--		DIPSW		-	External (off-chip) async inputs
	process (CLK100MHz)
	begin
		if rising_edge(CLK100MHz) then
			SW_SYNC <= SYNC_OUT or DIPSW;
		end if;
	end process;


	--	Ferquency Selector
	--	FSM - 1 hot
	process (CLK100MHz)
	variable TMP: std_logic_vector(SYNC_OUT'range);
	variable NEW_DATA: std_logic;
	begin
		if rising_edge(CLK100MHz) then
			TMP := (others => '0');
			NEW_DATA := '1';
			if SW_SYNC(7)='1' then
				TMP(7) := '1';
			elsif SW_SYNC(6)='1' then
				TMP(6) := '1';
			elsif SW_SYNC(5)='1' then
				TMP(5) := '1';
			elsif SW_SYNC(4)='1' then
				TMP(4) := '1';
			elsif SW_SYNC(3)='1' then
				TMP(3) := '1';
			elsif SW_SYNC(2)='1' then
				TMP(2) := '1';
			elsif SW_SYNC(1)='1' then
				TMP(1) := '1';
			elsif SW_SYNC(0)='1' then
				TMP(0) := '1';
			else
				NEW_DATA := '0';
			end if;
			if NEW_DATA='1' then
				SET_CLK_MAX		<= TMP(7);
				SET_CLK_100MHz	<= TMP(6);
				SET_CLK_50MHz	<= TMP(5);
				SET_CLK_20MHz	<= TMP(4);
				SET_CLK_10MHz	<= TMP(3);
				SET_CLK_5MHz	<= TMP(2);
				SET_CLK_2MHz	<= TMP(1);
				SET_CLK_1MHz	<= TMP(0);
			end if;
		end if;
	end process;


	--	Send selected frequency to ChipScope Virtual IO
	-- Sync it to the CLK_FAST timing domain
	SET_CLK_proc: process (CLK_FAST)
	begin
		if rising_edge(CLK_FAST) then
			SYNC_IN(7) <= SET_CLK_MAX;
			SYNC_IN(6) <= SET_CLK_100MHz;
			SYNC_IN(5) <= SET_CLK_50MHz;
			SYNC_IN(4) <= SET_CLK_20Mhz;
			SYNC_IN(3) <= SET_CLK_10Mhz;
			SYNC_IN(2) <= SET_CLK_5Mhz;
			SYNC_IN(1) <= SET_CLK_2Mhz;
			SYNC_IN(0) <= SET_CLK_1Mhz;
		end if;
	end process;


	--	===================================================
	--	ChipScope Instance - Control / Virtual IO / ILA
	--	===================================================


	--	ChipScope Instance - Control Block
	MyChipScopeICON: ChipScope_ICON
	port map (
		CONTROL0 => Control0,
		CONTROL1 => Control1,
		CONTROL2 => Control2
	);


	--	ChipScope Instance - Virtual I/O Block
	MyChipScopeVIO_FreqSel: ChipScope_VIO_FreqSel
	port map (
		CONTROL	=>	Control0,
		CLK		=>	CLK_FAST,
		SYNC_IN	=>	SYNC_IN,
		SYNC_OUT	=>	SYNC_OUT
	);


	--	ChipScope Instance - Virtual I/O Block
	MyChipScopeVIO_UserOut: ChipScope_VIO_UserOut
	port map (
		CONTROL	=>	Control1,
		CLK		=>	CLK_FAST,
		SYNC_OUT	=>	SYNC_OUT_USER
	);


	--	ChipScope Instance - Integrated Logic Analyser
	ILA_18_1024: if ILA_WIDE generate
	begin
		MyChipScopeILA: ChipScope_ILA_18_1024
		port map (
			CONTROL	=> Control2,
			CLK		=> CLK_FAST,
			DATA		=>	DataReg(17 downto 0),
			TRIG0		=>	DataReg(23 downto 0),
			TRIG_OUT	=>	TriggerOut
		);
	end generate;
	ILA_9_2048: if not ILA_WIDE generate
	begin
		MyChipScopeILA: ChipScope_ILA_9_2048
		port map (
			CONTROL	=> Control2,
			CLK		=> CLK_FAST,
			DATA		=>	DataReg(8 downto 0),
			TRIG0		=>	DataReg(23 downto 0),
			TRIG_OUT	=>	TriggerOut
		);
	end generate;


	--	Data inputs (ILA does not like to have data inputs connected to io pins)
	process(CLK_FAST)
	begin
		if rising_edge(CLK_FAST) then
			DataReg <= P(DataReg'range);
		end if;
	end process;


	-- VIO User Outputs
	VS	<=	SYNC_OUT_USER;


	--	Trigger Output (Diferencial signal)
	OBUFDS_TriggerOut: OBUFDS
	generic map (
		IOSTANDARD => "DEFAULT"
	)
	port map (
		I	=>	TriggerOut,				-- Buffer input 
		O	=>	DIF1P,					-- Diff_p output (connect directly to top-level port)
		OB	=>	DIF1N						-- Diff_n output (connect directly to top-level port)
	);


	--	===================================================
	--	LED Display (multiplexed)
	--	===================================================


	--	Frequency in BCD
	FrequencyBCD	<=	"00001"&"00111"&"00000"	when	SET_CLK_MAX='1'		else	--	170 MHz
							"00001"&"00000"&"00000"	when	SET_CLK_100MHz='1'	else	--	100 MHz
							"11111"&"00101"&"00000"	when	SET_CLK_50MHz='1'		else	--	 50 MHz
							"11111"&"00010"&"00000"	when	SET_CLK_20MHz='1'		else	--	 20 MHz
							"11111"&"00001"&"00000"	when	SET_CLK_10MHz='1'		else	--	 10 MHz
							"11111"&"11111"&"00101"	when	SET_CLK_5MHz='1'		else	--	  5 MHz
							"11111"&"11111"&"00010"	when	SET_CLK_2MHz='1'		else	--	  2 MHz
							"11111"&"11111"&"00001"	when	SET_CLK_1MHz='1'		else	--	  1 MHz
							"11111"&"11111"&"11111";


	--	ILA width in BCD
	ILA_DCD_18_1024: if ILA_WIDE generate
	begin
		WideBCD	<=	"00001"&"01000";
	end generate;
	ILA_DCD_9_2048: if not ILA_WIDE generate
	begin
		WideBCD	<=	"11111"&"01001";
	end generate;


	-- Input data selector ( WIDE / ILA / FREQ )
	Code	<=	FrequencyBCD( 4 downto  0)	when	Digits="00000001"	else
				FrequencyBCD( 9 downto  5)	when	Digits="00000010"	else
				FrequencyBCD(14 downto 10)	when	Digits="00000100"	else
				"10010"							when	Digits="00001000"	else		--	A
				"10001"							when	Digits="00010000"	else		--	L
				"10000"							when	Digits="00100000"	else		--	I
				WideBCD( 4 downto  0)		when	Digits="01000000"	else
				WideBCD( 9 downto  5)		when	Digits="10000000"	else
				"11111";


	--	Time Multiplex
	process (CLK100MHz)
	begin
		if rising_edge(CLK100MHz) then
			if MuxCounter < MUXCOUNT-1 then
				MuxCounter <= MuxCounter + 1;
			else
				MuxCounter <= (others => '0');
				Digits(7 downto 0) <= Digits(6 downto 0) & Digits(7);	--	Rotate Left (1 hot encoded)
			end if;
			-- Display brightness (1/2)
			if MuxCounter > (MUXCOUNT-MUXCOUNT/2) then
				LedEnable <= '1';
			else
				LedEnable <= '0';
			end if;
		end if;
	end process;


	--	BCD to 7 Segmet Decoder
	--	 --     A
	--	|  |  F   B
	--	 --     G
	--	|  |  E   C
	--	 --     D   H
	--              HGFEDCBA
	Segments		<=	"00111111"	when	Code="00000"	else	--	Digit 0	--	Hex Didits
						"00000110"	when	Code="00001"	else	--	Digit 1
						"01011011"	when	Code="00010"	else	--	Digit 2
						"01001111"	when	Code="00011"	else	--	Digit 3
						"01100110"	when	Code="00100"	else	--	Digit 4
						"01101101"	when	Code="00101"	else	--	Digit 5
						"01111101"	when	Code="00110"	else	--	Digit 6
						"00000111"	when	Code="00111"	else	--	Digit 7
						"01111111"	when	Code="01000"	else	--	Digit 8
						"01101111"	when	Code="01001"	else	--	Digit 9
						"01110111"	when	Code="01010"	else	--	Digit A
						"01111100"	when	Code="01011"	else	--	Digit b
						"00111001"	when	Code="01100"	else	--	Digit C
						"01011110"	when	Code="01101"	else	--	Digit d
						"01111001"	when	Code="01110"	else	--	Digit E
						"00110001"	when	Code="01111"	else	--	Digit F
						"00000110"	when	Code="10000"	else	--	Digit I	--	User Digits
						"00111000"	when	Code="10001"	else	--	Digit L
						"01110111"	when	Code="10010"	else	--	Digit A
						"00000000";	-- none


	--	Connect LED Display Output Ports (negative outputs)
	LD_CA_n	<=	not Digits;
	LD_SEG_n	<=	not Segments when LedEnable='1' else "11111111";


	--	===================================================
	--	Test generator (counter)
	--	===================================================

	--	Test counter
	process(CLK100MHz)
	begin
		if rising_edge(CLK100MHz) then
			Counter <= std_logic_vector(unsigned(Counter) + 1);
		end if;
	end process;


	-- Test outputs
	LED <= Counter;


	-- CLK_FAST Output - DDR register
	ODDR2_FastClk: ODDR2
	generic map(
		DDR_ALIGNMENT	=>	"NONE",	-- Sets output alignment to "NONE", "C0", "C1" 
		INIT				=>	'0',		-- Sets initial state of the Q output to '0' or '1'
		SRTYPE			=>	"SYNC"	-- Specifies "SYNC" or "ASYNC" set/reset
	)
	port map (
		C0	=>	CLK_FAST,				-- 1-bit clock input
		C1	=>	not CLK_FAST,			-- 1-bit clock input
		CE	=>	'1',						-- 1-bit clock enable input
		D0	=>	'0',						-- 1-bit data input (associated with C0)
		D1	=>	'1',						-- 1-bit data input (associated with C1)
		R	=>	'0',						-- 1-bit reset input
		S	=>	'0',						-- 1-bit set input
		Q	=>	CLK_FAST_Q				-- 1-bit output data
	);


	-- CLK_FAST Output - differncial pin buffer
	OBUFDS_FastClkOut: OBUFDS
	generic map (
		IOSTANDARD => "DEFAULT"
	)
	port map (
		I	=>	CLK_FAST_Q,				-- Buffer input 
		O	=>	DIF2P,					-- Diff_p output (connect directly to top-level port)
		OB	=>	DIF2N						-- Diff_n output (connect directly to top-level port)
	);


end S3AN01_ChipScope_a;
