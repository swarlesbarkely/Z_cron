#!/system/bin/sh

mount -o rw,remount /system;

mkdir /etc/cron.d/;
mkdir /etc/cron.d/crontabs/;
cp /sdcard/Z_cron/cron /etc/init.d;
cp /sdcard/Z_cron/root /etc/cron.d/crontabs;
cp /sdcard/Z_cron/trim.sh /etc/cron.d;


chmod 755 /etc/init.d/cron;

chmod 755 /etc/cron.d;

chmod 755 /etc/cron.d/crontabs;

chmod 755 /etc/cron.d/crontabs/root;

mount -o ro,remount /system;
