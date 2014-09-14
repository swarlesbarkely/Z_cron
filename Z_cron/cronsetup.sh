#!/system/bin/sh

mount -o rw,remount /system;

### Make proper directives ###

mkdir /etc/cron.d/;
mkdir /etc/cron.d/crontabs/;
mkdir /etc/cron.d/crontabs/minutely/;
mkdir /etc/cron.d/crontabs/daily/;
mkdir /etc/cron.d/crontabs/hourly/;

### Move files ###

cp /sdcard/Z_cron/cron /etc/init.d;
cp /sdcard/Z_cron/root /etc/cron.d/crontabs;
cp /sdcard/Z_cron/minutely/* /etc/cron.d/minutely;
cp /sdcard/Z_cron/daily/* /etc/cron.d/daily;


chmod 755 /etc/init.d/cron;

chmod 755 /etc/cron.d/*;

mount -o ro,remount /system;
