For Raspberry Pi you have to use Raspberry version of the library.
The difference is in how the fpu is used (calling conventions).
The Linux for Raspberry uses vfp (hardware Vector Floating Point
coprocessor) but original FTDI library does not have the fpv switched on.
