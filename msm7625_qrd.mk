
DEVICE_PACKAGE_OVERLAYS += device/qcom/msm7625_qrd/overlay

PRODUCT_PACKAGES += \
    copybit.msm7k \
    Gallery \
#    gps.u8160 \
    gralloc.msm7k \
#    huawei_brcm_patchram_plus \
    libOmxCore \
    libOmxVidEnc \
    lights.msm7k \
#    rzscontrol \
    screencap 

# Recovery tools
PRODUCT_PACKAGES += \
    flash_image \
    dump_image \
    erase_image \
    make_ext4fs \
    e2fsck

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni \
    LiveWallpapers \
    VisualizationWallpapers



#PRODUCT_PACKAGES := \
#    IM \
#    VoiceDialer \
#    SdkSetup


$(call inherit-product, build/target/product/generic.mk)
#$(call inherit-product, build/target/product/generic_no_telephony.mk)

#Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

#ifneq (, $(filter msm7625_qrd, $(TARGET_PRODUCT)))
#PRODUCT_COPY_FILES +=\
#        vendor/qcom/qrd-proprietary/frameworks/base/service/com.GbcLed.server.xml:system/etc/permissions/com.GbcLed.server.xml
#endif

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml


# Keys
PRODUCT_COPY_FILES += \
    device/qcom/msm7625_qrd/prebuilt/virtualkeys.FT5202_Touchscreen_Touch_Skate:system/usr/virtual/virtualkeys.FT5202_Touchscreen_Touch_Skate

PRODUCT_COPY_FILES +=\
		device/qcom/msm7625_qrd/sw_ver.txt:system/etc/sw_ver.txt \
		device/qcom/msm7625_qrd/ts.conf:system/etc/ts.conf \
		device/qcom/msm7625_qrd/ts.conf:system/ts.conf \
		device/qcom/msm7625_qrd/wifi/ar6000.ko:system/wifi/ar6000.ko \
		device/qcom/msm7625_qrd/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
		device/qcom/msm7625_qrd/wifi/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \


# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init files
PRODUCT_COPY_FILES += \
    device/qcom/msm7625_qrd/prebuilt/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/qcom/msm7625_qrd/prebuilt/init.qcom.rc:root/init.qcom.rc \
    device/qcom/msm7625_qrd/prebuilt/recovery/init.rc:recovery/root/init.rc \
    device/qcom/msm7625_qrd/prebuilt/init.rc:root/init.rc 

# Audio
PRODUCT_COPY_FILES += \
    device/qcom/msm7625_qrd/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/qcom/msm7625_qrd/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/qcom/msm7625_qrd/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml



# Enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# RIL properties
#PRODUCT_PROPERTY_OVERRIDES += \
#    rild.libpath=/system/lib/libril-qc-1.so \
#    rild.libargs=-d/dev/smd0 \
#    persist.rild.nitz_plmn= \
#    persist.rild.nitz_long_ons_0= \
#    persist.rild.nitz_long_ons_1= \
#    persist.rild.nitz_long_ons_2= \
#    persist.rild.nitz_long_ons_3= \
#    persist.rild.nitz_short_ons_0= \
#    persist.rild.nitz_short_ons_1= \
#    persist.rild.nitz_short_ons_2= \
#    persist.rild.nitz_short_ons_3= \
#    DEVICE_PROVISIONED=1


PRODUCT_PROPERTY_OVERRIDES += \
	android.keylayout.qrd-keypad=/system/usr/keylayout/qrd-keypad.kl \
	android.keychar.qrd-keypad=/system/usr/keychars/qrd-keypad.kcm

# Networking properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

PRODUCT_PROPERTY_OVERRIDES += \
    net.bt.fw_ver=0xff

# Performance & graphics properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=24m \
    persist.sys.purgeable_assets=1 \
    persist.sys.rotationanimation=0 \
    persist.sys.scrollingcache=2 \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.opengles.version=65537 \
    ro.sf.lcd_density=120 \
    ro.vold.umsdirtyratio=20

# Touchscreen properties
PRODUCT_PROPERTY_OVERRIDES += \
    view.fading_edge_length=8 \
    view.minimum_fling_velocity=25 \
    view.scroll_friction=0.008 \
    view.touch_slop=15 \
    keyguard.no_require_sim=1

# Compcache properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=0

# Tethering (rndis kernel kickback) properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dsds.enabled=1
    ro.tethering.kb_disconnect=1

# Audio properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.speaker-attn=6

# Limit camera to 2mp resolution
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.PicMaxSize=5mp


ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/qcom/msm7625_qrd/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/qcom/msm7625_qrd/msm7625_qrd-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
		
# Overrides
PRODUCT_BRAND := GSMART
PRODUCT_NAME := msm7625_qrd
PRODUCT_DEVICE := msm7625_qrd
PRODUCT_MODEL := msm7625_qrd

QC_PROP := true
