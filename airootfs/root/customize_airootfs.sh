#!/bin/bash
chmod 700 /root
sed -i 's/#\(PermitRootLogin \).\+/\1yes/' /etc/ssh/sshd_config
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf
sed -i 's/#\(HandleSuspendKey=\)suspend/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleHibernateKey=\)hibernate/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleLidSwitch=\)suspend/\1ignore/' /etc/systemd/logind.conf
#systemctl enable pacman-init.service choose-mirror.service
#systemctl set-default multi-user.target
#systemctl enable sddm.service
#nano /etc/sudoers
#useradd -m -G wheel user
# Do not forget to add a password, otherwise you will not be able to access sudo later.
#passwd user
# This next step is the most important: it will permit us to "pause" the mkarchiso process and customize it regarding our needs.
#su user
pacman -Sy
pacman-key --init
pacman-key --populate archlinux mylastarch
pacman-key --lsign-key C8B25E49B0428123