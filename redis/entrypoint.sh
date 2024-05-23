#!/bin/sh

# Enable memory overcommit
echo "vm.overcommit_memory=1" >> /etc/sysctl.conf
sysctl -p

# Start Redis
exec redis-server