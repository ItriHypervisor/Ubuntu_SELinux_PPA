#
# Regular cron jobs for the kernelselinux package
#
0 4	* * *	root	[ -x /usr/bin/kernelselinux_maintenance ] && /usr/bin/kernelselinux_maintenance
