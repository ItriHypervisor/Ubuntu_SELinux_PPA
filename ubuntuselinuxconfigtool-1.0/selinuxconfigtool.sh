#!/bin/bash

#Update grub
sudo sed -i -e 's/^GRUB_CMDLINE_LINUX=\"\(.*\)\".*/GRUB_CMDLINE_LINUX=\"\1 security=selinux selinux=1 log_buf_len=4M audit_backlog_limit=8192 audit_rate_limit=0\"/g' /etc/default/grub
sudo update-grub

#Remove apparmor
sudo systemctl stop apparmor
sudo systemctl disable apparmor
sudo apt-get purge -y apparmor

#Relabel
sudo setfiles -F /etc/selinux/refpolicy_monolithic/contexts/files/file_contexts /
