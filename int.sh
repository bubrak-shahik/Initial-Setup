 #!/bin/bash
echo "
─────█─▄▀█──█▀▄─█──────────█─▄▀█──█▀▄─█──────────█─▄▀█──█▀▄─█───────
────▐▌──────────▐▌────────▐▌──────────▐▌────────▐▌──────────▐▌──────  
────█▌▀▄──▄▄──▄▀▐█────────█▌▀▄──▄▄──▄▀▐█────────█▌▀▄──▄▄──▄▀▐█─────
───▐██──▀▀──▀▀──██▌──────▐██──▀▀──▀▀──██▌──────▐██──▀▀──▀▀──██▌──── 
──▄████▄──▐▌──▄████▄────▄████▄──▐▌──▄████▄────▄████▄──▐▌──▄████▄──  

"
echo "Choose A Way:

Bubrak (ѕ¢σяρισ-♏ 👹)

1) Update and Upgrade Packages 
2) Install Checkra1n JailBreak Tool
3) Install Team Viewer
4) Install Sub Lime
5) Instal Visual Studio (It will ask Password 3 times)
0) Exit
"

x=0

while [$x=0]

read -p "Enter A Value:" Value

do
	case "$Value" in 
	1)
        sudo apt update && sudo apt upgrade -y
	sudo apt --fix-missing install
	sudo apt --fix-broken install	
	x=0
	exit
	;;
	2)	
	echo "deb https://assets.checkra.in/debian /" | sudo tee -a /etc/apt/sources.list
	sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
	sudo apt update
	sudo apt-get install libirecovery3
	sudo apt-get install checkra1n
	x=0
	exit
	;;
	3)
	wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
	sudo apt install ./teamviewer_amd64.deb
	x=0
	exit
	;;
	4)
	sudo apt update	
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
	sudo apt update
	sudo apt install sublime-text
	x=0
	exit	
	;;
	5)
	sudo apt update	&& sudo apt upgrade -y
	sudo apt install snapd
	systemctl enable --now snapd apparmor #it will ask 3 time password	
	sudo snap install --classic code
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gp
	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt-get install apt-transport-https
	sudo apt-get update
	sudo apt-get install code
	x=0	
	exit	
	;;
	0)
	exit
	;;
	*)
	echo "CHOOSE A VALID OPTION"
	x=0
	
	esac
done
