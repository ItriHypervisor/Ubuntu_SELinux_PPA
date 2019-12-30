#
# Regular cron jobs for the ubuntuselinuxconfigtool package
#
0 4	* * *	root	[ -x /usr/bin/ubuntuselinuxconfigtool_maintenance ] && /usr/bin/ubuntuselinuxconfigtool_maintenance
