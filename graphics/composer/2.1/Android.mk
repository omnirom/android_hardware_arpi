LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.graphics.composer@2.1-service.rpi4
LOCAL_VENDOR_MODULE := true
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_INIT_RC := android.hardware.graphics.composer@2.1-service.rpi4.rc

LOCAL_SRC_FILES := \
        drm_kms_v3d.cpp \
        Hwc2Device.cpp \
        ComposerHal.cpp \
        ComposerCommandEngine.cpp \
        ComposerClient.cpp \
        Composer.cpp \
        service.cpp

LOCAL_SHARED_LIBRARIES := \
        android.hardware.graphics.composer@2.1 \
        android.hardware.graphics.mapper@2.0 \
        android.hardware.graphics.mapper@3.0 \
        android.hardware.graphics.common@1.0 \
        libbinder \
        libhidlbase \
        libhidltransport \
        libbase \
        libutils \
        libcutils \
        liblog \
        libhardware \
        libfmq \
        libEGL \
        libui \
        libsync \
        libdrm

LOCAL_HEADER_LIBRARIES := \
        android.hardware.graphics.mapper@2.0-passthrough_headers \
        android.hardware.graphics.composer@2.1-command-buffer \
        android.hardware.graphics.composer@2.1-hal

LOCAL_C_INCLUDES := \
        external/drm_gralloc \
        external/libdrm \
        external/libdrm/include/drm \
        system/core/libgrallocusage/include \
        system/core/libutils/include \
        hardware/libhardware_legacy/include

LOCAL_CFLAGS += \
        -Wall \
        -Werror

include $(BUILD_EXECUTABLE)
