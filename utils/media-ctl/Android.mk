LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES += \
	libmediactl.c \
	libv4l2subdev.c \
	media-ctl.c \
	options.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := media-ctl

LOCAL_CFLAGS += -Wno-error
LOCAL_CFLAGS += -Wno-unused-variable
LOCAL_CFLAGS += -Wno-unused-parameter

include $(BUILD_EXECUTABLE)

