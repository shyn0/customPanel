#!/bin/bash
#KellyShyno
#customPanel
#version: 2.2.2

chmod -R a+rx *;



banner()
{
clear;
sleep 0.16;
echo "";
echo -e '\e[1;31m                _                  ____                  _\e[0m';
echo -e '\e[1;31m  ___ _   _ ___| |_ ___  _ __ ___ |  _ \ __ _ _ __   ___| |\e[0m';
echo -e '\e[33m / __| | | / __| __/ _ \| |_ \ _ \| |_) / _` | |_ \ / _ \ |\e[0m';
echo -e '\e[33m| (__| |_| \__ \ || (_) | | | | | |  __/ (_| | | | |  __/ |\e[0m';
echo -e '\e[1;31m \___|\__,_|___/\__\___/|_| |_| |_|_|   \__,_|_| |_|\___|_|\e[0m';
echo "";
echo -e "\e[1;31mversion: 2.2.2\e[0m";
echo -e "\e[1;31mvk:\e[0m" "\e[1;4;35mhttps://vk.com/linuxkelly\e[0m";
echo "";
}



error()
{
clear; echo -e "\e[1;31mERROR: write the correct number..\e[0m"; sleep 0.6; panel;
}



input()
{
echo -en "\e[1;36m (\e[0m""\e[1;31mo\e[0m""\e[1;36m_\e[0m""\e[1;31m0\e[0m";
echo -en "\e[1;36m)\e[0m" "\e[1;31m> \e[0m";
}



installed() {
clear;
sleep 0.34;
echo "";
echo -e "\e[1;31m $name\e[0m" "\e[1;36minstalled\e[0m";
echo "";
echo -e "\e[1;35mrestart termux to see the changes of the panel\e[0m";
echo "";
sleep 0.5;
}



panel() {
banner;
echo -e "\e[1;33mEnter of the number to change the panel:\e[0m";
echo "";
echo -e '\e[1;31m| \e[0m'"\e[1;36m0\e[0m"'\e[1;31m | \e[0m'"\e[1;36mDefaultPanel\e[0m";
echo -e '\e[1;31m| \e[0m'"\e[1;36m1\e[0m"'\e[1;31m | \e[0m'"\e[1;36mClassicPanel\e[0m";
echo -e '\e[1;31m| \e[0m'"\e[1;36m2\e[0m"'\e[1;31m | \e[0m'"\e[1;36mCodingPanel\e[0m";
echo -e '\e[1;35m| \e[0m'"\e[1;31mu\e[0m"'\e[1;35m | \e[0m'"\e[1;35mupdate\e[0m";
echo -e '\e[1;35m| \e[0m'"\e[1;31mx\e[0m"'\e[1;35m | \e[0m'"\e[1;31mexit\e[0m";
echo "";
input;
 read pan

    case $pan in
0) rm -rf $HOME/.termux/termux.properties; name="DefaultPanel"; installed; ;;
1) rm -rf $HOME/.termux; bash ./data/panels/ClassicPanel.sh; name="ClassicPanel"; installed; ;;
2) rm -rf $HOME/.termux; bash ./data/panels/CodingPanel.sh; name="CodingPanel"; installed; ;;
"u") ./data/update/update.sh; panel; ;;
"x") echo ""; exit 0; ;;
*) error; ;;
    esac;
}
panel;
