#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
# Path directory
DEVICE_PATH := device/google/bluejay
# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_bluejay

BUILD_BROKEN_DUP_RULES := true

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true


