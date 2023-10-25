#!/bin/bash

# create folder /opt/oss/bin
sudo mkdir -p /opt/oss/bin

# move file from folder oss_datasintes/bin to /opt/oss/bin/

sudo cp ~/oss_datasintesa/bin/* /opt/oss/bin/

# define start function
echo 'start() {
    /opt/oss/bin/start "$@"
}' >> ~/.bashrc

# define stop funtion
echo 'start() {
    /opt/oss/bin/stop "$@"
}' >> ~/.bashrc

# define backup function
echo 'start() {
    /opt/oss/bin/backup "$@"
}' >> ~/.bashrc

# apply changes
source ~/.bashrc

# output
echo "Setup Completed"