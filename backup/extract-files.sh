#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSu8150E-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Extract prebuilt libraries (from a CM7 running device) needed for the U8150

DEVICE=msm7625_qrd

DIRS="
bin
lib/hw
lib/modules
etc
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/qcom/$DEVICE/proprietary/$DIR
done

adb pull /system/bin/baseinit ../../../vendor/qcom/$DEVICE/proprietary/bin/baseinit
adb pull /system/bin/battery_charging ../../../vendor/qcom/$DEVICE/proprietary/bin/battery_charging
adb pull /system/bin/hci_qcomm_init ../../../vendor/qcom/$DEVICE/proprietary/bin/hci_qcomm_init
adb pull /system/bin/qmuxd ../../../vendor/qcom/$DEVICE/proprietary/bin/qmuxd
adb pull /system/bin/rild ../../../vendor/qcom/$DEVICE/proprietary/bin/rild
adb pull /system/bin/wmiconfig ../../../vendor/qcom/$DEVICE/proprietary/bin/wmiconfig
adb pull /system/bin/wlan_tool ../../../vendor/qcom/$DEVICE/proprietary/bin/wlan_tool
adb pull /system/bin/port-bridge ../../../vendor/qcom/$DEVICE/proprietary/bin/port-bridge
adb pull /system/bin/hostapd ../../../vendor/qcom/$DEVICE/proprietary/bin/hostapd
adb pull /system/bin/hostapd_cli ../../../vendor/qcom/$DEVICE/proprietary/bin/hostapd_cli
adb pull /system/bin/hostapd_wps ../../../vendor/qcom/$DEVICE/proprietary/bin/hostapd_wps
adb pull /system/bin/diag_klog ../../../vendor/qcom/$DEVICE/proprietary/bin/diag_klog
adb pull /system/bin/diag_mdlog ../../../vendor/qcom/$DEVICE/proprietary/bin/diag_mdlog
adb pull /system/bin/CKPD-daemon ../../../vendor/qcom/$DEVICE/proprietary/bin/CKPD-daemon

adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/qcom/$DEVICE/proprietary/etc/01_qcomm_omx.cfg
adb pull /system/etc/init.qcom.coex.sh ../../../vendor/qcom/$DEVICE/proprietary/etc/init.qcom.coex.sh
adb pull /system/etc/init.qcom.bt.sh ../../../vendor/qcom/$DEVICE/proprietary/etc/init.qcom.bt.sh
adb pull /system/etc/init.qcom.fm.sh ../../../vendor/qcom/$DEVICE/proprietary/etc/init.qcom.fm.sh
adb pull /system/etc/init.qcom.sdio.sh ../../../vendor/qcom/$DEVICE/proprietary/etc/init.qcom.sdio.sh
adb pull /system/etc/init.qcom.wifi.sh ../../../vendor/qcom/$DEVICE/proprietary/etc/init.qcom.wifi.sh
adb pull /system/etc/pvplayer.cfg ../../../vendor/qcom/$DEVICE/proprietary/etc/pvplayer.cfg

adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/qcom/$DEVICE/proprietary/lib/hw/gralloc.msm7k.so
adb pull /system/lib/hw/led.qcom.so ../../../vendor/qcom/$DEVICE/proprietary/lib/hw/led.qcom.so
adb pull /system/lib/hw/sensors.MSM7625_QRD.so ../../../vendor/qcom/$DEVICE/proprietary/lib/hw/sensors.MSM7625_QRD.so
adb pull /system/lib/hw/lights.msm7k.so ../../../vendor/qcom/$DEVICE/proprietary/lib/hw/lights.msm7k.so
adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/qcom/$DEVICE/proprietary/lib/hw/copybit.msm7k.so

adb pull /system/lib/modules/oprofile.ko ../../../vendor/qcom/$DEVICE/proprietary/lib/modules/oprofile.ko

adb pull /system/lib/libaudioeq.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libaudioeq.so
adb pull /system/lib/libcamera.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libcamera.so
adb pull /system/lib/liboemcamera.so ../../../vendor/qcom/$DEVICE/proprietary/lib/liboemcamera.so

adb pull /system/lib/libcm.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libcm.so
adb pull /system/lib/libdiag.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libdiag.so
adb pull /system/lib/libdll.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libdll.so
adb pull /system/lib/libdsm.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libdsm.so
adb pull /system/lib/libdss.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libdss.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libgsdi_exp.so
adb pull /system/lib/libgstk_exp.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libgstk_exp.so
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libmm-adspsvc.so
adb pull /system/lib/libmm-omxcore.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libmm-omxcore.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libmmgsdilib.so
adb pull /system/lib/libmmipl.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libmmipl.so
adb pull /system/lib/libmmjpeg.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libmmjpeg.so
adb pull /system/lib/libnv.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libnv.so
adb pull /system/lib/liboncrpc.so ../../../vendor/qcom/$DEVICE/proprietary/lib/liboncrpc.so
adb pull /system/lib/libpbmlib.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libpbmlib.so
adb pull /system/lib/libqmi.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libqmi.so
adb pull /system/lib/libqueue.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libqueue.so
adb pull /system/lib/libril-qc-1.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libril-qc-1.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libril-qcril-hook-oem.so
adb pull /system/lib/libwms.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libwms.so
adb pull /system/lib/libwmsts.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libwmsts.so


