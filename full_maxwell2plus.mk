#
# Copyright (C) 2014 The Android Open Source Project
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
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device specific configurations
$(call inherit-product, device/bq/maxwell2plus/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_maxwell2plus
PRODUCT_DEVICE := maxwell2plus
PRODUCT_BRAND := bq
PRODUCT_MODEL := bq Maxwell 2 Plus
PRODUCT_MANUFACTURER := bq

# Inherit from the non-open-source side
$(call inherit-product, vendor/bq/maxwell2plus/maxwell2plus-vendor.mk)
