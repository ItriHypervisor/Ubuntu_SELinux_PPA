#!/bin/bash
timestamp=$(date +%s)

dmesg > /tmp/fulllog_$timestamp
journalctl -b >> /tmp/fulllog_$timestamp
cat /tmp/fulllog_$timestamp | audit2allow -M tmp_module_$timestamp
sudo semodule -i tmp_module_$timestamp.pp
