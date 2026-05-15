#!/usr/bin/env bash
# shellcheck disable=SC2034

echo "get the mylastarch key in"
sudo pacman-key --recv-keys C8B25E49B0428123 --keyserver keyserver.ubuntu.com
echo "Lsign the keys"
sudo pacman-key --lsign-key C8B25E49B0428123

echo "###################################################################"
echo "###################        DONE            ########################"
echo "###################################################################"
