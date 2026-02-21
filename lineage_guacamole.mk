#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion Things
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_VIPERFX := true

# Camera
AXION_CAMERA_REAR_INFO := 48,8,16
AXION_CAMERA_FRONT_INFO := 16

# Maintainer
AXION_MAINTAINER := Linx3141

# Processor
AXION_PROCESSOR := Snapdragon_855

# Charging
BYPASS_CHARGE_SUPPORTED ?= false

# GPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

# GPU
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/min_freq

# High Brightness Mode
HBM_SUPPORTED := false

# Flashlight strength
TORCH_STR_SUPPORTED := false

# Low ram device
TARGET_IS_LOW_RAM ?= false

# Refresh rate list
TARGET_SUPPORTED_REFRESH_RATES := 60,90

# Prebuilt LineageOS Apps
TARGET_INCLUDES_LOS_PREBUILTS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1911
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7Pro-user 12 SKQ1.211113.001 P.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7Pro/OnePlus7Pro:12/SKQ1.211113.001/P.202303230244:user/release-keys \
    DeviceName=OnePlus7Pro \
    DeviceProduct=OnePlus7Pro \
    SystemDevice=OnePlus7Pro \
    SystemName=OnePlus7Pro
