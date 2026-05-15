#!/usr/bin/env bash
# shellcheck disable=SC2034

echo "get the mylastarch key in"
sudo pacman-key --recv-keys C8B25E49B0428123 --keyserver hkp://ipv4.pool.sks-keyservers.net:11371

echo "Lsign the keys"
sudo pacman-key --lsign-key C8B25E49B0428123

echo "###################################################################"
echo "###################        DONE            ########################"
echo "###################################################################"
