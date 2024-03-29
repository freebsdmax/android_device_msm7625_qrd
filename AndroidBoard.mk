# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#----------------------------------------------------------------------
# Compile (L)ittle (K)ernel bootloader and the nandwrite utility
#----------------------------------------------------------------------
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
#ifneq ($(strip $(TARGET_NO_BOOTLOADER)),true)

# Compile
#include bootable/bootloader/lk/AndroidBoot.mk

#INSTALLED_BOOTLOADER_TARGET := $(PRODUCT_OUT)/bootloader
#file := $(INSTALLED_BOOTLOADER_TARGET)
#ALL_PREBUILT += $(file)
#$(file): $(TARGET_BOOTLOADER) | $(ACP)
#	$(transform-prebuilt-to-target)

# Copy nandwrite utility to target out directory
#INSTALLED_NANDWRITE_TARGET := $(PRODUCT_OUT)/nandwrite
#file := $(INSTALLED_NANDWRITE_TARGET)
#ALL_PREBUILT += $(file)
#$(file) : $(TARGET_NANDWRITE) | $(ACP)
#	$(transform-prebuilt-to-target)
#endif

#----------------------------------------------------------------------
# Compile Linux Kernel
#----------------------------------------------------------------------
#ifeq ($(KERNEL_DEFCONFIG),)
#    KERNEL_DEFCONFIG := msm7625_qrd_defconfig
#endif

#include kernel/AndroidKernel.mk

#file := $(INSTALLED_KERNEL_TARGET)
#ALL_PREBUILT += $(file)
#$(file) : $(TARGET_PREBUILT_KERNEL) | $(ACP)
#	$(transform-prebuilt-to-target)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := qrd-keypad.kcm
#LOCAL_SRC_FILES := FT5202_Touchscreen_Touch_Skate.kcm
#LOCAL_MODULE_TAGS := optional
#include $(BUILD_KEY_CHAR_MAP)

file := device/qcom/msm7625_qrd/prebuilt/usr/keylayout/7k_handset.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/7k_handset.kl | $(ACP)
    $(transform-prebuilt-to-target)
LOCAL_MODULE_TAGS := optional

file := device/qcom/msm7625_qrd/prebuilt/usr/keylayout/qrd-keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/qrd-keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)
LOCAL_MODULE_TAGS := optional

#file := $(TARGET_OUT_KEYLAYOUT)/FT5202_Touchscreen_Touch_Skate.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/FT5202_Touchscreen_Touch_Skate.kl | $(ACP)
#	$(transform-prebuilt-to-target)
#LOCAL_MODULE_TAGS := optional

#file := $(TARGET_OUT_KEYLAYOUT)/h2w_headset.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/h2w_headset.kl | $(ACP)#
#	$(transform-prebuilt-to-target)
#LOCAL_MODULE_TAGS := optional

#file := $(TARGET_OUT)/etc/vold.fstab
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/vold.fstab | $(ACP)
#	$(transform-prebuilt-to-target)
#LOCAL_MODULE_TAGS := optional

#ifeq ($(strip $(BOARD_HAS_QCOM_WLAN)),true)
#file := $(TARGET_OUT)/etc/wifi/wpa_supplicant.conf
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/wpa_supplicant.conf | $(ACP)
#	$(transform-prebuilt-to-target)
#LOCAL_MODULE_TAGS := optional
#endif
