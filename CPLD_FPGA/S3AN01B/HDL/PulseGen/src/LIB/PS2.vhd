----------------------------------------------------------------------------------
-- Company:        www.mlab.cz
-- Engineer:       miho
-- 
-- Create Date:    19:31:10 02/20/2011 
-- Design Name:    S3AN01A Test Design
-- Module Name:    PS2
-- Project Name:   S3AN01A Test Design
-- Target Devices: XILINX FPGA (Spartan3A/3AN)
-- Tool versions:  ISE 12.4 / 13.1 / 13.3
-- Description:    Test design for PCB verification
--
-- Dependencies:   None
--
-- Revision:       0.01 File Created
--
----------------------------------------------------------------------------------
--
--	PS/2 Keyboard Driver
--	====================
--
--	PS2_Code
--	--------
--
--	Standard PS/2 Scan Code
--
--
--	PS2_Attribs
--	-----------
--
--	Bit 0	-	Shift
--	Bit 1	-	Ctrl
--	Bit 2	-	Alt
--	Bit 3	-	Ext0 (arrows, ...)
--	Bit 4	-	Ext1
--	Bit 5	-	Shift Num (arrows with NumLock)
--	Bit 6
--	Bit 7	-	Break (key release)
--
--
--	PS2_Shifts
--	----------
--
--	Bit 0	-	Shift Left
--	Bit 1 -	Shift Right
--	Bit 2 -	Ctrl Left
--	Bit 3 -	Ctrl Right
--	Bit 4 -	Alt Left
--	Bit 5 -	Alt Right
--	Bit 6 -	Num Lock
--	Bit 7 -	Caps Lock
--	Bit 8 -	Scroll Lock
--	Bit 9 -	Shift Num (virtual state) -	Not to be used
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PS2 is
	generic (
		--	Top Value for 100MHz Clock Counter
		CLKFREQ:			integer											--	Frequency in Hz (minimum cca 50_000)
	);
	port (
		-- Main Clock
		Clk:				in		std_logic;

		-- PS/2 Port
		PS2_Clk:			inout	std_logic;
		PS2_Data:		inout	std_logic;

		-- Result - valid when PS2_Valid
		PS2_Valid:		out	boolean;									--	Valid Data (synchronous with Clk)
		PS2_Code:		out	std_logic_vector(7 downto 0);		--	Key Scan Code
		PS2_Attribs:	out	std_logic_vector(7 downto 0);		--	State of Shifts for Scan Code

		--	Immediate State of Shifts
		PS2_Shifts:		out	std_logic_vector(9 downto 0)		--	Immediate (live) State of Shift/Alt/Ctrl etc.
	);
end entity PS2;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
package PS2_pkg is
	component PS2
	generic (
		--	Top Value for 100MHz Clock Counter
		CLKFREQ:			integer											--	Frequency in Hz (minimum cca 50_000)
	);
	port (
		-- Main Clock
		Clk:				in		std_logic;

		-- PS/2 Port
		PS2_Clk:			inout	std_logic;
		PS2_Data:		inout	std_logic;

		-- Result - valid when PS2_Valid
		PS2_Valid:		out	boolean;									--	Valid Data (synchronous with Main Clock)
		PS2_Code:		out	std_logic_vector(7 downto 0);		--	Key Scan Code
		PS2_Attribs:	out	std_logic_vector(7 downto 0);		--	State of Shifts for Scan Code

		--	Immediate State of Shifts
		PS2_Shifts:		out	std_logic_vector(9 downto 0)		--	Immediate (live) State of Shift/Alt/Ctrl etc.
	);
	end component PS2;
end package;


