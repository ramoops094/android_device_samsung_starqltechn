/*
 * SPDX-FileCopyrightText: 2016 The CyanogenMod Project
 * SPDX-FileCopyrightText: 2017-2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

#define PANEL_BRIGHTNESS_NODE "/sys/class/backlight/panel0-backlight/brightness"
#define PANEL_MAX_BRIGHTNESS_NODE "/sys/class/backlight/panel0-backlight/max_brightness"

#define LED_BLINK_NODE "/sys/class/sec/led/led_blink"

#define LED_ADJUSTMENT_R 1.0
#define LED_ADJUSTMENT_G 1.0
#define LED_ADJUSTMENT_B 1.0

#define LED_BRIGHTNESS_BATTERY 255
#define LED_BRIGHTNESS_NOTIFICATION 255
#define LED_BRIGHTNESS_ATTENTION 255
