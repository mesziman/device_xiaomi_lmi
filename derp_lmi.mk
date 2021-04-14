#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common Derp stuff
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Derp specific properties
PRODUCT_PRODUCT_PROPERTIES += \
  ro.derp.maintainer=Schnedi \
  ro.derp.cpu=sm8250 \
  ro.derp.rom=Derp

PRODUCT_NAME := derp_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 11 RKQ1.200826.002 V12.2.6.0.RJKMIXM release-keys"

BUILD_FINGERPRINT := POCO/lmi_global/lmi:11/RKQ1.200826.002/V12.2.6.0.RJKMIXM:user/release-keys
