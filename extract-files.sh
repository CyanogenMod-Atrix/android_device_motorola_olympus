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
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
#################################################################
#                                                               #
#   /system/app folder                                          #
#                                                               #
#                                                               #
#################################################################
#adb pull /system/app/PhoneConfig.apk ../../../vendor/motorola/$DEVICE/proprietary
#adb pull /system/app/ProgramMenu.apk ../../../vendor/motorola/$DEVICE/proprietary
#adb pull /system/app/ProgramMenuSystem.apk ../../../vendor/motorola/$DEVICE/proprietaryadb
#################################################################
#                                                               #
#   /system/bin folder                                          #
#                                                               #
#                                                               #
#################################################################
adb pull /system/bin/aes1750detecttest ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/aes1750selftest ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/aes1750test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/akmd2 ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/am2server ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/ap_gain.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/ap_gain_mmul.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/aplogd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/applypatch ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/app_process ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/audio_ecns_param.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/audioloop ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/batch ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/battd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/bluetoothd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/bootanimation ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/brcm_patchram_plus ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/bt_downloader ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/bt_init ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/bt_test_exec ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/busyboc ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/charge_only_mode ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/chat-ril ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dalvikvm ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dbus-daemon ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dbvc_atvc_property_set ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/debuggerd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dexopt ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dhcpd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dlnasrv ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dmt ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dnsmasq ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dumpe2fs ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dumpstate ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dumpsys ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dund ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dvz ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/e2fsck ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/enc_mgt_tool ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/encryption_test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/fbread ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/fdisk ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/fsck_msdos ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/ftmipcd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/gdbserver ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/gkilogd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/gzip ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/Hostapd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/installd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/ip ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/iptables ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/keystore ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/keystore_cli ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/linker ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/logcat ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/logwrapper ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mdm_panicd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mediaserver ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/memtest_mode ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mke2fs ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/modemlog ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mot_boot_mode ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/motobox ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mountosh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mtpd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/ndc ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/netd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvddk_audiofx_core.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvddk_audiofx_transport.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nv_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_aacdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_adtsdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_audiomixer.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_h264dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_jpegdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_jpegenc.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_manager.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_mp2dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_mpeg4dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_reference.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_service.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_sorensondec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_sw_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_vc1dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_wavdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_wmadec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvmm_wmaprodec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvrm_avp.axf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/nvrm_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/omx_tests ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/pand ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/ping ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/powertop ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/pppd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/qbpfs ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/qbplogd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/qbpnv ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/qemud ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/qemu-props ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/racoon ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/radiooptions ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/record ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/remountpds ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/resize2fs ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/rild ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/rtp_test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/schedtest ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/sdcard ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/sdptool ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/secclkd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/service ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/servicemanager ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/showlease ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/stagefright ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/su ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/surfaceflinger ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/system_server ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tc ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tcmd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tcmdhelp ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tdc ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tegrastats ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/testid3 ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/testppd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/toolbox ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/touchpad ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tstmetainfo ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tty2ttyd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tuncfg ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tund ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/tune2fs ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/usbd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/vdc ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/vold ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/vpnclientpm ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/whisperd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/wpa_cli ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/wpa_supplicant ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
#################################################################
#                                                               #
#  /system/bin folder scripts                                   #
#                                                               #
#                                                               #
#################################################################
adb pull /system/bin/am ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/bmgr ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/check_sdc.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/config_aplogd.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/dmt ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/ime ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/input ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/load_pia.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/loadpreinstalls.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/monkey ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mount_ext3.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/mount_pia.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/napics.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/netcfg ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/pm ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/pppd-ril ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/run-as ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/start_enc_mgt_tool.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/svc ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
#################################################################
#                                                               #
#  /system/lib    folder                                        #
#                                                               #
#                                                               #
#################################################################
adb pull /system/lib/liba2dp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libacc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libam2app.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libam2server.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libandroid.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libandroid_runtime.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libandroid_servers.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libarcsoft.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeffect_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioflinger.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libAuthUDMDrv_1750A100.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libbattd.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libbcbmsg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libbinder.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libbluedroid.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libbluetooth.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libbluetoothd.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libCamera_gingerbread.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcameraservice.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcaps.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcapsjava.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcfa-1.5.7-GO1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcfaB-1.5.7-GO1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcgdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libc_malloc_debug_leak.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libc_malloc_debug_qemu.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcrypto.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libctest.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libcutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdbus.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdiskconfig.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdlnahttppjni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdlnajni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdlnaprofileparse.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdlnasysjni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdmengine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdmjavaplugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdrm1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdrm1_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdvm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libeffects.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libEGL.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libemoji.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libETC1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libexempi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libexif.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libexpat.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libext2_blkid.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libext2_com_err.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libext2_e2p.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libdext2fs.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libext2_profile.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libext2_uuid.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libextdisp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libFFTEm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libGLESv1_CM.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libGLESv2.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libglwtanijni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libgui.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libhardware.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libhardware_legacy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libhdmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libhostapd_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libhwmediaplugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libhwmediarecorder.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libicui18n.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libicuuc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libimage_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libiprouteutil.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libipsec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjanus.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjnigraphics.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjni_hwr.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjni_latin.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjni_latinime.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjni_nwp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjni_pinyin.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjni_pinyinime.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjni_strokeime.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libkbdict.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libkpilogger.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libibcfaB-1.5.7-GO1.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/liblog.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmedia.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmediaext.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmedia_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmediaplayerservice.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmetainfo.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmirror.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmock_ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmot_atcmd.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmot_atcmd_mflex.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmot_bluetooth_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmot_bthid_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmot_btpan_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmotdrm1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmotdrm1_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmotefem.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmot_led.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmotodbgutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmoto_netutil.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmoto_ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmtp_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libmtpstack.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnativedrm1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnativehelper.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnetlink.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnetutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnfc_ndef.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnmea.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvddk_2d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvddk_2d_v2.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvddk_aes_user.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvddk_audiofx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvdispatch_helper.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvdispmgr_d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvidia_display_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_audio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_camera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_contentpipe.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_image.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_manager.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_parser.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_tracklist.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_utils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_videorenderer.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_vp6_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvmm_writer.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvodm_dtvtuner.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvodm_imager.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvodm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvodm_query.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvomxilclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvos.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libnvrm_channel.so ../../../vendor/motorola/$DEVICE/proprietary 
adb pull /system/lib/libnvrm_graphics.so ../../../vendor/motorola/$DEVICE/proprietary 
adb pull /system/lib/libnvsm.so ../../../vendor/motorola/$DEVICE/proprietary 
adb pull /system/lib/libnvwinsys.so ../../../vendor/motorola/$DEVICE/proprietary 
adb pull /system/lib/libnvwsi.so ../../../vendor/motorola/$DEVICE/proprietary 
adb pull /system/lib/libogg.so ../../../vendor/motorola/$DEVICE/proprietary 
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_author.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_download.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_downloadreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4local.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4localreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_net_support.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_player.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtsp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtspreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libOpenSLES.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpagemap.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpanorama.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpanorama_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libPhotoEditor.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libophotoflow.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpixelflinger.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpkip.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpppd_plugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpppd_plugin-ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libpprojectM.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libprovlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libqcommon.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libqdsp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libquicksec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/librds_util.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libreference-cdma-sms.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/liblibril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libril_rds.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libRS.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/librs_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/librtp_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libscalado.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsensorservice.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsensortest.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsensory.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libskia.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libskiagj.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsonivox.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsoundpool.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libspeex.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libSpeexJNI.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libspellingcheckengine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsqlite.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsqlite_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libSR_AudioIn.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsrec_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libssl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_amrnb_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_avc_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_color_conversion.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_enc_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_foundation.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_omx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstdc++.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libstlport.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsurfaceflinger.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsurfaceflinger_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsystem_server.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libsysutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libthread_db.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libtpa.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libtpa_core.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libttspico.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libttssynthproxy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libuil.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libui3d.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libvideoeditorlite.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libvoicesearch.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libvorbisidec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libvpnclient_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libvsuite_mot_vs32_cmb103.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libwbxmlparser.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/webcore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libwhash.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libWifiAPHardware.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libwpa_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libxmpcore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libXmp_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libz.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
#################################################################
#                                                               #
#  /system/egl folder                                           #
#                                                               #
#                                                               #
#################################################################
adb pull /system/lib/egl/libEGL_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libeglinfo.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/egl.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
#################################################################
#                                                               #
#  /system/hw  folder                                           #
#                                                               #
#                                                               #
#################################################################
adb pull /system/lib/hw/gps.goldfish.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gps.olympus.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gralloc.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/lights.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/overlay.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/sensors.goldfish.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/sensors.olympus.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
#################################################################
#                                                               #
#  /system/etc folder                                           #
#                                                               #
#                                                               #
#################################################################
adb pull /system/etc/contextawareness/algorithm.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/ppp/peers/pppd-ril.options ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/priority_notifications_config.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/pvplayer_mot.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/security/mancacerts.zip ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/security/oprcacerts.zip ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/security/otacacerts.zip ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/security/cacerts.bks ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
#################################################################
#                                                               #
#where are the tts files                                        #
#                                                               #
#                                                               #
#################################################################
adb pull /system/tts/lang_pico/en-US_lh0_sg.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/en-US_ta.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/es-ES_ta.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/tts/lang_pico/es-ES_zl0_sg.bin ../../../vendor/motorola/$DEVICE/proprietary
#################################################################
#                                                               #
#keychars                                                       #
#                                                               #
#                                                               #
#################################################################
adb pull /system/usr/keychars/evfwd.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/tegra-kbc.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/usb_keyboard_102_en_us.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary
#################################################################
#                                                               #
#keyboard layouts                                               #
#                                                               #
#                                                               #
#################################################################
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/cpcap-key.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/evfwd.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/tegra-kbc.kl ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keylayout/usb_keyboard_102_en_us.kl ../../../vendor/motorola/$DEVICE/proprietary
#################################################################
#                                                               #
#xbins                                                          #
#                                                               #
#                                                               #
#################################################################
adb pull /system/xbin/add-property-tag ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/backup ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/btool ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/check-lost+found ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/dexdump ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/dhdarm ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/dosu ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/drm1_func_test ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/hciconfig ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/hcidump ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/hcitool ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/l2ping ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/latencytop ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/librank ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/opcontrol ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/oprofiled ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/procmem ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/procrank ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/rawbu ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/run_backup ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/run_restore ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/scp ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/showmap ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/showslab ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/sqlite3 ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/xbin/strace ../../../vendor/motorola/$DEVICE/proprietary

./setup-makefiles.sh
