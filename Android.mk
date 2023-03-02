LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X680D)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
