#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := lineage_bluejay

# Signature Build 
#include vendor/lineage-priv/keys/keys.mk

#Rising OS Stuff
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_PREBUILT_GOOGLE_CAMERA := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 AP2A.240905.003.F1 12235381 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/AP2A.240905.003.F1/12235381:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
