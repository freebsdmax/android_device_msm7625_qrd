LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

files := init.focaltech.sh
files += firmware/touch_ft5202_fm_25.bin

copy_to := $(addprefix $(TARGET_OUT)/etc/,$(files))
copy_from := $(addprefix $(LOCAL_PATH)/,$(files))

$(copy_to) : PRIVATE_MODULE := system_etcdir
$(copy_to) : $(TARGET_OUT)/etc/% : $(LOCAL_PATH)/% | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += $(copy_to)

