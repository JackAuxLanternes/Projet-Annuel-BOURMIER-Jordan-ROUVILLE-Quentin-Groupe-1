#include <SDL.h>
#include <time.h>

#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "qrcodegen.h"

#include "savepng.h" // includes <png.h>, you must link with -lpng

static void doSegmentDemo(void);
static void printQr(const uint8_t qrcode[]);

// Creates QR Codes with manually specified segments for better compactness.
static void doSegmentDemo(void) {
    {  // Illustration "silver"
        const char *silver0 = "THE SQUARE ROOT OF 2 IS 1.";
        const char *silver1 = "41421356237309504880168872420969807856967187537694807317667973799";
        uint8_t qrcode[qrcodegen_BUFFER_LEN_MAX];
        uint8_t tempBuffer[qrcodegen_BUFFER_LEN_MAX];
        bool ok;
        {
            char *concat = calloc(strlen(silver0) + strlen(silver1) + 1, sizeof(char));
            strcat(concat, silver0);
            strcat(concat, silver1);
            ok = qrcodegen_encodeText(concat, tempBuffer, qrcode, qrcodegen_Ecc_LOW,
                                      qrcodegen_VERSION_MIN, qrcodegen_VERSION_MAX, qrcodegen_Mask_AUTO, true);
            if (ok)
                printQr(qrcode);
            free(concat);
        }
    }
}



static void printQr(const uint8_t qrcode[]) {
    int size = qrcodegen_getSize(qrcode);
    int border = 4;
    for (int y = -border; y < size + border; y++) {
        for (int x = -border; x < size + border; x++) {
            if (qrcodegen_getModule(qrcode, x, y)) {
                fputs(("##"), stdout);              //TODO: C'est cette ligne qui sort le QR Code
            }
            else{
                fputs((" "), stdout);
            }
        }
        fputs("\n", stdout);
    }
    fputs("\n", stdout);
}

int main( int argc, char* args[] )
{
    SDL_Surface *screen;
    SDL_Surface *shot;
    Uint32 color;

    if (SDL_Init(SDL_INIT_VIDEO) < 0 || (screen = SDL_SetVideoMode(640, 480, 0, 0)) == 0)
    {
        fprintf(stderr, "Video initialization failed: %s\n", SDL_GetError());
        exit(-1);
    }

    color = SDL_MapRGB(screen->format,0,0,0);
    SDL_FillRect(screen, NULL, color);

    //TODO: QR Code

    printf("Ja");

    doSegmentDemo();

    //TODO: PNG

    /* Update screen, just so we can see it */
    SDL_Delay(100);
    SDL_Flip(screen);
    SDL_Delay(1000);

    /* Save screen as PNG */
    shot = SDL_PNGFormatAlpha(screen);	/* SDL_PNGFormatAlpha is optional, but might be necessary for SCREEN surfaces */
    SDL_SavePNG(shot, "qrcode.png");
    SDL_FreeSurface(shot);

    SDL_Quit();
    return 0;
}