architecture PS2_a of PS2 is

	function to_std_logic(State: boolean) return std_logic is
	begin
		if State then
			return '1';
		else
			return '0';
		end if;
	end function to_std_logic;

	--	Sampled PS/2 Clock and Data
	signal PS2_Clk_d:			std_logic							:=	'0';					--	For sync with systerm clock
	signal PS2_Clk_dd:		std_logic							:=	'0';					--	For falling edge detection
	signal PS2_Data_d:		std_logic							:=	'0';					--	For sync with systerm clock

	--	Level 0 - Read Byte from PS/2 Interface
	type ReadByte_t			is (																--	Read Byte FSM State Type
										Idle,															--		Inactive State
										D0, D1, D2, D3, D4, D5, D6, D7,						--		Receiving Bits
										Parity,														--		Receiving Parity
										Final															--		Receiving Stop Bit and Sending ReadByte_rdy
									);
	signal ReadByteState:	ReadByte_t							:=	Idle;					--	Read Byte FSM State
	signal ReadByte:			std_logic_vector(7 downto 0)	:=	(others => '0');	--	Read Byte (Raw Scan Code Byte)
	signal ReadByte_rdy:		boolean								:=	false;				--	Read Byte Ready (synchronous with Clk)

	--	Level 1 - Process Raw Scan Codes E0,F1 and F0 - valid only when Level1_rdy
	signal FlagE0:				boolean								:=	false;				-- E0 - Ext0 Key
	signal FlagE1:				boolean								:=	false;				-- E1 - Ext1 Key
	signal FlagF0:				boolean								:=	false;				-- F0 - Break (release) Key
	signal Level1_rdy:		boolean								:=	false;				--	Send Data and Flags to the next level

	--	Level 2 - Process Raw Scan Codes and Shift-Like Atributes E0, E1 and F0 - valid only when Level2_rdy
	signal FlagBreak:			boolean								:=	false;				--	F0    - Break (depress) Key
	signal FlagAltR:			boolean								:=	false;				--	E0 11 - State of Right Alt Key
	signal FlagAltL:			boolean								:=	false;				--	11    - State of Left  Alt Key
	signal FlagShiftNum:		boolean								:=	false;				--	E0 12 - State of Ext Left Shift (pseudo key)
	signal FlagShiftL:		boolean								:=	false;				--	12
	signal FlagShiftR:		boolean								:=	false;				--	59
	signal FlagCtrlR:			boolean								:=	false;				--	E0 14
	signal FlagCtrlL:			boolean								:=	false;				--	14
	signal FlagExt0:			boolean								:=	false;				--	E0 Keys (extended keys)
	signal FlagExt1:			boolean								:=	false;				--	E1 Keys (extended keys - Prt_Scr and Pause_Brk)
	signal FlagNumLock:		boolean								:=	false;				--	77 Num Lock State
	signal FlagScrollLock:	boolean								:=	false;				--	7E	Scroll Lock State
	signal FlagCapsLock:		boolean								:=	false;				--	58 Caps Lock State
	signal Level2_rdy:		boolean								:=	false;				--	Send Data and Flags to the next level
	signal Level2a_rdy:		boolean								:=	false;				--	Send Read Ack for Write Byte

	--	Write Byte
	type WriteByteState_t	is (																--	Write Byte FSM State Type
										Idle,															--		Idle State
										WriteStart,													--		Start (pull PS2_Clk down)
										WaitStart,													--		Wait
										SendBits,													--		Send Data Bits
										WriteParity,												--		Send Parity
										WriteStop,													--		Send Stop Bit
										AckBit,														--		Wait for Ack Bit from Keyboard
										Final,														--		Wait for Idle on PS2_Clk and PS2_Data
										WaitAckByte													--		Wait for Ack Byte from Keyboard
									);
	signal WriteByteState:	WriteByteState_t					:=	Idle;					--	Write Byte FSM State
	signal WriteCode:			std_logic_vector(7 downto 0)	:=	(others =>'0');	--	What to Write
	signal WriteByte:			boolean								:=	false;				--	Init Write Byte Sequence
	signal SendingData:		boolean								:=	false;				--	Block Receiver when Sending Data
	signal WriteByte_ack:	boolean								:=	false;				--	Ack Writen Byte

	signal WriteReg:			std_logic_vector(7 downto 0)	:=	(others =>'0');	--	Transmit Shift Register
	signal ParityBit:			std_logic							:=	'0';					--	Parity Bit
	signal StartTime:			unsigned(31 downto 0)			:=	(others =>'0');	--	Timer for Start of Write (PS2_Clk low)
	signal WriteBits:			unsigned(3 downto 0)				:=	(others =>'0');	--	Bit Counter

	--	Update LED Indicators
	type UpdState_t			is	(																--	Update Led Indicators FSM State Type
										Idle,															--		Inactive State
										SendReset,													--		For Debug - Reset Keyboard
										SendLed1,													--		Send FD
										SendLed2,													--		Send New LED State
										SendFinal													--		
									);
	signal UpdState:			UpdState_t							:=	Idle;					--	Update Led Indicators FSM State
	signal UpdateLed:			boolean								:=	false;				--	Send new LED State to the Keyboard
	signal UpdateLed_ack:	boolean								:=	false;				--	Ack (1 clock pulse)

