CyanogenMod device configuration for the bq Maxwell 2 Plus.

How to Build
---------------

Initialise from CyanogenMod:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Use the following local manifest:

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
      <remove-project name="CyanogenMod/android_hardware_invensense" />
      <project name="fefifofum/android_device_bq_maxwell2plus" path="device/bq/maxwell2plus" revision="cm-11.0" />
      <project name="fefifofum/android_kernel_bq_maxwell2plus" path="kernel/bq/maxwell2plus" revision="cm-11.0" />
      <project name="fefifofum/proprietary_vendor_bq" path="vendor/bq" revision="cm-11.0" />
    </manifest>

Sync and build:

    repo sync -j4
    . build/envsetup.sh
    brunch maxwell2plus
