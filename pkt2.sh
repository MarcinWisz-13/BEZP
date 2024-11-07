#!/bin/bash

NETWORK_PATH="/etc/sysconfig/network-scripts"

# Sprawdź, czy katalog istnieje
if [ ! -d "$NETWORK_PATH" ]; then
    echo "Katalog $NETWORK_PATH nie istnieje. Sprawdź ścieżkę."
    exit 1
fi




CONFIG_FILE_ETH2="${NETWORK_PATH}/ifcfg-eth2"
echo "Tworzenie lub nadpisywanie pliku $CONFIG_FILE_ETH2"
echo "DEVICE=eth2" > "$CONFIG_FILE_ETH2"
echo "BOOTPROTO=static" >> "$CONFIG_FILE_ETH2"
echo "ONBOOT=yes" >> "$CONFIG_FILE_ETH2"
echo "IPADDR=192.168.6.130" >> "$CONFIG_FILE_ETH2"      # Adres IP dla eth2
echo "PREFIX=25" >> "$CONFIG_FILE_ETH2"     # Maska podsieci
echo "GATEWAY=192.168.6.129" >> "$CONFIG_FILE_ETH2"       
echo "DNS1=8.8.8.8" >> "$CONFIG_FILE_ETH2"   



