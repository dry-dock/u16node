#!/bin/bash -e

echo "================= Installing basic packages ==================="
apt-get update
apt-get install -y \
curl \

export NVM_VERSION=v0.33.9
echo "================= Installing NVM "$NVM_VERSION" ==================="
curl -sS https://raw.githubusercontent.com/creationix/nvm/"$NVM_VERSION"/install.sh | bash

# Set NVM_DIR so the installations go to the right place
export NVM_DIR="/root/.nvm"

# add source of nvm to .bashrc - allows to use nvm as a command
echo "source ~/.nvm/nvm.sh"

for file in /u16node/version/*;
do
  $file
done
