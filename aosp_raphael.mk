#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Arcana stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_MANUFACTURER := Xiaomi

TARGET_INCLUDE_PIXEL_CHARGER := true

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

# maintainer flag
ARCANA_MAINTAINER := Zerx 
#
# # pixel build flag, if not define build type is vanilla
# WITH_GAPPS := true
#
# # only applicaple to pixel builds (WITH_GAPPS,) default is lawnchair for vanilla build
PREBUILT_LAWNCHAIR := true
#
# # disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true
#
# # prebuilt graphene camera flag, default is false
TARGET_BUILD_GRAPHENEOS_CAMERA := true
#
# # whether to copy apns-conf.xml to system
# # (for devices having issues with TelephonyProvider: FileNotFoundException)
# # default is false (product)
COPY_APN_SYSTEM := true
