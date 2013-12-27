#
# Copyright (C) 2010 The Android Open Source Project
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

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

DEVICE_PACKAGE_OVERLAYS += device/bq/maxwell2plus/overlay


# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Config files
PRODUCT_COPY_FILES += \
    device/bq/maxwell2plus/config/serial_number.sh:system/bin/serial_number.sh \
    device/bq/maxwell2plus/config/audio_policy.conf:system/etc/audio_policy.conf \
    device/bq/maxwell2plus/config/media_profiles.xml:system/etc/media_profiles.xml \
    device/bq/maxwell2plus/config/media_codecs.xml:system/etc/media_codecs.xml \
    device/bq/maxwell2plus/config/gps.conf:system/etc/gps.conf \
    device/bq/maxwell2plus/config/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    device/bq/maxwell2plus/config/egl.cfg:system/lib/egl/egl.cfg \
    device/bq/maxwell2plus/config/rk29-keypad.kl:/system/usr/keylayout/rk29-keypad.kl \
    device/bq/maxwell2plus/config/vold.fstab:system/etc/vold.fstab

# Ramdisk files
PRODUCT_COPY_FILES += \
    device/bq/maxwell2plus/rootdir/fstab.rk30board:root/fstab.rk30board \
    device/bq/maxwell2plus/rootdir/init.rk30board.rc:root/init.rk30board.rc \
    device/bq/maxwell2plus/rootdir/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
    device/bq/maxwell2plus/rootdir/ueventd.rk30board.rc:root/ueventd.rk30board.rc

# Ramdisk blobs
PRODUCT_COPY_FILES += \
    device/bq/maxwell2plus/rootdir/sbin/e2fsck:root/sbin/e2fsck \
    device/bq/maxwell2plus/rootdir/sbin/mkdosfs:root/sbin/mkdosfs \
    device/bq/maxwell2plus/rootdir/sbin/mke2fs:root/sbin/mke2fs \
    device/bq/maxwell2plus/rootdir/sbin/resize2fs:root/sbin/resize2fs \
    device/bq/maxwell2plus/rootdir/init:root/init \
    device/bq/maxwell2plus/rootdir/misc.img:root/misc.img \
    device/bq/maxwell2plus/rootdir/rk30xxnand_ko.ko.3.0.8+:root/rk30xxnand_ko.ko.3.0.8+ \
    device/bq/maxwell2plus/rootdir/rk30xxnand_ko.ko.3.0.36+:root/rk30xxnand_ko.ko.3.0.36+ \
    device/bq/maxwell2plus/rootdir/charger:root/charger \
    $(call find-copy-subdir-files,*,device/bq/maxwell2plus/rootdir/images,root/res/images/charger)

# HAL
PRODUCT_PACKAGES += \
    lights.rk30board \
    power.rk30xx \
    sensors.rk30board

# Audio
PRODUCT_PACKAGES += \
    audio.primary.rk30board \
    audio_policy.rk30board \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default

# Other
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    librs_jni \
    libnetcmdiface \
    com.android.future.usb.accessory

# Default config
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=30 \
    persist.sys.usb.config=mtp \
    persist.sys.timezone=Europe/Amsterdam \
    ro.product.locale.language=es \
    ro.product.locale.region=ES

# Dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
