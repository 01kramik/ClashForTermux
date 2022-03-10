#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
mkdir $HOME/.config
echo -e $b">"$w"Clash For Termux Non Root"
echo -e $b">"$w" prepare for installing dependencies ..."
sleep 2
echo -e $b">"$w" installing pacakge: "$g"clash"$w
pkg install clash
echo -e $b">"$w" installing pacakge: "$g"unzip"$w
pkg install unzip
echo -e $b">"$w" installing pacakge: "$g"micro"$w
pkg install micro
echo -e $b">"$w" installing modules: "$g"wget"$w
pkg install wget
echo -e $b">"$w" installing modules: "$g"whiptail"$w
pkg install whiptail
echo -e $b">"$w" successfully installing dependencies"
unzip .config.zip >&/dev/null
sleep 4
mv ClashForTermux $HOME/.config/ >&/dev/null
sleep 2
mv cft.sh $HOME >&/dev/null
cd
rm -r -f ClashForTermux >&/dev/null
clear
clash
