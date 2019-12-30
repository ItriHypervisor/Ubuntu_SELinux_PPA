#
# Regular cron jobs for the selinuxpack package
#
0 4	* * *	root	[ -x /usr/bin/selinuxpack_maintenance ] && /usr/bin/selinuxpack_maintenance