adb pull /system/lib/corgi.so ../../../vendor/qcom/$DEVICE/proprietary/lib/corgi.so
adb pull /system/lib/dejitter.so ../../../vendor/qcom/$DEVICE/proprietary/lib/dejitter.so
adb pull /system/lib/inputraw.so ../../../vendor/qcom/$DEVICE/proprietary/lib/inputraw.so
#Omx
adb pull /system/lib/libOmxAacDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxAacDec.so
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxAacEnc.so
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxAdpcmDec.so
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxAmrDec.so
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxAmrEnc.so
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxAmrRtpDec.so
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxAmrwbDec.so
adb pull /system/lib/libOmxCore.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxCore.so
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxEvrcDec.so
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxEvrcEnc.so
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxH264Dec.so
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxMp3Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxMpeg4Dec.so
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxQcelp13Enc.so
adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxQcelpDec.so
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxVidEnc.so
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxWmaDec.so
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libOmxWmvDec.so

adb pull /system/lib/libmm-omxcore.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libmm-omxcore.so
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libomx_aacdec_sharedlibrary.so
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libomx_amrdec_sharedlibrary.so
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libomx_amrenc_sharedlibrary.so
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libomx_avcdec_sharedlibrary.so
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libomx_m4vdec_sharedlibrary.so
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libomx_mp3dec_sharedlibrary.so
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libomx_sharedlibrary.so
adb pull /system/lib/libqcomm_omx.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libqcomm_omx.so
#adb pull /system/lib/libSensorsEventCtrl.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libSensorsEventCtrl.so
#Audio
#adb pull /system/lib/libaudioalsa.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libaudioalsa.so
#adb pull /system/lib/libaudioeq.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libaudioeq.so
#adb pull /system/lib/libaudio.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libaudio.so
#adb pull /system/lib/libhardware_legacy.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libhardware_legacy.so
#adb pull /system/lib/liba2dp.so ../../../vendor/qcom/$DEVICE/proprietary/lib/liba2dp.so
#adb pull /system/lib/libmedia.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libmedia.so
#adb pull /system/lib/libbinder.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libbinder.so

#refcne
adb pull /system/lib/librefcne.so ../../../vendor/qcom/$DEVICE/proprietary/lib/librefcne.so
adb pull /system/lib/libreference-cdma-sms.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libreference-cdma-sms.so
adb pull /system/lib/libreference-ril.so ../../../vendor/qcom/$DEVICE/proprietary/lib/libreference-ril.so


chmod 755 ../../../vendor/qcom/$DEVICE/proprietary/bin/* 

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/qcom/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The AndroidOpen Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/qcom/__DEVICE__/extract-files.sh - DO NOT EDIT

# All the blobs necessary for U8150
PRODUCT_COPY_FILES += \\
    vendor/qcom/__DEVICE__/proprietary/bin/baseinit:system/bin/baseinit \\
    vendor/qcom/__DEVICE__/proprietary/bin/battery_charging:system/bin/battery_charging \\
    vendor/qcom/__DEVICE__/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/qcom/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    vendor/qcom/__DEVICE__/proprietary/bin/rild:system/bin/rild \\
    vendor/qcom/__DEVICE__/proprietary/bin/wmiconfig:system/bin/wmiconfig \\
    vendor/qcom/__DEVICE__/proprietary/bin/wlan_tool:system/bin/wlan_tool \\
    vendor/qcom/__DEVICE__/proprietary/bin/port-bridge:system/bin/port-bridge \\
    vendor/qcom/__DEVICE__/proprietary/bin/hostapd:system/bin/hostapd \\
    vendor/qcom/__DEVICE__/proprietary/bin/hostapd_cli:system/bin/hostapd_cli \\
    vendor/qcom/__DEVICE__/proprietary/bin/hostapd_wps:system/bin/hostapd_wps \\
    vendor/qcom/__DEVICE__/proprietary/bin/diag_klog:system/bin/diag_klog \\
    vendor/qcom/__DEVICE__/proprietary/bin/diag_mdlog:system/bin/diag_mdlog \\
    vendor/qcom/__DEVICE__/proprietary/bin/CKPD-daemon:system/bin/CKPD-daemon 

PRODUCT_COPY_FILES += \\
    vendor/qcom/__DEVICE__/proprietary/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
    vendor/qcom/__DEVICE__/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \\
    vendor/qcom/__DEVICE__/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \\
    vendor/qcom/__DEVICE__/proprietary/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \\
    vendor/qcom/__DEVICE__/proprietary/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \\
    vendor/qcom/__DEVICE__/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \\
    vendor/qcom/__DEVICE__/proprietary/etc/pvplayer.cfg:system/etc/pvplayer.cfg

PRODUCT_COPY_FILES += \\
    vendor/qcom/__DEVICE__/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/hw/led.qcom.so:system/lib/hw/led.qcom.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/hw/sensors.MSM7625_QRD.so:system/lib/hw/sensors.MSM7625_QRD.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so

PRODUCT_COPY_FILES += \\
    vendor/qcom/__DEVICE__/proprietary/lib/modules/oprofile.ko:system/lib/modules/oprofile.ko


PRODUCT_COPY_FILES += \\
    vendor/qcom/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libcamera.so:obj/lib/libcamera.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libdll.so:system/lib/libdll.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libdss.so:system/lib/libdss.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so\\
    vendor/qcom/__DEVICE__/proprietary/lib/corgi.so:system/lib/corgi.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/dejitter.so:system/lib/dejitter.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/inputraw.so:obj/lib/inputraw.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/librefcne.so:system/lib/librefcne.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libreference-cdma-sms.so:system/lib/libreference-cdma-sms.so \\
    vendor/qcom/__DEVICE__/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so

   # vendor/qcom/__DEVICE__/proprietary/lib/libhardware_legacy.so:system/lib/libhardware_legacy.so \\
  #  vendor/qcom/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \\
 #   vendor/qcom/__DEVICE__/proprietary/lib/libmedia.so:system/lib/libmedia.so \\
#    vendor/qcom/__DEVICE__/proprietary/lib/libbinder.so:system/lib/libbinder.so




EOF

./setup-makefiles.sh
