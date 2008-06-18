/*    mija 2008
      defines for module RFM01 - RX 868MHz
*/

#define CMD_SETTING		0x8000		// b1, b0, eb, et, ex, x3..x0, i2..i0, dc
#define CMD_FREQUENCY	0xA000		// f11..f0  860+F*0.005 MHz 36..3903
#define CMD_RATE		0xC800		// cs, r6..r0 BR=10M/29/(R+1)/1+cs*7)
#define CMD_RX			0xC000		// d1, d0, g1, g0, r2..r0, en
#define CMD_FILTER		0xC420		// al, ml, s1, s0, f2..f0
#define CMD_FIFO		0xCE00		// f3..f0, s1, s0, ff, fe
#define CMD_AFC			0xC600		// a1, a0, rl1, rl0, st, fi, oe, en
#define CMD_WAKE_UP		0xE000		// r4..r0, m7..m0 T=M*2^R [ms]
#define CMD_DUTY		0xCC00		// d6..d0 D.C.= (D*2+1)/M*100%
#define CMD_BATTERY		0xC200		// d2..d0, t4..t0
#define CMD_STATUS		0x0000		// for read status

// CMD_SETTING
#define BAND_315		0x0000
#define BAND_433		0x800
#define BAND_868		0x1000
#define BADN_915		0x1800 
#define SETTING_EB		0x400	// enable low battery detect
#define SETTING_ET		0x200	// enable wake-up timer
#define SETTING_EX		0x100	// enable crystal oscilator
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
#define BANDWIDTH_400	0x02	// baseband bandwidth[kHz]
#define BANDWIDTH_340	0x04
#define BANDWIDTH_270	0x06
#define BANDWIDTH_200	0x08
#define BANDWIDTH_134	0x0A
#define BANDWIDTH_67	0x0C
#define SETTING_DC		0x01	// disable siglanl of CLK pin

// CMD_FREQUENCY
#define FREQUENCY_867	0x578
#define FREQUENCY_868	0x640
#define FREQUENCY_869	0x708

// CMD_RATE
#define RATE_1200		0x123
#define RATE_2400		0x8F
#define RATE_4800		0x47
#define RATE_CS_4800	0x108
#define RATE_9600		0x23
#define RATE_19200		0x11
#define RATE_38400		0x8
#define RATE_57600		0x5
#define RATE_115200		0x2
	
// CMD_RX
#define VDI_RSSI		0x00	// VDI response time
#define VDI_DQD			0x40		
#define VDI_CLOCK		0x80		
#define VDI_ALWAYS_ON	0xC0		
#define LNA_GAIN_0		0x00	// LNA_GAIN
#define LNA_GAIN_6		0x10	// -6dBm
#define LNA_GAIN_14		0x20	// -14dBm
#define LNA_GAIN_20		0x30	// -20dBm
#define	DRSSI_103		0x00	// RSSI= DRSSI + LNA_GAIN -103dBm
#define	DRSSI_97		0x02	// -97dBm
#define	DRSSI_91		0x04	// -91dBm
#define	DRSSI_85		0x06	// -85dBm
#define	DRSSI_79		0x08	// -79dBm
#define	DRSSI_73		0x0A	// -73dBm
#define	DRSSI_67		0x0C	// -67dBm
#define	DRSSI_61		0x0E	// -61dBm
#define RX_EN 			0x01	// enablel receiver	

// CMD_FILTER
#define FILTER_AL		0x80	// enable clock recovery atuo-lock
#define FILTER_ML		0x40	// enable clock recovery fast mode
#define FILTER_S0		0x08	// enable digital filter
#define DQD_7			0x7
#define DQD_6			0x6
#define DQD_5			0x5
#define DQD_4			0x4
#define DQD_3			0x3
#define DQD_2			0x2
#define DQD_1			0x1
#define DQD_0			0x0

// CMD_FIFO
#define FIFO_16			0x00	// FIFO level
#define FIFO_15			0xF0
#define FIFO_14			0xE0
#define FIFO_13			0xD0
#define FIFO_12			0xC0
#define FIFO_11			0xB0
#define FIFO_10			0xA0
#define FIFO_9			0x90
#define FIFO_8			0x80
#define FIFO_7			0x70
#define FIFO_6			0x60
#define FIFO_5			0x50
#define FIFO_4			0x40
#define FIFO_3			0x30
#define FIFO_2			0x20
#define FIFO_1			0x10
#define FIFO_VDI		0x00	// FIFO start VDI 
#define	FIFO_SYNC_WORD	0x04	// 
#define FIFO_VDI_WORD	0x08	// 
#define FIFO_ALWAYS		0x0C	// 
#define FIFO_FF			0x02	// enable FIFO fill
#define FIFO_FE			0x01	// enable FIFO function

// CMD_AFC
#define AFC_MCU			0x00	// AFC auto_mode by MCU
#define AFC_POWER_ON	0x40	// AFC at poweron			
#define AFC_OFFSET		0x80	// AFC keep offset when VDI hi
#define AFC_VDI			0xC0	// AFC keeps independently from VDI
#define AFC_NORESTR		0x00	// range limit no restriction
#define AFC_RANG_16		0x10	// range limit +15/-16
#define AFC_RANG_8		0x20	// range limit +7/-8
#define AFC_RANG_4		0x30	// range limit +3/-4
#define AFC_ST			0x08	// store offset into outpur register
#define AFC_FI			0x04	// enable AFC hi accuracy mode
#define AFC_OE			0x02	// enable AFC output register
#define AFC_EN			0x01	// enable AFC function


