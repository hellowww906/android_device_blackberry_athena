#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/fox/config/common.mk)

# Inherit from recovery device
$(call inherit-product, device/blackberry/athena/device.mk)

PRODUCT_DEVICE := athena
PRODUCT_NAME := fox_athena
PRODUCT_BRAND := Blackberry
PRODUCT_MODEL := athena
PRODUCT_MANUFACTURER := Blackberry

PRODUCT_GMS_CLIENTID_BASE := android-generic

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bbf100dsglobal 8 OPM1.171019.026 ACQ160 release-keys"

BUILD_FINGERPRINT := blackberry/bbf100dsglobal/bbf100:8.1.0/OPM1.171019.026/ACQ160:user/release-keys

