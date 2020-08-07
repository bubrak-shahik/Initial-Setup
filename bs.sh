#!/bin/bash
echo "
─────█─▄▀█──█▀▄─█──────────█─▄▀█──█▀▄─█──────────█─▄▀█──█▀▄─█───────
────▐▌──────────▐▌────────▐▌──────────▐▌────────▐▌──────────▐▌──────  
────█▌▀▄──▄▄──▄▀▐█────────█▌▀▄──▄▄──▄▀▐█────────█▌▀▄──▄▄──▄▀▐█─────
───▐██──▀▀──▀▀──██▌──────▐██──▀▀──▀▀──██▌──────▐██──▀▀──▀▀──██▌──── 
──▄████▄──▐▌──▄████▄────▄████▄──▐▌──▄████▄────▄████▄──▐▌──▄████▄──  

"
echo "Choose A Way:

1) Update and Upgrade Packages
2) Fix Missing Install
3) Fix Broken Install
4) Auto Remove Packages
5) Instal Visual Studio (It will ask 3 time password)
0) Exit
"

x=0

while [$x = 0 ]

read -p "Enter A Value:" Value

do
	case "$Value" in 
	1)
        sudo apt update && sudo apt upgrade -y
	x=0
	exit
	;;
	2)	
	git clone https://github.com
	x=0
	exit
	;;
	3)
	sudo apt --fix-broken install
	x=0
	exit
	;;
	4)
	sudo apt autoremove
	x=0
	exit	
	;;
	5)
	sudo apt update	
	sudo apt install snapd
	systemctl enable --now snapd apparmor #it will ask 3 time password	
	sudo snap install --classic code
	x=0	
	exit	
	;;
	0)
	exit
	;;
	*)
	echo "LOL LOL LOL LOL"
	x=0
	
	esac
done
