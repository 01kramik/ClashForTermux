#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
mkdir $HOME/.config/clash
echo -e $b"➤ "$w"Clash For Termux Non Root"
echo ""
echo -e $b"➤ "$w" prepare for installing dependencies ..."
echo ""
sleep 2
echo -e $b"➤ "$w" installing pacakge: "$g"clash"$w
echo ""
pkg install clash
echo -e $b"➤ "$w" installing pacakge: "$g"unzip"$w
echo ""
pkg install unzip
echo -e $b"➤ "$w" installing pacakge: "$g"micro"$w
echo ""
pkg install micro
echo -e $b"➤ "$w" installing modules: "$g"wget"$w
echo ""
cd $HOME/ClashForTermux
sleep 2
echo -e $b"➤ "$w" coppying yacd-dashbord: "$g"yacd"$w
echo ""
cp yacd-gh-pages.zip /data/data/com.termux/files/home/.config/clash
sleep 2
echo -e $b"➤ "$w" coppying config.yaml: "$g"config"$w
echo ""
cp config.yaml /data/data/com.termux/files/home/.config/clash
sleep 2
cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting yacd-dashbord: "$g"yacd"$w
echo ""
unzip yacd-gh-pages.zip
sleep 2
rm -r -f yacd-gh-pages.zip
sleep 2
cd
rm -r -f ClashForTermux
clash
clear
