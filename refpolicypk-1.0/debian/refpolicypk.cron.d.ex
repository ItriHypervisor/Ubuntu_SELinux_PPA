#
# Regular cron jobs for the refpolicypk package
#
0 4	* * *	root	[ -x /usr/bin/refpolicypk_maintenance ] && /usr/bin/refpolicypk_maintenance
