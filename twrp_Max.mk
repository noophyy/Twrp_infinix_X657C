#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from spinel device
$(call inherit-product, device/infinix/Max/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Max
PRODUCT_NAME := twrp_Max
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Max
PRODUCT_MANUFACTURER := infinix
PRODUCT_RELEASE_NAME := Infinix Infinix Max

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_x657c_h6117-user 10 QP1A.190711.020 286677 release-keys"

BUILD_FINGERPRINT := Infinix/X657C-GL/Infinix-X657C:10/QP1A.190711.020/GH-GL-220426V311:user/release-keys

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock 
    android.hardware.fastboot@1.0-impl-mock.recovery
