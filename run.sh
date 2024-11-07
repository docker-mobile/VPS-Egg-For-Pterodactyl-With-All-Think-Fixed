#!/bin/bash
# Ensure SSH service is running
service ssh start

# Run the selected OS
exec /sbin/init
