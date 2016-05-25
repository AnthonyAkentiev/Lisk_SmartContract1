#! /bin/bash

sudo apt-get update
sudo apt-get install curl build-essential python git htop

curl -sL "https://downloads.lisk.io/scripts/setup_postgresql.Linux" | bash -
sudo -u postgres createuser --createdb --password $USER
createdb lisk_test

curl -sL https://deb.nodesource.com/setup_0.12 | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install grunt-cli -g
sudo npm install bower -g

git clone https://github.com/LiskHQ/lisk.git
cd lisk
npm install

wget https://downloads.lisk.io/lisk-node/lisk-node-Linux-x86_64.tar.gz
# will extract nodejs folder
tar -zxvf lisk-node-Linux-x86_64.tar.gz

git submodule init
git submodule update

# this is submodule https://github.com/LiskHQ/lisk-ui
cd public
npm install
bower install
grunt release


