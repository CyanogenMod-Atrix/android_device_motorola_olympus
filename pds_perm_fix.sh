#!/system/bin/sh
export PATH=/system/xbin:$PATH

#make system r/w
/system/xbin/mount -o remount,rw /system

#make symlink for remountpds
/system/xbin/busybox ln -s /system/xbin/mount /system/bin/mount

#run crappy remountpds
/system/bin/remountpds -d /dev/block/mmcblk0p3 -m rw

cd /pds
#find and fix moto users first
/system/xbin/busybox find -user 9000 -exec chown 1000 {} \;
/system/xbin/busybox find -user 9003 -exec chown 1000 {} \;
/system/xbin/busybox find -user 9004 -exec chown 1000 {} \;
/system/xbin/busybox find -user 9007 -exec chown 1000 {} \;

#find and fix moto grps 
/system/xbin/busybox find -group 9000 -exec chgrp 1000 {} \;
/system/xbin/busybox find -group 9003 -exec chgrp 1000 {} \;
/system/xbin/busybox find -group 9004 -exec chgrp 1000 {} \;
/system/xbin/busybox find -group 9007 -exec chgrp 1000 {} \;
/system/xbin/busybox find -group 9009 -exec chgrp 1000 {} \;

#make system r/o again for safety
system/xbin/mount -o remount,ro /system

