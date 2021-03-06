LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fstab.rhine
LOCAL_SRC_FILES := fstab.rhine
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.rhine
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.$(TARGET_DEVICE)
LOCAL_SRC_FILES := init.rhine.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.rhine.pwr
LOCAL_SRC_FILES := init.rhine.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.rhine.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# WLAN & BT init script

include $(CLEAR_VARS)
LOCAL_MODULE       := init_wlan_bt.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init_wlan_bt.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.init_wlan_bt.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.init_wlan_bt.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.$(TARGET_DEVICE)
LOCAL_SRC_FILES := init.recovery.rhine.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.recovery.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.$(TARGET_DEVICE)
LOCAL_SRC_FILES := ueventd.rhine.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

$(shell mkdir -p $(PRODUCT_OUT)/root && pushd $(PRODUCT_OUT)/root > /dev/null && ln -s fstab.rhine fstab.$(TARGET_DEVICE) && popd > /dev/null)

