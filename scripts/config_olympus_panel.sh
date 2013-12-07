#!/system/bin/sh
# script to configure Moto Olympus panel
#
#
# Copyright (C) 2013 The Olympus Kernel Project
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

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.
PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin
CFGFILE=/data/system/olympuspanel.cfg
export PATH CFGFILE

export H_REF_TO_SYNC V_REF_TO_SYNC H_SYNC_WIDTH V_SYNC_WIDTH H_BACK_PORCH V_BACK_PORCH H_FRONT_PORCH V_FRONT_PORCH ENABLED PROFILENUMBER


function loadPredefinedProfile {
    PN=$1
    echo loading predefined profile $PN
    case $PN in
    0)
        #profile0
        H_REF_TO_SYNC=4
        V_REF_TO_SYNC=1
        H_SYNC_WIDTH=16
        V_SYNC_WIDTH=1
        H_BACK_PORCH=32
        V_BACK_PORCH=1
        H_FRONT_PORCH=32
        V_FRONT_PORCH=2
        ;;
    1)
        #panels 0x8
        #profile1
        H_REF_TO_SYNC=4
        V_REF_TO_SYNC=4
        H_SYNC_WIDTH=4
        V_SYNC_WIDTH=8
        H_BACK_PORCH=52
        V_BACK_PORCH=12
        H_FRONT_PORCH=52
        V_FRONT_PORCH=12
        ;;
    2)
        #profile2
        H_REF_TO_SYNC=4
        V_REF_TO_SYNC=4
        H_SYNC_WIDTH=4
        V_SYNC_WIDTH=8
        H_BACK_PORCH=32
        V_BACK_PORCH=12
        H_FRONT_PORCH=32
        V_FRONT_PORCH=12
        ;;
    *)
        echo "invalid profile"
        exit 1
        ;;
    esac
}

function initializeCfgFile {
    echo initializing cfg
    DATE=`date`
    echo -n "#####GENERATED AT " > "$CFGFILE"
    chmod 640 "$CFGFILE"
    echo $DATE >> "$CFGFILE"
    echo "#########################" >> "$CFGFILE"
    echo "## Don't use spaces! Lines starting with # are ignored" >> "$CFGFILE"
    echo "## Unfortunately, there's more than one version of panel on the Atrix" >> "$CFGFILE"
    echo "## and they cannot be detect by the kernel, so you need to specify here" >> "$CFGFILE"
    echo "## if removed, this file will be generated again, with default panel values" >> "$CFGFILE"
    echo "## ENABLED (true or false) enable or disable panel configuration by userspace" >> "$CFGFILE"
    echo "## PROFILENUMBER  The number of the predefined profile to use, see below." >> "$CFGFILE"
    echo "##                To use a profile you can safely remove all the variables, and" >> "$CFGFILE"
    echo "##                keep only the ENABLED and PROFILENUMBER lines." >> "$CFGFILE"
    echo "##                The profiles below are just documentation, they are not read" >> "$CFGFILE"
    echo "##                from here." >> "$CFGFILE"
    echo "#########################" >> "$CFGFILE"
    echo "##profile0 (just documentation)" >> "$CFGFILE"
    echo "##        H_REF_TO_SYNC 4" >> "$CFGFILE"
    echo "##        V_REF_TO_SYNC 1" >> "$CFGFILE"
    echo "##        H_SYNC_WIDTH 16" >> "$CFGFILE"
    echo "##        V_SYNC_WIDTH 1" >> "$CFGFILE"
    echo "##        H_BACK_PORCH 32" >> "$CFGFILE"
    echo "##        V_BACK_PORCH 1" >> "$CFGFILE"
    echo "##        H_FRONT_PORCH 32" >> "$CFGFILE"
    echo "##        V_FRONT_PORCH 2" >> "$CFGFILE"
    echo "#" >> "$CFGFILE"
    echo "##panels 0x8" >> "$CFGFILE"
    echo "##profile1 (just documentation)" >> "$CFGFILE"
    echo "##        H_REF_TO_SYNC 4" >> "$CFGFILE"
    echo "##        V_REF_TO_SYNC 4" >> "$CFGFILE"
    echo "##        H_SYNC_WIDTH 4" >> "$CFGFILE"
    echo "##        V_SYNC_WIDTH 8" >> "$CFGFILE"
    echo "##        H_BACK_PORCH 52" >> "$CFGFILE"
    echo "##        V_BACK_PORCH 12" >> "$CFGFILE"
    echo "##        H_FRONT_PORCH 52" >> "$CFGFILE"
    echo "##        V_FRONT_PORCH 12" >> "$CFGFILE"
    echo "##profile2 (just documentation)" >> "$CFGFILE"
    echo "##        H_REF_TO_SYNC 4" >> "$CFGFILE"
    echo "##        V_REF_TO_SYNC 4" >> "$CFGFILE"
    echo "##        H_SYNC_WIDTH 4" >> "$CFGFILE"
    echo "##        V_SYNC_WIDTH 8" >> "$CFGFILE"
    echo "##        H_BACK_PORCH 32" >> "$CFGFILE"
    echo "##        V_BACK_PORCH 12" >> "$CFGFILE"
    echo "##        H_FRONT_PORCH 32" >> "$CFGFILE"
    echo "##        V_FRONT_PORCH 12" >> "$CFGFILE"
    echo "ENABLED=false" >> "$CFGFILE"
    echo "#PROFILENUMBER=0" >> "$CFGFILE"
    echo "H_REF_TO_SYNC=$H_REF_TO_SYNC" >> "$CFGFILE"
    echo "V_REF_TO_SYNC=$V_REF_TO_SYNC" >> "$CFGFILE"
    echo "H_SYNC_WIDTH=$H_SYNC_WIDTH" >> "$CFGFILE"
    echo "V_SYNC_WIDTH=$V_SYNC_WIDTH" >> "$CFGFILE"
    echo "H_BACK_PORCH=$H_BACK_PORCH" >> "$CFGFILE"
    echo "V_BACK_PORCH=$V_BACK_PORCH" >> "$CFGFILE"
    echo "H_FRONT_PORCH=$H_FRONT_PORCH" >> "$CFGFILE"
    echo "V_FRONT_PORCH=$V_FRONT_PORCH" >> "$CFGFILE"
}

