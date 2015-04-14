#!/system/bin/sh

mount -o rw,remount /system;

dir=$(dirname -- "$0");

### Make proper directives ###

mkdir /etc/cron.d/;

### Move files ###

cp $dir/cron /etc/init.d;
cp -R $dir/hourly /etc/cron.d/hourly;
cp -R $dir/daily /etc/cron.d/daily;
cp -R $dir/minutely /etc/cron.d/minutely;
cp -R $dir/crontabs /etc/cron.d/crontabs;

### Fix permissions ###

chmod 755 /etc/init.d/cron;

chmod 755 /etc/cron.d;

chmod 755 /etc/cron.d/*;

chmod 755 /etc/cron.d/*/*;

mount -o ro,remount /system;
