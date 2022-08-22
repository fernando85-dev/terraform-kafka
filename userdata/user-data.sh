#!/bin/bash

# Disable firewalld
systemctl stop firewalld && systemctl disable firewalld

# Add user Ansible

useradd -m -p "paY70NvRzQcEk" -s /bin/bash ansible

# Add user Ansible to admin sudo group

usermod -G wheel ansible

# Permit password authentication

sed -i 's/PasswordAuthentication\ no/PasswordAuthentication\ yes/g' /etc/ssh/sshd_config

# Restart sshd

systemctl restart sshd
