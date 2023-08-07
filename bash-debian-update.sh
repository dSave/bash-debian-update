#!/bin/bash

echo "
sudo apt update:
"
sudo apt update


echo "
sudo apt list --upgradable:
"
sudo apt list --upgradable


echo "
sudo apt dist-upgrade -y:
"
sudo apt dist-upgrade -y


echo "
sudo apt autoremove -y:
"
sudo apt autoremove -y


echo "
sudo apt updateflatpak update -y:
"
flatpak update -y

