#!/sbin/sh

# get out of recovery loop
# copy from suky for A820L
sleep 3
busybox dd if=/dev/zero bs=512 seek=264 count=1 conv=notrunc of=/dev/block/mmcblk0p10
# correct the time
sleep 2
a=`cat /sdcard/time/time`
chmod 0777 /sdcard/time/busybox
b=`/sdcard/time/busybox date +%s`
/sdcard/time/busybox date -s `/sdcard/time/busybox date +%Y%m%d%H%M.%S -D '%s' -d $(($a+$b))`
