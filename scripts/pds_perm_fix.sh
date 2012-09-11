#!/system/bin/sh
export PATH=/system/xbin:$PATH

#make a copy of pds in /dev
dd if=/dev/block/mmcblk0p3 of=/dev/pds.img

#mount the fake pds
/system/xbin/losetup /dev/block/loop0 /dev/pds.img
/system/xbin/busybox mount -o rw /dev/block/loop0 /pds

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

echo "Backed up, permission fixed and mounted PDS"
