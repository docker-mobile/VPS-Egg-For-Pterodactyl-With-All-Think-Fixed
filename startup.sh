#!/bin/bash
# Install necessary packages
apt-get update && apt-get install -y openssh-server sudo

# Set root password
echo "root:a902012a" | chpasswd

# Start SSH service
service ssh start

# Ensure systemd 
  apt-get install -y systemd systemd-sysv
  service systemd start

# Keep container running
tail -f /dev/null
