#!/sbin/sh
# By Mohammad Afaneh, Afaneh92@xda
# wrapper to reboot Allwinner back to recovery
PATH=/sbin

echo -en "boot-recovery\0" > /dev/block/nandf; sync; reboot; killall recovery
