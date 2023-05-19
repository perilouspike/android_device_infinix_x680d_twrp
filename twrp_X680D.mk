#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/infinix/X680D

# Release name
PRODUCT_RELEASE_NAME := X680D

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X6815D device
$(call inherit-product, device/infinix/X680D/device.mk)

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X680D
PRODUCT_NAME := twrp_X680D
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := X680D
PRODUCT_MANUFACTURER := infinix

# HACK: Set vendor patch level
#PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
    #PRIVATE_BUILD_DESC="full_x680d_h6116-user 10 QP1A.190711.020 199789 release-keys"

#PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1

#BUILD_FINGERPRINT := Infinix/X680D-IN/Infinix-X680D:10/QP1A.190711.020/J-AS-211130V404:user/release-keys