#!/bin/bash

# create folder /opt/oss/bin
sudo mkdir -p /opt/oss/bin

# move file from folder oss_datasintes/bin to /opt/oss/bin/

sudo mv ~/oss_datasintesa/bin/* /opt/oss/bin/

# define start function
echo 'start() { /opt/oss/bin/start "$@"; }' >> ~/.bashrc
# define stop funtion
echo 'stop() { /opt/oss/bin/stop "$@"; }' >> ~/.bashrc
# define backup function
echo 'backup() { /opt/oss/bin/backup "$@"; }' >> ~/.bashrc
# apply changes
exec bash

# output
echo "Setup Completed"