#!/bin/bash

NETWORK_PATH="/etc/sysconfig/network-scripts"

# Sprawdź, czy katalog istnieje
if [ ! -d "$NETWORK_PATH" ]; then
    echo "Katalog $NETWORK_PATH nie istnieje. Sprawdź ścieżkę."
    exit 1
fi


CONFIG_FILE_ETH0="${NETWORK_PATH}/ifcfg-eth0"
echo "Tworzenie lub nadpisywanie pliku $CONFIG_FILE_ETH0"
echo "DEVICE=eth0" > "$CONFIG_FILE_ETH0"
echo "BOOTPROTO=dhcp" >> "$CONFIG_FILE_ETH0"
echo "ONBOOT=yes" >> "$CONFIG_FILE_ETH0"


CONFIG_FILE_ETH1="${NETWORK_PATH}/ifcfg-eth1"
echo "Tworzenie lub nadpisywanie pliku $CONFIG_FILE_ETH1"
echo "DEVICE=eth1" > "$CONFIG_FILE_ETH1"
echo "BOOTPROTO=static" >> "$CONFIG_FILE_ETH1"
echo "ONBOOT=yes" >> "$CONFIG_FILE_ETH1"
echo "IPADDR=10.0.0.3" >> "$CONFIG_FILE_ETH1"      # Adres IP dla eth1
echo "PREFIX=24" >> "$CONFIG_FILE_ETH1"     # Maska podsieci




CONFIG_FILE_ETH2="${NETWORK_PATH}/ifcfg-eth2"
echo "Tworzenie lub nadpisywanie pliku $CONFIG_FILE_ETH2"
echo "DEVICE=eth2" > "$CONFIG_FILE_ETH2"
echo "BOOTPROTO=static" >> "$CONFIG_FILE_ETH2"
echo "ONBOOT=yes" >> "$CONFIG_FILE_ETH2"
echo "IPADDR=192.168.6.128" >> "$CONFIG_FILE_ETH2"      # Adres IP dla eth2
echo "PREFIX=25" >> "$CONFIG_FILE_ETH2"     # Maska podsieci




