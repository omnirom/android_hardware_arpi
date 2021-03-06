LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := gralloc.rpi4
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := gralloc_rpi.cpp

LOCAL_C_INCLUDES := \
    hardware/libhardware/include \
    system/core/libsystem/include \
    system/core/libcutils/include \
    system/core/liblog/include \
    external/drm_gralloc \
    external/libdrm \
    external/libdrm/include/drm

LOCAL_SHARED_LIBRARIES := \
    libgralloc_drm

LOCAL_CFLAGS += -Wno-c++11-narrowing

include $(BUILD_SHARED_LIBRARY)
