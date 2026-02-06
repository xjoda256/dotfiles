#!/bin/bash
#################
## another ######
## ×Joda™ #######
## masterpiece ##
#################

ROOT=$(printf "$(hostnamectl hostname) $(df -h / |grep /dev/sda2 |cut -d ' ' -f '16')% 󰋊 ")
RAID=$(printf "kalameet $(df -h /mnt/raid |grep /dev/sdb |cut -d ' ' -f '15')% 󰋊 ")
#CAPRA=$(printf "capra $(df -h /mnt/capra |grep /dev/sdc |cut -d ' ' -f '14')% 󰋊 ")
CPU=$(sensors |grep Package |printf " $(cut -b '17,18,21,22')")
GPU=$(sensors |grep edge |printf "󰃽 $(cut -b '16,17,20,21')")
JF=$( 
	if
systemctl status jellyfin.service |grep -q "running"; then
printf "󰼁  "
else
	printf "󰼁  "
	fi
)
MC=$(
	if
		systemctl status minecraftd.service |grep -q "running"; then
		printf "󰍳  "
	else
		printf "󰍳  "
	fi
)

echo "${JF} ${MC} ${ROOT} ${RAID} ${GPU} ${CPU}"

