#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from starqltechn device
$(call inherit-product, device/samsung/starqltechn/device.mk)

PRODUCT_DEVICE := starqltechn
PRODUCT_NAME := lineage_starqltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9600
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := samsung/starqltezh/starqltechn:10/QP1A.190711.020/G9600ZHU9FVF2:user/release-keys
