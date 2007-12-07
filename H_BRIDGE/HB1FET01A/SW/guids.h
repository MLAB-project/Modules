#ifndef __guids_h__
#define __guids_h__

#ifdef BOARD
// We're included for the target board. Define various structures
struct GUID {
	uint32_t Part1;
	uint16_t Part2;
	uint16_t Part3;
	uint8_t  Part4[8];
};
#endif

// These are the only valid values for UniqueID items
const uint8_t num0 = 0x00;
const uint8_t num1 = 0x01;
const uint8_t num2 = 0x03;
const uint8_t num3 = 0x07;
const uint8_t num4 = 0x0f;
const uint8_t num5 = 0x1f;
const uint8_t num6 = 0x3f;
const uint8_t num7 = 0x7f;
const uint8_t num8 = 0xff; // this value is never used in any valid uniqueID, however it IS used in the unassigned ID

// Unique IDs
#define UniqueIDUnassigned { \
	num0,num1,num2,num3,     \
	num4,num5,num6,num7,     \
	num8,num7,num6,num5,     \
	num4,num3,num2,num1,     \
	num0,num1,num2,num3,     \
	num4,num5,num6,num7,     \
	num8,num7,num6,num5,     \
	num4,num3,num2,num1,     \
	num0,num1,num2,num3,     \
	num4,num5,num6,num7,     \
	num8,num7,num6,num5,     \
	num4,num3,num2,num1      \
}

// Device Class GUIDs
// {00000000-0000-0000-0000-000000000000}
#define DevClassReserved { 0x00000000, 0x0000, 0x0000, { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 } }
// {D8745C7D-71A5-4977-A989-2E1EF853CCB8}
#define DevClassUnassigned { 0xd8745c7d, 0x71a5, 0x4977, { 0xa9, 0x89, 0x2e, 0x1e, 0xf8, 0x53, 0xcc, 0xb8 } }
// {15D37F46-A4F2-416d-8157-FAB7D1A66BE8}
#define DevClassServoController { 0x15d37f46, 0xa4f2, 0x416d, { 0x81, 0x57, 0xfa, 0xb7, 0xd1, 0xa6, 0x6b, 0xe8 } }
// {D3C8787E-DCE8-445b-B1C7-86C2BF85D144}
#define DevClassHBridge { 0xd3c8787e, 0xdce8, 0x445b, { 0xb1, 0xc7, 0x86, 0xc2, 0xbf, 0x85, 0xd1, 0x44 } }

// Device GUIDs
// {00000000-0000-0000-0000-000000000000}
#define DevReserved { 0x00000000, 0x0000, 0x0000, { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 } }
// {E59F78CE-6328-4316-B1DE-F0AA5E45F34F}
#define DevUnassigned { 0xe59f78ce, 0x6328, 0x4316, { 0xb1, 0xde, 0xf0, 0xaa, 0x5e, 0x45, 0xf3, 0x4f } }
// {E3470D73-9110-4d61-915E-916FF8A89BA6}
#define DevUmServo32 { 0xe3470d73, 0x9110, 0x4d61, { 0x91, 0x5e, 0x91, 0x6f, 0xf8, 0xa8, 0x9b, 0xa6 } }
// {CF232A58-497F-4bba-9E13-D9AB7938B418}
#define DevUmHBridge { 0xcf232a58, 0x497f, 0x4bba, { 0x9e, 0x13, 0xd9, 0xab, 0x79, 0x38, 0xb4, 0x18 } }
// {518FC22C-B5A1-40b3-8D7C-C75EC729F25C}
#define DevUmServoBrain { 0x518fc22c, 0xb5a1, 0x40b3, { 0x8d, 0x7c, 0xc7, 0x5e, 0xc7, 0x29, 0xf2, 0x5c } }

#endif // __guids_h__
