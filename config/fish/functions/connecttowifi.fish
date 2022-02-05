function wificonnect
echo "network name: "
read network
echo "password: "
read pswd
nmcli device wifi connect $network password $pswd
end
