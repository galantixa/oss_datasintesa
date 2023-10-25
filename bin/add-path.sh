#!/bin/bash

# create folder /opt/oss/bin
sudo mkdir -p /opt/oss/bin

# move file from folder oss_datasintes/bin to /opt/oss/bin/
sudo cp ~/oss_datasintesa/bin/* /opt/oss/bin/

# define start function
echo 'bin/start() {
    /opt/oss/bin/start "$@"
}' >> ~/.bashrc

# define stop function
echo 'bin/stop() {
    /opt/oss/bin/stop "$@"
}' >> ~/.bashrc

# define backup function
echo '/bin/backup() {
    /opt/oss/bin/backup "$@"
}' >> ~/.bashrc

echo 'export PATH=$PATH:/opt/oss/bin' >> ~/.bashrc
# apply changes
source ~/.bashrc

# output
echo "Setup Completed"
