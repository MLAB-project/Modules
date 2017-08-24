/*    mija 2008
      defines for module RFM02 - TX 868MHz
*/

#define CMD_SETTING		0x8000		// b1, b0, d2..d0, x3..x0, ms, m2..m0
#define CMD_POWER		0xC000		// a1, a0, ex, es, ea, eb, et, dc 
#define CMD_POWER_OUT	0xB000		// p2..p0 -3*Pmax dBm
#define CMD_FREQUENCY	0xA000		// f11..f0  860+F*0.005 MHz 36..3903
#define CMD_RATE		0xC800		// r7..r0 BR=10M/29/(R+1)
#define CMD_WAKE_UP		0xE000		// r4..r0, m7..m0 T=M*2^R [ms]
#define CMD_SLEEP		0xC400		// s7..s0 S stop CLK 
#define CMD_BATTERY		0xC200		// dwc, ebs , t4..t0
#define CMD_STATUS		0xCC00		// for read status

// CMD_SETTING
#define BAND_315		0x0000
#define BAND_433		0x800
#define BAND_868		0x1000
#define BADN_915		0x1800 

#define C_8_5pF			0x00
#define C_9pF 			0x10
#define C_9_5pF 		0x20
#define C_10pF 			0x30
#define C_10_5pF		0x40
#define C_11pF 			0x50
#define C_11_5pF		0x60
#define C_12pF 			0x70
#define C_12_5pF		0x80
#define C_13pF 			0x90
#define C_13_5pF		0xA0
#define C_14pF 			0xB0
#define C_14_5pF		0xC0
#define C_15pF 			0xD0
#define C_15_5pF		0xE0
#define C_16pF 			0xF0
#define SETTING_MS		0x08	// modulation polarity
#define TX_DEV_30		0x00	// select frequency deviation
#define TX_DEV_60		0x01
#define TX_DEV_90		0x02
#define TX_DEV_120		0x03
#define TX_DEV_150		0x04
#define TX_DEV_180		0x05
#define TX_DEV_210		0x06

// CMD_POWER
#define POWER_A1		0x80	// enable crystal and syntheesizer by sleep
#define POWER_A0		0x40	// enable PA by sleep
#define POWER_EX		0x20	// enable transmitter
#define POWER_ES		0x10	// enable synthesizer
#define POWER_EA		0x08	// enable PA (power amplifier)
#define POWER_EB		0x04	// enable low battery detector
#define POWER_ET		0x02	// enable wake up timer
#define POWER_DC		0x01	// disable clock output of CLK pin

// CMD_POWER_OUT
#define POWER_OUT_0		0xB000	// -0dBm
#define POWER_OUT_3		0xB100	// -3dBm
#define POWER_OUT_6		0xB200	// -6dBm
#define POWER_OUT_9		0xB300	// -9dBm
#define POWER_OUT_12	0xB400	// -12dBm
#define POWER_OUT_15	0xB500	// -15dBm
#define POWER_OUT_18	0xB600	// -18dBm
#define POWER_OUT_21	0xB700	// -21dBm

// CMD_FREQUENCY
#define FREQUENCY_867	0x578
#define FREQUENCY_868	0x640
#define FREQUENCY_869	0x708

// CMD_RATE
#define RATE_2400		0x8F
#define RATE_4800		0x47
#define RATE_9600		0x23
#define RATE_19200		0x11
#define RATE_38400		0x8
#define RATE_57600		0x5
#define RATE_115200		0x2
	
// CMD_BATTERY
#define WAKE_UP_DWC		0x80	// disable wake-up timer periodical calibration
#define TX_EBS			0x20	// enable TX bit synchronization function
