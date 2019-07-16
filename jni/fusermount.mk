LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fusermount
LOCAL_SRC_FILES := \
	android_external_fuse/util/fusermount.c \
	android_external_fuse/lib/mount_util.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/android_external_fuse/android \
	$(LOCAL_PATH)/android_external_fuse/include \
	$(LOCAL_PATH)/android_external_fuse/lib
LOCAL_CFLAGS := \
	-include sys/file.h \
	-D_FILE_OFFSET_BITS=64 \
	-DF_LOCK=LOCK_EX \
	-DF_ULOCK=LOCK_UN \
	-D"lockf(fd,cmd,len)=flock(fd,cmd)"
include $(BUILD_EXECUTABLE)
