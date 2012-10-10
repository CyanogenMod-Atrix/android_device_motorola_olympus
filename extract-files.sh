#!/bin/sh

VENDOR=motorola
DEVICE=olympus

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | cut -f1 -d '#' | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    if [ "$COPY_FROM" = "" ]; then
        adb pull /system/$FILE $BASE/$FILE
    else
        cp -p "$COPY_FROM/$FILE" $BASE/$FILE
    fi
done

./setup-makefiles.sh
