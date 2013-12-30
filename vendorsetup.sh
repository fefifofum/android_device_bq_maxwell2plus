#
# Copyright (C) 2012 The Android Open Source Project
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

add_lunch_combo full_maxwell2plus-userdebug

# Run device patches on the tree.
sh device/bq/maxwell2plus/patches/apply.sh

# Remove kernel git folder.
rm -rf kernel/bq/maxwell2plus/.git

# Copy HDMI icons.
cp device/bq/maxwell2plus/config/hdmi-icons/ic_settings_hdmi.png packages/apps/Settings/res/drawable-mdpi/ic_settings_hdmi.png
cp device/bq/maxwell2plus/config/hdmi-icons/ic_settings_screen_scale.png packages/apps/Settings/res/drawable-mdpi/ic_settings_screen_scale.png
