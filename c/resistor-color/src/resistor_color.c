#include "resistor_color.h"

int colors_arr[] = {BLACK, BROWN, RED,    ORANGE, YELLOW,
                    GREEN, BLUE,  VIOLET, GREY,   WHITE};

int color_code(resistor_band_t color) { return color; }
int *colors(void) { return colors_arr; }
