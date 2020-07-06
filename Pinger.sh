#!/bin/bash

#Made this script to learn better bash.I know that is bad and useless but I'm a beginner and improving myself everyday:)
#Got inspired from other scripts I saw on github(especially linux_choice)
#Author: Gluhaia_Muha

#Banner
banner() 
{
printf "\e[033;31m   _ _ _ _     _ _    _         _    _ _ _ _ _ _    _ _ _ _ _    _ _ _        \e[0m\n"
printf "\e[033;31m  |   __   |  |   |  | \       | |  |  _ _ _ _  |  |         |  |   _ \       \e[0m\n"
printf "\e[033;31m  |  |  |  |  |   |  |  \      | |  | |       | |  |  _ _ _ _|  |  | | \      \e[0m\n"
printf "\e[033;31m  |  |__|  |  |   |  | | \     | |  | |       |_|  | |          |  |_|  \     \e[0m\n"
printf "\e[033;31m  |   _ _ _|  |   |  | |\ \    | |  | |            | |_ _ _ _   |       /     \e[0m\n"
printf "\e[033;31m  |  |        |   |  | | \ \   | |  | |            |         |  |      /      \e[0m\n"
printf "\e[033;31m  |  |        |   |  | |  \ \  | |  | |  _ _ _ _   |  _ _ _ _|  |  |\  \      \e[0m\n"
printf "\e[033;31m  |  |        |   |  | |   \ \ | |  | | |_ _ _  |  | |          |  | \  \     \e[0m\n"
printf "\e[033;31m  |  |        |   |  | |    \ \| |  | |       | |  | |_ _ _ _   |  |  \  \    \e[0m\n"
printf "\e[033;31m  |  |        |   |  | |     \   |  | |_ _ _ _| |  |         |  |  |   \  \   \e[0m\n"
printf "\e[033;31m  |__|        |_ _|  |_|      \__|  |_ _ _ _ _ _|  |_ _ _ _ _|  |__|    \__\  \e[0m\n"
printf "\n"
printf "\e[1;41m\e[41m Just A Simple Pinger That I Made To Learn Bash "
printf "\n"
printf "\e[1;41m\e[41m Author: Gluhaia_Muha \e[0m\n"
printf "\n"
}

banner 

#Menu
menu()
{
echo "[1] Ping scan"
echo "[2] Ping of Death"
echo "[3] Nmap All Port Scan"
echo ""
}
#Ping Scan
read -p "Enter the IP address: " Ipaddress
menu

read -p "Choose an option: " option
	if [[ $option == 1 ]] 
	then
		ping $Ipaddress                #Simple Ping
	elif [[ $option == 2 ]]
	then	
		ping $Ipaddress -s 65507       #Ping of Death
	else 
		printf "\e[1;41m\e[41m I need root Privileges for this Option \e[0m\n"
		sudo nmap -vv -sV --mtu 24 -p- $Ipaddress          #Nmap Ping Scan(passes simple firewalls)
	fi 