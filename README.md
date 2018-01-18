# VGA_mem_mapped

![screenshot](https://github.com/delhatch/VGA_mem_mapped/blob/master/Picture.jpg)

Author

Del Hatch

** Memory-mapped VGA display

The purpose of this project is to demostrate the functionality of a memory-mapped VGA display. The VGA core is by Andrew Powell (github reference here)

The VGA module instantiates a single line pixel buffer (640 pixels) in a local Block RAM. During each Horizontal blanking period, it sets up a transfer from DRAM into the local BRAM. This completes during the H blanking period.

The C code for the project uses the VGA in two different ways: one, through a local frame buffer that is memcopy'd to the VGA frame buffer DRAM, and second, through direct writes into the DRAM frame memory.

The Mandelbrot image calculation takes place on the ARM core, and is straightforward. The color shading algorithm is implimented as part of the vga_set_pixel() routine in VGA.c.

** VGA Generator

The Zedboard documentation does not provide a lot of support for using the VGA port. I hope this project will be useful to others wanting to use the VGA port on their Zedboard.

To control the VGA core, there are two configuration registers:
Reg #0) This is at the BASE ADDRESS. (Probably 0x43c0_0000.) Write the base address where the VGA image data in DRAM will reside. I used 0x0020_0000.
Reg #2) Set the lowest bit at this address (OFFSET 0x8) to 1'b1 to start the VGA controller running.

** Performance

The Mandelbrot image takes 2.218 seconds to create (with mirroring off), using the ARM processor on the XC7Z020 on the Zedboard. This compares very favorably to Altera NIOS version (on DE2-115) which takes ? seconds per frame.

However, this is much slower than the direct-logic implimentation I created at (github reference here). Using RTL computation engines, it achieves nearly 20 frames per second, a speedup of 40(?)

** Create Project

In Vivado 2017.4, build the system as shown below.

![screenshot](https://github.com/delhatch/VGA_mem_mapped/blob/master/system_diagram.jpg)

The VGA core is found (packed as IP) in the directory VGA_1_0_D. You will have to modify the Vivado IP directory path settings.

Allow the tool to assign default addresses. It should assign the LED GPIO port to 0x41200000 and the VGA controller to 0x43c00000.


** Improvements

This project is mainly a demonstration of how to create and use a DRAM-based, memory-mapped VGA display for the Zedboard.