function readFromKernel {
    echo reading config from kernel
    H_REF_TO_SYNC=`cat /sys/kernel/olympus/dsi/h_ref_to_sync`
    test $? -ne 0 && exit 1
    V_REF_TO_SYNC=`cat /sys/kernel/olympus/dsi/v_ref_to_sync`
    test $? -ne 0 && exit 1
    H_SYNC_WIDTH=`cat /sys/kernel/olympus/dsi/h_sync_width`
    test $? -ne 0 && exit 1
    V_SYNC_WIDTH=`cat /sys/kernel/olympus/dsi/v_sync_width`
    test $? -ne 0 && exit 1
    H_BACK_PORCH=`cat /sys/kernel/olympus/dsi/h_back_porch`
    test $? -ne 0 && exit 1
    V_BACK_PORCH=`cat /sys/kernel/olympus/dsi/v_back_porch`
    test $? -ne 0 && exit 1
    H_FRONT_PORCH=`cat /sys/kernel/olympus/dsi/h_front_porch`
    test $? -ne 0 && exit 1
    V_FRONT_PORCH=`cat /sys/kernel/olympus/dsi/v_front_porch`
    test $? -ne 0 && exit 1
}

function dumpCurrentLoaded {
    echo "ENABLED=$ENABLED"
    echo "PROFILENUMBER=$PROFILENUMBER"
    echo "H_REF_TO_SYNC=$H_REF_TO_SYNC"
    echo "V_REF_TO_SYNC=$V_REF_TO_SYNC"
    echo "H_SYNC_WIDTH=$H_SYNC_WIDTH"
    echo "V_SYNC_WIDTH=$V_SYNC_WIDTH"
    echo "H_BACK_PORCH=$H_BACK_PORCH"
    echo "V_BACK_PORCH=$V_BACK_PORCH"
    echo "H_FRONT_PORCH=$H_FRONT_PORCH"
    echo "V_FRONT_PORCH=$V_FRONT_PORCH"
}

function writeToKernel {
    echo writing config to kernel
    echo writing h_ref_to_sync
    echo $H_REF_TO_SYNC > /sys/kernel/olympus/dsi/h_ref_to_sync
    test $? -ne 0 && exit 1
    echo writing v_ref_to_sync
    echo $V_REF_TO_SYNC > /sys/kernel/olympus/dsi/v_ref_to_sync
    test $? -ne 0 && exit 1
    echo writing h_sync_width
    echo $H_SYNC_WIDTH > /sys/kernel/olympus/dsi/h_sync_width
    test $? -ne 0 && exit 1
    echo writing v_sync_width
    echo $V_SYNC_WIDTH > /sys/kernel/olympus/dsi/v_sync_width
    test $? -ne 0 && exit 1
    echo writing h_back_porch
    echo $H_BACK_PORCH > /sys/kernel/olympus/dsi/h_back_porch
    test $? -ne 0 && exit 1
    echo writing v_back_porch
    echo $V_BACK_PORCH > /sys/kernel/olympus/dsi/v_back_porch
    test $? -ne 0 && exit 1
    echo writing h_front_porch
    echo $H_FRONT_PORCH > /sys/kernel/olympus/dsi/h_front_porch
    test $? -ne 0 && exit 1
    echo writing v_front_porch
    echo $V_FRONT_PORCH > /sys/kernel/olympus/dsi/v_front_porch
    test $? -ne 0 && exit 1
    echo finished
}

function loadCfgFile {
    if [ -e "$CFGFILE" ]; then
        if which dos2unix > /dev/null 2> /dev/null; then
            dos2unix "$CFGFILE"
        else
            sed -i -e 's/\r$//' "$CFGFILE"
        fi
        . "$CFGFILE"
        test $? -ne 0 && exit 1
    else
        echo ${CFGFILE}: file not found
        exit 1
    fi
}

if [ ! -e "$CFGFILE" ]; then
    echo creating cfgfile
    readFromKernel
    initializeCfgFile
    exit 0
fi

loadCfgFile

if [ "X$PROFILENUMBER" != "X" ] && [ "X$PROFILENUMBER" -ge 0 ]; then
    loadPredefinedProfile $PROFILENUMBER
fi
dumpCurrentLoaded

if [ "X$ENABLED" == "Xtrue" ] || [ "X$ENABLED" == "X1" ]; then
    writeToKernel
else
    echo DISABLED, not writing to kernel
fi

