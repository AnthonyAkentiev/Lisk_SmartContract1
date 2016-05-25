#! /bin/bash

curl -sL https://downloads.lisk.io/scripts/setup_docker.Linux | sudo -E bash -
sudo apt-get install -y docker-engine

docker pull lisk/mainnet

docker run -d --restart=always -p 0.0.0.0:8000:8000 lisk/mainnet

# Upon successful completion, you will have a running Lisk node with an up-to-date snapshot of the blockchain. The container is configured to automatically restart upon reboot of the server or any occurrence of an error.
# To access the Lisk web client, open: http://192.168.99.100:8000/ if on the mainnet (once Lisk is launched) or http://192.168.99.100:7000/ if on a testnet, replacing 192.168.99.100 with your public IP address if you have one.
