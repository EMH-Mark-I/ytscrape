#!/bin/bash

read -s -n 1 -p "Press any key to begin..."

#Set variables to make script portable.
path=`realpath $0`
installdir=`dirname $path`
cd $installdir

if [ -d "ytscrape_contents/" ];
then
	echo ""
	echo "Removing ytscrape_contents/"
	rm -rf ytscrape_contents/
fi

	echo ""
	echo "Installing ytscrape"
	mkdir -p ytscrape_contents/ &&
	cd ytscrape_contents/ &&

	#Check CPU type
	if [ `getconf LONG_BIT` = "64" ]
	then
		wget https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip
	else
		wget https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_darwin_386.zip
	fi

	unzip pup_v0.4.0_linux_* &&
	mkdir -p ~/.local/bin/ &&
	cp pup ~/.local/bin &&
	cd .. &&
	cp -R ytscrape/* ~/.local/bin &&
	rm -rf ytscrape_contents/
	echo ""
	echo "Don't forget to install mpv player and youtube-dl!"
	read -s -n 1 -p "Install complete. Press any key to exit..."
	echo ""
	clear
exit 0
