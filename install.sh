#!/bin/bash
##
sudo cp ./sliver.service /etc/systemd/system/sliver.service
echo "[+] Service file ready"
sudo wget https://github.com/BishopFox/sliver/releases/download/v1.5.39/sliver-client_linux -O /root/sliver-client
sudo wget https://github.com/BishopFox/sliver/releases/download/v1.5.39/sliver-client_linux.sig -O /root/sliver-client.sig
sudo chmod +x /root/sliver-client
echo "[+] Downloaded client"
sudo wget https://github.com/BishopFox/sliver/releases/download/v1.5.39/sliver-server_linux -O /root/sliver-server
sudo wget https://github.com/BishopFox/sliver/releases/download/v1.5.39/sliver-server_linux.sig -O /root/sliver-server.sig
sudo chmod +x /root/sliver-server
echo "[+] Downloaded server"
sudo cp /root/sliver-client /usr/bin/sliver
sudo cp /root/sliver-server /usr/bin/sliver-server
sudo chmod +x /usr/bin/sliver
sudo chmod +x /usr/bin/sliver-server
sudo systemctl enable sliver.service
sudo systemctl start sliver.service
echo "[+] Everything reay"
