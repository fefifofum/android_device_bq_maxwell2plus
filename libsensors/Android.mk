# Copyright (C) 2008 The Android Open Source Project
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
# Modified 2011 by InvenSense, Inc.


LOCAL_PATH := $(call my-dir)

# HAL module implementation, not prelinked and stored in
# hw/<SENSORS_HARDWARE_MODULE_ID>.<ro.board.platform>.so

include $(CLEAR_VARS)
LOCAL_MODULE := sensors.$(TARGET_BOARD_HARDWARE)
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := -DLOG_TAG=\"Sensors\"

LOCAL_SRC_FILES := SensorBase.cpp MPLSensor.cpp sensors_mpl.cpp	

LOCAL_C_INCLUDES += $(LOCAL_PATH)/mlsdk/platform/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mlsdk/platform/include/linux
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mlsdk/platform/linux
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mlsdk/mllite

LOCAL_SHARED_LIBRARIES := liblog libcutils libutils libdl
LOCAL_SHARED_LIBRARIES += libmplmpu libmllite libmlplatform
LOCAL_SHARED_LIBRARIES += libakm8963 libakmd libami libami_sensor_mw

LOCAL_CPPFLAGS += -DMPL_LIB_NAME=\"libmplmpu.so\"
LOCAL_CPPFLAGS += -DAICHI_LIB_NAME=\"libami.so\"
LOCAL_CPPFLAGS += -DAKM_LIB_NAME=\"libakmd.so\"
LOCAL_CPPFLAGS += -DLINUX=1
LOCAL_LDFLAGS := -rdynamic
LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
