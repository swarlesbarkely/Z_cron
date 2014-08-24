#!/system/bin/sh

mount -o rw,remount /system;

mkdir /etc/cron.d/;
mkdir /etc/cron.d/crontabs/;
cp /data/media/0/Z_cron/cron /etc/init.d;
cp /data/media/0/Z_cron/root /etc/cron.d/crontabs;
cp /data/media/0/Z_cron/trim.sh /etc/cron.d;


chmod 755 /etc/init.d/cron;

chmod 755 /etc/cron.d;

chmod 755 /etc/cron.d/crontabs;

chmod 755 /etc/cron.d/crontabs/root;

mount -o ro,remount /system;
