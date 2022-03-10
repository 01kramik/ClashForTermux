#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
mkdir $HOME/.config/clash
echo -e $b"➤ "$w"Clash For Termux Non Root"
echo -e $b"➤ "$w" prepare for installing dependencies ..."
sleep 2
echo -e $b"➤ "$w" installing pacakge: "$g"clash"$w
pkg install clash
echo -e $b"➤ "$w" installing pacakge: "$g"unzip"$w
pkg install unzip
echo -e $b"➤ "$w" installing pacakge: "$g"micro"$w
pkg install micro
echo -e $b"➤ "$w" installing modules: "$g"wget"$w
pkg install wget
echo -e $b"➤ "$w" installing modules: "$g"whiptail"$w
pkg install whiptail
echo -e $b"➤ "$w" successfully installing dependencies"
cd $HOME/ClashForTermux
sleep 2
echo -e $b"➤ "$w" coppying yacd-dashbord: "$g"yacd"$w
cp yacd-gh-pages.zip /data/data/com.termux/files/home/.config/clash
sleep 2
echo -e $b"➤ "$w" coppying config.yaml: "$g"config"$w
cp config.yaml /data/data/com.termux/files/home/.config/clash
sleep 2
cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting yacd-dashbord: "$g"yacd"$w
unzip yacd-gh-pages.zip >&/dev/null
sleep 3
rm -r -f yacd-gh-pages.zip >&/dev/null
sleep 2
cd $HOME/ClashForTermux
mv cft.sh $HOME >&/dev/null
cd
rm -r -f ClashForTermux >&/dev/null
clear
