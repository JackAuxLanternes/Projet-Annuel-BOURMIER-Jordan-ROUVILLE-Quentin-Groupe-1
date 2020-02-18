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
        const char *silver0 = "Bon bah c'est bien beau tout ça";
        const char *silver1 = " mais il nous reste encore plein de trucs à faire :c";
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

    SDL_Surface *screen;
    SDL_Surface *rectangle;
    SDL_Rect position;
    SDL_Surface *shot;
    Uint32 color;

    int size = qrcodegen_getSize(qrcode);
    int border = 4;

    if (SDL_Init(SDL_INIT_VIDEO) < 0 || (screen = SDL_SetVideoMode(size*10, size*10, 0, 0)) == 0)
    {
        fprintf(stderr, "Video initialization failed: %s\n", SDL_GetError());
        exit(-1);
    }

    color = SDL_MapRGB(screen->format,255,255,255);
    SDL_FillRect(screen, NULL, color);

    rectangle = SDL_CreateRGBSurface(SDL_HWSURFACE, 10, 10, 32, 0, 0, 0, 0);

    SDL_FillRect(screen, NULL, SDL_MapRGB(screen->format, 255, 255, 255));
    SDL_Flip(screen); // Mise à jour de l'écran

    for (int y = -border; y < size + border; y++) {
        for (int x = -border; x < size + border; x++) {
            if (qrcodegen_getModule(qrcode, x, y)) {
                position.x = x*10;
                position.y = y*10;
                // Remplissage de la surface avec du blanc
                SDL_FillRect(rectangle, NULL, SDL_MapRGB(screen->format, 0, 0, 0));
                SDL_BlitSurface(rectangle, NULL, screen, &position); // Collage de la surface sur l'écran

                SDL_Flip(screen); // Mise à jour de l'écran
            }
        }
    }

    /* Update screen, just so we can see it */
    SDL_Delay(100);
    SDL_Flip(screen);
    SDL_Delay(1000);

    /* Save screen as PNG */
    shot = SDL_PNGFormatAlpha(screen);	/* SDL_PNGFormatAlpha is optional, but might be necessary for SCREEN surfaces */
    SDL_SavePNG(shot, "qrcode.png");
    SDL_FreeSurface(shot);

    SDL_Quit();
}

int main( int argc, char* args[] )
{
    doSegmentDemo();

    return 0;
}