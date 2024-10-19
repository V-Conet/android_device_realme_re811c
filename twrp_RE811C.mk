#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/realme/RE811C

# Inherit from device.mk configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

ALLOW_MISSING_DEPENDENCIES := true

# Release name
PRODUCT_RELEASE_NAME := RE811C
PRODUCT_DEVICE := RE811C
PRODUCT_NAME := twrp_RE811C
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3142
PRODUCT_MANUFACTURER := realme
