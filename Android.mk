LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),maxwell2plus)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
