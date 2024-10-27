#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from taro device
$(call inherit-product, device/qualcomm/taro/device.mk)

PRODUCT_DEVICE := taro
PRODUCT_NAME := omni_taro
PRODUCT_BRAND := qti
PRODUCT_MODEL := Taro for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX679J-UN-user 12 SKQ1.211113.001 eng.nubia.20240511.021243 release-keys"

BUILD_FINGERPRINT := nubia/NX679J-UN/NX679J-UN:12/SKQ1.211113.001/eng.nubia.20240511.021243:user/release-keys
