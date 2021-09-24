function wificonnections
ls /etc/NetworkManager/system-connections/
echo "What network password would you like?"
read network
sudo cat /etc/NetworkManager/system-connections/$network
end
