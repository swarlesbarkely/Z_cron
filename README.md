Z Cron
===============

* Sets up cron on Android. Tested on Galaxy Nexus 4.4.4. Put the scripts you want to run in the the proper folder (minutely, hourly, or daily).


Cron Info
=========

[minute] [hour of the day] [day of month] [month] [day of week] [your command here]

Use a * to represent every minute/hour/day/week/month.

Ex. This will run every day at 4:00 am and 4:30 am:

0,30 4 * * * echo "Go back to sleep"
