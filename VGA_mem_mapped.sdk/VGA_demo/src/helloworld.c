#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "VGA.h"
#include "xil_mmu.h"
#include "xil_assert.h"

/* Definitions */
#define GPIO_DEVICE_ID  XPAR_AXI_GPIO_0_DEVICE_ID	/* GPIO device that LEDs are connected to */
#define LED 0x00									/* Initial LED value - XX0000XX */
#define LED_DELAY 100000000							/* Software delay length */
#define LED_CHANNEL 1								/* GPIO port for LEDs */
#define printf xil_printf							/* smaller, optimised printf */
#define VGA_CONFIG_BASE_ADDRESS 	0x43c00000      /* Control reg's for the VGA circuitry */
#define VGA_MEMORY_ATTRIBUTE 0x00010c06             /* Attribute applied to VGA frame buffer in DRAM. */

XGpio Gpio;											/* GPIO Device driver instance for LEDs */

vga vga_obj;
vga_frame vga_frame_obj;
vga_pixel vga_pixel_obj;

int w = 640, h = 240, x, y, temp;
float pr, pi;                       //real and imaginary part of the Mandelbrot pixel p
float newRe, newIm, oldRe, oldIm;   //real and imaginary parts of new and old z
int maxIterations = 255;            //after how much iterations the function should stop
int i;                              // number of iterations

int main()
{
	int Status;
	int led = LED; /* Hold current LED value. Initialise to LED definition */
//---------------  LEDS  --------------------------------------------------
	/* GPIO driver initialisation */
	Status = XGpio_Initialize(&Gpio, GPIO_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	/*Set the direction for the LEDs to output. */
	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0x00);
	/* Write output to the LEDs. */
	XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);
//--------------  END OF LEDS  ---------------------------------------------

    print("Hello World\n\r");

//---------------------------------------------------------------------------
//  The section below uses a local frame buffer (called vga_frame_obj) to hold all pixel
//      writes. It then flushes the image to the physical VGA frame
//      buffer (located in DRAM at address VGA_FRAME_ADDRESS, see VGA.h) when
//      vga_frame_draw() is called.
//  The code, as an example, draws the initial gray circle. It is safer and easier
//      to do graphics this way then the way the Mandelbrot section does it. The
//      Mandelbrot code access the VGA frame buffer DRAM memory directly, which is faster,
//      but more dangerous because accidental writes to non-VGA memory could be fatal.

    /* Configure VGA frame buffer memory to device. */
    Xil_SetTlbAttributes(VGA_FRAME_ADDRESS,VGA_MEMORY_ATTRIBUTE);

    /* Configure the vga object. */
    vga_setup(&vga_obj,(uint32_t*)VGA_CONFIG_BASE_ADDRESS,(vga_frame*)VGA_FRAME_ADDRESS);

    /* Clear the image frame, then draws a simple circle, then flushes the local buffer to VGA memory in DRAM for display. */
    vga_pixel_setup( &vga_pixel_obj, 0x4,0x4,0x4);
    vga_frame_clear( &vga_frame_obj);
    vga_frame_draw_circle_filled( &vga_frame_obj,VGA_SCREEN_WIDTH>>1,VGA_SCREEN_HEIGHT>>1,100,vga_pixel_obj);
    vga_frame_draw( &vga_frame_obj, &vga_obj);

//------------  Draw MANDELBROT image  -------------------------------------------------------------
    while(1) {
    led = (led + 1) & 0xff;  // Increment the Zedboard LEDS each time the Mandelbrot image is re-drawn. To see the speed.
    XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);

    //loop through every screen pixel (640 x 480)
    for(x = 0; x < w; x++)
        for(y = 0; y < h; y++)
        {
           //calculate the initial real and imaginary part of z, based on the pixel location and zoom and position values
           pr = -2.0 + ( x * 0.0046875 );
           pi = 1.125 - ( y * 0.0046875 );
           newRe = newIm = oldRe = oldIm = 0; //these should start at 0,0
           //start the iteration process
           for(i = 0; i < maxIterations; i++)
           {
             //remember value of previous iteration
             oldRe = newRe;
             oldIm = newIm;
             newRe = oldRe * oldRe - oldIm * oldIm + pr;
             newIm = 2 * oldRe * oldIm + pi;
             //if the point is outside the circle with radius 2: stop
             if((newRe * newRe + newIm * newIm) > 4) break;
           }
           vga_set_pixel( x, y, i);
           temp = 479 - y;             // For the full image, can take advantage of mirroring about the y=0 axis.
           vga_set_pixel( x, temp, i);
        }
    }
    return 0;
}
