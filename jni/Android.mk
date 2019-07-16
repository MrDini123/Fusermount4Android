LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/android_external_fuse/lib/Android.mk \
$(LOCAL_PATH)/fusermount.mk
