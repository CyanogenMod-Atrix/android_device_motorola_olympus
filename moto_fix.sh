#!/system/bin/sh
export PATH=/system/xbin:$PATH

if [ ! -f /system/etc/dbus.conf ]
then
	busybox touch /data/dbus.conf
	busybox chmod 777 /data/dbus.conf
	busybox mount -o remount,rw thing /system
	busybox ln -s /data/dbus.conf /system/etc/dbus.conf
	busybox mount -o remount,ro thing /system
	echo "Created dbus.conf"
else
	echo "dbus.conf already exists"
fi
