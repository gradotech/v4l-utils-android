LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    log.c \
    libv4l2.c \
    v4l2convert.c \
    v4l2-plugin-android.c

LOCAL_CFLAGS += -Wno-missing-field-initializers
LOCAL_CFLAGS += -Wno-sign-compare
LOCAL_CFLAGS += -include ../../android-config.h
LOCAL_CFLAGS += -Wno-error
LOCAL_CFLAGS += -Wno-unused-variable
LOCAL_CFLAGS += -Wno-unused-parameter
LOCAL_CFLAGS += -DHAVE_V4L_PLUGINS

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../include \
    $(LOCAL_PATH)/../../include \
    $(LOCAL_PATH)/../.. \
	$(TOP)/bionic/libc/upstream-openbsd/lib/libc/gen

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libdl \
    libssl \
    libz

LOCAL_STATIC_LIBRARIES := libv4l_convert
LOCAL_MODULE := libv4l2
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
