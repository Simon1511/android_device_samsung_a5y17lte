LOCAL_PATH:= $(call my-dir)

# Host static library
include $(CLEAR_VARS)
LOCAL_SRC_FILES := dtbimg.c
LOCAL_STATIC_LIBRARIES := libfdt
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/libdtbimg
LOCAL_MODULE := libdtbimga5y17lte
include $(BUILD_HOST_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := mkbootimg.c
LOCAL_STATIC_LIBRARIES := libdtbimga5y17lte libfdt libcrypto_static

LOCAL_MODULE := mkdtbhbootimga5y17lte
LOCAL_MODULE_STEM := mkdtbhbootimg

include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unpackbootimg.c
LOCAL_MODULE := unpackdtbhbootimga5y17lte
LOCAL_MODULE_STEM := unpackdtbhbootimg
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := mkdtbimg.c
LOCAL_STATIC_LIBRARIES := libdtbimga5y17lte libfdt

LOCAL_MODULE := dtbhtoolExynosa5y17lte
LOCAL_MODULE_STEM := dtbhtoolExynos

include $(BUILD_HOST_EXECUTABLE)

# Target static library
include $(CLEAR_VARS)
LOCAL_SRC_FILES := dtbimg.c
LOCAL_STATIC_LIBRARIES := libfdt
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/libdtbimg
LOCAL_MODULE := libdtbimga5y17lte
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkbootimg.c
LOCAL_STATIC_LIBRARIES := libdtbimga5y17lte libfdt libcrypto_static libcutils libc
LOCAL_MODULE := utility_mkdtbhbootimga5y17lte
LOCAL_MODULE_STEM := mkdtbhbootimg
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unpackbootimg.c
LOCAL_STATIC_LIBRARIES := libcutils libc
LOCAL_MODULE := utility_unpackdtbhbootimga5y17lte
LOCAL_MODULE_STEM := unpackdtbhbootimg
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unpackdtbhimg.c
LOCAL_MODULE := unpackdtbhimga5y17lte
include $(BUILD_HOST_EXECUTABLE)

$(call dist-for-goals,dist_files,$(LOCAL_BUILT_MODULE))
