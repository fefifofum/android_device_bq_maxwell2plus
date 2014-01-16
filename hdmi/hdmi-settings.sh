#
# Copy HDMI files
#
cp -r device/bq/maxwell2plus/hdmi/files/. packages/apps/Settings/

#
# Apply HDMI patches
#
sh device/bq/maxwell2plus/hdmi/patches/apply.sh
