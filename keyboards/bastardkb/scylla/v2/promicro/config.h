/*
 * Copyright 2022 Charly Delay <charly@codesink.dev> (@0xcharly)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

/* Key matrix configuration. */
#define MATRIX_ROW_PINS \
    { F4, F7, C6, D4, B5 }
#define MATRIX_COL_PINS \
    { F6, B3, B6, B2, E6, B4 } // F5 => B3, D7 => B2



/* Handedness. */

/* RGB settings. */
#define RGB_DI_PIN D3
#define RGG_MATRIX_LED_COUNT 58
#define ENABLE_RGB_MATRIX_CYCLE_ALL
#define ENABLE_RGB_MATRIX_PIXEL_RAIN
//#define ENABLE_RGB_MATRIX_HUE_PENDULUM
#define ENABLE_RGB_MATRIX_CYCLE_PINWHEEL
#define ENABLE_RGB_MATRIX_TYPING_HEATMAP
// #define ENABLE_RGB_MATRIX_DIGITAL_RAIN
#define ENABLE_RGB_MATRIX_SOLID_REACTIVE_SIMPLE
// #define ENABLE_RGB_MATRIX_SPLASH

#define RGB_MATRIX_FRAMEBUFFER_EFFECTS



// #define MASTER_RIGHT
// #define MASTER_LEFT


// #define SPLIT_HAND_PIN B1
// #define SPLIT_HAND_PIN_LOW_IS_LEFT

// #define POINTING_DEVICE_SCLK_PIN F0

