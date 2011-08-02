#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
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

VENDOR=motorola
DEVICE=olympus

rm -rf ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/app
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/flex
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/touchpad/20
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/touchpad/21
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/touchpad/22
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw

# system apps
#cp system/app/PhoneConfig.apk ../../../vendor/motorola/$DEVICE/proprietary
#cp system/app/ProgramMenu.apk ../../../vendor/motorola/$DEVICE/proprietary
#cp system/app/ProgramMenuSystem.apk ../../../vendor/motorola/$DEVICE/proprietaryadb
# fingerprint stuff
cp system/bin/am2server ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/app/GfxEngine.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app
cp system/etc/am2server.pubkey ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
cp system/lib/libAuthUDMDrv_1750A100.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libam2app.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libam2server.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# system libs
cp system/lib/libmirror.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libaudiopolicy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libcgdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_author.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_download.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_downloadreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_mp4local.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_mp4localreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_net_support.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_player.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_rtsp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_rtspreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libOpenSLES.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvomxilclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libhwmediarecorder.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libhwmediaplugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib


# Pull needed NV libs
cp system/lib/liba2dp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/librds_util.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libril_rds.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvddk_2d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvddk_2d_v2.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvodm_dtvtuner.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvddk_2d_v2.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_utils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvomxilclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvrm_channel.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvdispatch_helper.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_contentpipe.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvodm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_tracklist.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libctest.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libsensortest.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libam2app.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvodm_imager.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvodm_query.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvidia_display_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvwsi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_image.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_vp6_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvdispmgr_d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_parser.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvos.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvddk_audiofx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvddk_2d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvrm_graphics.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvwinsys.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_manager.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvddk_aes_user.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_writer.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_videorenderer.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvidia_display_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_audio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libbluetoothd.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libbattd.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_manager.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libmoto_ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnmea.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# Pull nvidia framework libs
#cp system/framework/com.nvidia.display.jar ../../../vendor/$VENDOR/$DEVICE/proprietary/lib


# Pull nvidia EGL libs
cp system/lib/egl/libEGL_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
cp system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
cp system/lib/egl/libGLESv2_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl

# Pull HW libs
cp system/lib/hw/gps.olympus.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
cp system/lib/hw/gralloc.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
cp system/lib/hw/overlay.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
cp system/lib/hw/lights.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
cp system/lib/hw/sensors.olympus.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw

# Pull bin files
cp system/bin/mot_boot_mode ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_vc1dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_wmaprodec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_h264dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_service.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_adtsdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_wavdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_reference.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nv_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_sorensondec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvddk_audiofx_core.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_sw_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_aacdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvrm_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_jpegenc.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvddk_audiofx_transport.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_mp2dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/ap_gain.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/omx_tests ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/memtest_mode ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_mpeg4dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_wmadec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_audiomixer.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_manager.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvmm_jpegdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/nvrm_avp.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/tegrastats ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/omx_tests ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/tund ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/bluetoothd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/sdptool ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/Hostapd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/battd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/remountpds ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
cp system/bin/touchpad ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

# Pull bt files
cp system/etc/BCM4329B1_002.002.023.0757.0780.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary/etc

# Pull Wifi userland firmware
cp system/etc/firmware/wifi/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
cp system/etc/firmware/wifi/sdio-ag-cdc-11n-mfgtest-roml-seqcmds.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
cp system/etc/firmware/wifi/sdio-ag-cdc-full11n-minioctl-roml-pno-wme-aoe-pktfilter-keepalive.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
cp system/etc/firmware/wifi/sdio-g-cdc-roml-reclaim-wme-apsta-idauth-minioctl.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
cp system/etc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi

# Pull camera files
cp system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libnvmm_camera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# Pull OMX libs
cp system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libomx_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

#pull subsystem configuration settings
cp system/etc/touchpad/20/touchpad.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/touchpad/20
cp system/etc/touchpad/21/touchpad.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/touchpad/21
cp system/etc/touchpad/22/touchpad.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/touchpad/22
cp system/etc/pvplayer.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc

# Pull Opencore libs
cp system/lib/libopencore_author.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_downloadreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_download.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_mp4localreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_mp4local.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_net_support.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_player.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_rtspreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
cp system/lib/libopencore_rtsp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# Pull Stage Fright
cp system/lib/libstagefrighthw.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

./setup-makefiles.sh
