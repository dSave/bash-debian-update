#!/bin/bash

err=0

echo "Date:"  >> bash-debian-update.log
date >> bash-debian-update.log
echo "
" >> bash-debian-update.log


echo "sudo apt update:
" >> bash-debian-update.log
sudo apt update >> bash-debian-update.log
let err=$?
echo "(1/6)"


echo "
sudo apt list --upgradable:
" >> bash-debian-update.log
sudo apt list --upgradable >> bash-debian-update.log
let err=err+$?
echo "(2/6)"


echo "
sudo apt dist-upgrade -y:
" >> bash-debian-update.log
sudo apt dist-upgrade -y >> bash-debian-update.log
let err=err+$?
echo "(3/6)"


echo  "
sudo apt autoremove -y:
" >> bash-debian-update.log
sudo apt autoremove -y >> bash-debian-update.log
let err=err+$?
echo "(4/6)"


echo "
sudo apt update --fix-missing:
" >> bash-debian-update.log
sudo apt update --fix-missing >> bash-debian-update.log
let err=err+$?
echo "(5/6)"


echo "
flatpak update -y:
" >> bash-debian-update.log
flatpak update -y >> bash-debian-update.log
let err=err+$?
echo "(6/6)"


echo "Значение err: $err" >> bash-debian-update.log
echo "

" >> bash-debian-update.log