begin

	--	Sync External Signals with Clock
	process (Clk)
	begin
		if rising_edge(Clk) then
			--	Sync
			PS2_Clk_d	<=	PS2_Clk;
			PS2_Data_d	<=	PS2_Data;	
			--	For Falling Edge Detection
			PS2_Clk_dd	<=	PS2_Clk_d;
		end if;
	end process;

	--	Level 0 - Read Byte from PS/2 Interface
	process (Clk)
	begin
		if rising_edge(Clk) then
			ReadByte_rdy <= false;
			if PS2_Clk_dd='1' and PS2_Clk_d='0' and not SendingData then
				-- Falling Edge of PS2_Clk
				case ReadByteState is
					when Idle =>
						--	Test Start Bit
						if PS2_Data='0' then
							ReadByteState <= D0;
						end if;
					when D0 =>
						--	Bit 0
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= D1;
					when D1 =>
						--	Bit 1
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= D2;
					when D2 =>
						--	Bit 2
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= D3;
					when D3 =>
						--	Bit 3
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= D4;
					when D4 =>
						--	Bit 4
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= D5;
					when D5 =>
						--	Bit 5
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= D6;
					when D6 =>
						--	Bit 6
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= D7;
					when D7 =>
						--	Bit 7
						ReadByte <= PS2_Data & ReadByte(7 downto 1);
						ReadByteState <= Parity;
					when Parity =>
						-- Check Parity Here...
						ReadByteState <= Final;
					when Final =>
						--	End of Byte
						ReadByteState <= Idle;
						ReadByte_rdy <= true;		--	Scan Code Ready (8 bit word)
				end case;
			end if;
		end if;
	end process;

	-- Level 1 - Process Raw Scan Codes and ESC Atributes E0, E1 and F0
	process (Clk)
	begin
		if rising_edge(Clk) then
			if Level1_rdy then
				--	Clean State when Sent Data from Level1 processing
				Level1_rdy <= false;
				FlagE0 <= false;
				FlagE1 <= false;
				FlagF0 <= false;				
			else
				if ReadByte_rdy then
					--	Process Scan Code Byte from Level 0
					if ReadByte=X"E0" then
						--	Ext Code
						FlagE0 <= true;
					elsif ReadByte=X"E1" then
						--	Special Ext Code
						FlagE1 <= true;
					elsif ReadByte=X"F0" then
						--	Break Flag
						FlagF0 <= true;
					else
						--	Scan Code
						Level1_rdy <= true;
					end if;
				end if;
			end if;
		end if;
	end process;

	--	Level 2 - Process Shift (left and right shift, alt and ctrl) and Num Lock (numeric virtual shift)
	process (Clk)
	begin
		if rising_edge(Clk) then
			--	Clear Comands to Higher Level
			UpdateLed	<=	false;
			Level2a_rdy	<=	false;
			Level2_rdy	<=	false;
			--	Process Read Byte
			if Level1_rdy then
				if ReadByte=X"11" then
					-- Alt Key
					if FlagE0 then
						FlagAltR <= not FlagF0;
					else
						FlagAltL	<=	not FlagF0;
					end if;
				elsif ReadByte=X"12" then
					--	Left Shift
					if FlagE0 then
						FlagShiftNum <= not FlagF0;
					else
						FlagShiftL	<=	not FlagF0;
					end if;
				elsif ReadByte=X"59" then
					--	Right Shift
					FlagShiftR <= not FlagF0;
				elsif ReadByte=X"14" then
					--	Ctrl
					if FlagE0 then
						FlagCtrlR <= not FlagF0;
					else
						FlagCtrlL <= not FlagF0;
					end if;
				elsif ReadByte=X"77" and not FlagCtrlL and not FlagCtrlR and not FlagAltL and not FlagAltR then
					--	Num Lock On/Off
					if not FlagF0 then
						FlagNumLock <= not FlagNumLock;
						UpdateLed <= true;		--	Set UpdateLed Request
					end if;
				elsif ReadByte=X"58" then
					--	Caps Lock
					if not FlagF0 then
						FlagCapsLock <= not FlagCapsLock;
						UpdateLed <= true;		--	Set UpdateLed Request
					end if;
				elsif ReadByte=X"7E" then
					if not FlagF0 then
						FlagScrollLock <= not FlagScrollLock;
						UpdateLed <= true;		--	Set UpdateLed Request
					end if;
				else
					--	Send Data to the next Level
					FlagExt0		<=	FlagE0;
					FlagExt1		<=	FlagE1;
					FlagBreak	<= FlagF0;
					if WriteByteState=WaitAckByte then
						--	Send Data (Ack Byte) to WriteByte
						Level2a_rdy	<= true;
					else
						--	Send Scan Code to the next Level
						Level2_rdy	<=	true;
					end if;
				end if;
			end if;
		end if;
	end process;

	--	Send Data
	PS2_Valid <= Level2_rdy;

	--	Scan COde
	PS2_Code(7 downto 0) <= ReadByte;

	--	Attribs
	PS2_Attribs(0)	<=	'1'	when	FlagShiftL or FlagShiftR	else	'0';	--	Bit 0 - Shift
	PS2_Attribs(1)	<=	'1'	when	FlagCtrlL or FlagCtrlR		else	'0';	--	Bit 1	- Ctrl
	PS2_Attribs(2)	<=	'1'	when	FlagAltL or FlagAltR			else	'0';	--	Bit 2 - Alt
	PS2_Attribs(3)	<=	'1'	when	FlagExt0							else	'0';	--	Bit 3 - Ext Code E0
	PS2_Attribs(4)	<=	'1'	when	FlagExt1							else	'0';	--	Bit 4 - Ext Code E1
	PS2_Attribs(5)	<=	'1'	when	FlagShiftNum					else	'0';	--	Bit 5 - Shift Num (Arrows,...) - only if NumLock Led is Off
	PS2_Attribs(6)	<=	'0';
	PS2_Attribs(7)	<=	'1'	when FlagBreak							else	'0';	--	Bit 7 - Break (release) Key

	--	Immediate State of Shift Like Keys
	PS2_Shifts(0)	<=	'1'	when	FlagShiftL						else	'0';	--	Bit 0 - Shift Left
	PS2_Shifts(1)	<=	'1'	when	FlagShiftR						else	'0';	--	Bit 1 - Shift Right
	PS2_Shifts(2)	<=	'1'	when	FlagCtrlL						else	'0';	--	Bit 2 - Ctrl Left
	PS2_Shifts(3)	<=	'1'	when	FlagCtrlR						else	'0';	--	Bit 3 - Ctrl Right
	PS2_Shifts(4)	<=	'1'	when	FlagAltL							else	'0';	--	Bit 4 - Alt Left
	PS2_Shifts(5)	<=	'1'	when	FlagAltR							else	'0';	--	Bit 5 - Alt Right
	PS2_Shifts(6)	<=	'1'	when	FlagNumLock						else	'0';	--	Bit 7 - Num Lock
	PS2_Shifts(7)	<=	'1'	when	FlagCapsLock					else	'0';	--	Bit 8 - Caps Lock
	PS2_Shifts(8)	<=	'1'	when	FlagScrollLock					else	'0';	--	Bit 9 - Scroll Lock
	PS2_Shifts(9)	<=	'1'	when	FlagShiftNum					else	'0';	--	Bit 6 - Shift Num (virtual state) -	Not to be used

	--	Write Byte to PS/2 Interface
	--	Init By:					WriteByte
	--	Finish Indication:	WriteByte_ack
	process (Clk)
	begin
		if rising_edge(Clk) then
			WriteByte_ack	<=	false;
			case WriteByteState is
				when Idle =>
					PS2_Clk		<= 'Z';
					PS2_Data		<= 'Z';
					if WriteByte then
						WriteByteState	<=	WriteStart;
						WriteReg <= WriteCode;
					end if;
				when WriteStart =>
					if PS2_Data_d='1' and PS2_Clk_d='1' then
						--	PS2 Interface in Idle State
						PS2_Clk			<= '0';															--	Start of Write (PS2_Clk=L)
						StartTime		<=	to_unsigned(CLKFREQ/16000, StartTime'length);	--	cca 60us Start
						WriteBits		<= to_unsigned(7, WriteBits'length);					--	8 bits
						WriteByteState	<=	WaitStart;
						SendingData		<=	true;
					end if;
				when WaitStart =>
					if StartTime>0 then
						StartTime <= StartTime - 1;
					else
						PS2_Data			<= '0';													--	Start Bit
						PS2_Clk			<= 'Z';													--	Release Clk
						ParityBit		<=	'1';													--	Init Parity Generator (code 1111_1111 has parity 1)
						WriteByteState <= SendBits;
					end if;
				when SendBits =>
					if PS2_Clk_dd='1' and PS2_Clk_d='0' then
						PS2_Data		<= WriteReg(0);
						ParityBit	<= ParityBit xor WriteReg(0);
						WriteReg		<= '1' & WriteReg(7 downto 1);
						if WriteBits>0 then
							WriteBits <= WriteBits - 1;
						else
							WriteByteState <= WriteParity;
						end if;
					end if;
				when WriteParity =>
					if PS2_Clk_dd='1' and PS2_Clk_d='0' then
						PS2_Data			<= ParityBit;
						WriteByteState	<= WriteStop;
					end if;
				when WriteStop =>
					if PS2_Clk_dd='1' and PS2_Clk_d='0' then
						PS2_Data <= '1';
						WriteByteState <= AckBit;
					end if;
				when AckBit =>
					PS2_Data <= 'Z';
					if PS2_Clk_dd='1' and PS2_Clk_d='0' then
						WriteByteState <= Final;
					end if;
				when Final =>
					if PS2_Clk_d='1' then
						WriteByteState <= WaitAckByte;
						SendingData		<=	false;
					end if;
				when WaitAckByte =>
					if Level2a_rdy then
						WriteByteState <= Idle;
						WriteByte_ack	<=	true;
					end if;
			end case;
		end if;
	end process;

	--	Level 3 - Update LED Indicators
	--	Init By:					UpdateLed or Level2_rdy(with scan code and attrib)
	--	Finish Indication:	UpdateLed_ack (not used)
	process (Clk)
	begin
		if rising_edge(Clk) then
			UpdateLed_ack	<=	false;		--	1 Clock Pulse
			WriteByte		<=	false;
			case UpdState is
				when Idle =>
					--	Register the request
					if Level2_rdy and ReadByte=X"07" and not FlagBreak then
						WriteCode <= X"FF";
						WriteByte <= true;
					elsif UpdateLed then
						UpdateLed_ack <= true;
						UpdState <= SendLed1;
					end if;
				when SendReset =>
					if WriteByteState=Idle then
						--	Send Keyborad Reset
						WriteCode <= X"FF";
						WriteByte <= true;
						UpdState <= SendFinal;
					end if;
				when SendLed1 =>
					if WriteByteState=Idle then
						--	Send LED Command
						WriteCode <= X"ED";
						WriteByte <= true;
						UpdState <= SendLed2;
					end if;
				when SendLed2 =>
					if WriteByte_ack then
						--	Send LED State
						WriteCode <= "00000" & to_std_logic(FlagCapsLock)
													& to_std_logic(FlagNumLock)
													& to_std_logic(FlagScrollLock);
						WriteByte <= true;
						UpdState <= SendFinal;
					end if;
				when SendFinal =>
					if WriteByte_ack then				---WriteByteState=Idle then
						--	Last Data has been Send
						UpdState <= Idle;
					end if;
			end case;
		end if;
	end process;

end architecture PS2_a;
