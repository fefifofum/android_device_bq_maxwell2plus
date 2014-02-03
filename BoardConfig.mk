#
# Copyright (C) 2011 The Android Open Source Project
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

# Inherit from the proprietary version
-include vendor/bq/maxwell2plus/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := rk30xx
TARGET_BOARD_HARDWARE := rk30board
TARGET_BOOTLOADER_BOARD_NAME := bq_Maxwell2Plus

TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

BOARD_EGL_CFG := device/bq/maxwell2plus/prebuilt/egl.cfg
USE_OPENGL_RENDERER := true

ENABLE_WEBGL := true

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_LEGACY_NL80211_STA_EVENTS := true
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/wlan/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/etc/firmware/fw_RK903b2.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/etc/firmware/fw_RK903b2_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/etc/firmware/fw_RK903b2_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/rkwifi.ko"
WIFI_DRIVER_MODULE_NAME     := "wlan"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/bq/maxwell2plus/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/bq/maxwell2plus/bluetooth/vnd_maxwell2plus.txt

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 576716800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14906032128
BOARD_FLASH_BLOCK_SIZE := 16384

# Kernel
TARGET_KERNEL_SOURCE := kernel/bq/maxwell2plus
TARGET_KERNEL_CONFIG := cyanogenmod_maxwell2plus_defconfig
BOARD_USES_UNCOMPRESSED_BOOT := true
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_BASE := 0x60408000
BOARD_KERNEL_PAGESIZE := 16384

BOARD_CUSTOM_BOOTIMG_MK := device/bq/maxwell2plus/mkbootimg.mk
TARGET_OTA_ASSERT_DEVICE := maxwell2plus,bq_Maxwell2Plus

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/bq/maxwell2plus/rootdir/fstab.rk30board
TARGET_RECOVERY_INITRC := device/bq/maxwell2plus/rootdir/recovery.rc
TARGET_RECOVERY_PRE_COMMAND := "echo -n boot-recovery | busybox dd of=/dev/block/mtdblock0 count=1 conv=sync; sync"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file
