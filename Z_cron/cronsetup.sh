#!/system/bin/sh

mount -o rw,remount /system;

### Make proper directives ###

mkdir /etc/cron.d/;

### Move files ###

cp /data/media/0/Z_cron/cron /etc/init.d;
cp -R /data/media/0/Z_cron/hourly /etc/cron.d/hourly;
cp -R /data/media/0/Z_cron/daily /etc/cron.d/daily;
cp -R /data/media/0/Z_cron/minutely /etc/cron.d/minutely;
cp -R /data/media/0/Z_cron/crontabs /etc/cron.d/crontabs;

chmod 755 /etc/init.d/cron;

chmod 755 /etc/cron.d;

chmod 755 /etc/cron.d/*;

chmod 755 /etc/cron.d/*/*;

mount -o ro,remount /system;
