# Inherit some common CyanogenMod stuff
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/bq/maxwell2plus/maxwell2plus.mk)

# Device identifier
PRODUCT_DEVICE := maxwell2plus
PRODUCT_NAME := cm_maxwell2plus

# Set build fingerprint, ID, product name, etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bq_Maxwell2Plus BUILD_FINGERPRINT=bq/bq_Maxwell2Plus/bq_rk:4.1.1/1.0.1_20130806-09:33/33:user/release-keys PRIVATE_BUILD_DESC="bq_Maxwell2Plus-user 4.1.1 1.0.1_20130806-09:33 33 release-keys" BUILD_NUMBER=33
