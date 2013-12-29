# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CyanogenMod stuff
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/bq/maxwell2plus/full_maxwell2plus.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maxwell2plus
PRODUCT_NAME := cm_maxwell2plus
PRODUCT_BRAND := bq
PRODUCT_MODEL := bq Maxwell 2 Plus
PRODUCT_MANUFACTURER := Rockchip

# Set product name
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bq_Maxwell2Plus
