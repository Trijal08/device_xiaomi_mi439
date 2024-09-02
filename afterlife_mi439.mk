# Copyright (C) 2022 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mi439 device configuration.
$(call inherit-product, device/xiaomi/mi439/device.mk)

# Inherit from common syberia configuration
$(call inherit-product, vendor/afterlife/common.mk)

# Inherit some common afterlife stuff.
AFTERLIFE_VERSION_APPEND_TIME_OF_DAY := true
AFTERLIFE_MAINTAINER := FARHAN•AFK
BUILD_AOSP_CAMERA := false

PRODUCT_NAME := afterlife_mi439
PRODUCT_DEVICE := mi439
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI SDM439
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys"

# Blur
TARGET_SUPPORTS_BLUR := true

# Pixel Stuff
USE_PIXEL_CHARGING := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
