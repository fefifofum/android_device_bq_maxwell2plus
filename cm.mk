# Inherit some common CyanogenMod stuff
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/bq/maxwell2plus/maxwell2plus.mk)

# Device identifier
PRODUCT_DEVICE := maxwell2plus
PRODUCT_NAME := cm_maxwell2plus

# Set build name
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bq_Maxwell2Plus
