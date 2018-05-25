#!/bin/bash

read -s -n 1 -p "Press any key to begin..."

#Get location
path=`realpath $0`
installdir=`dirname $path`

if [ -d "$installdir/ytscrape_contents/" ];
then
	echo ""
	echo "Removing $installdir/ytscrape_contents/"
	rm -rf $installdir/ytscrape_contents/
fi

	echo ""
	echo "Installing ytscrape"
	mkdir -p script/ytscrape_contents/ &&
	cd script/ytscrape_contents/ &&

	#Check CPU type
	if [ `getconf LONG_BIT` = "64" ]
	then
		wget https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip
	else
		wget https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_darwin_386.zip
	fi

	unzip pup_v0.4.0_linux_* &&
	mkdir -p ~/bin/ &&
	cp pup ~/bin &&
	cd ../.. &&
	cp -R ytscrape/* ~/bin &&
	rm -rf script/ytscrape_contents/
	echo ""
	echo "Don't forget to install mpv player and youtube-dl!"
	read -s -n 1 -p "Install complete. Press any key to exit..."

exit 0
