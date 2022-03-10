#!/bin/bash

clash -t -d $HOME/.config/clash -f $HOME/.config/clash/config.yaml 2>&1
clear
screen -dmS v2 clash &
for i in $(seq 1 100)
do
    sleep 0.1 
    echo $i
done | whiptail --title 'Start Clash' --gauge 'Connecting...' 6 60 0
status=$(cat $HOME/.config/clash/run/run.logs)
display_result () {
 dialog --title "Status Tunnels" \
        --no-collapse \
        --msgbox "$status" 0 0
}
status=$(cat $HOME/.config/clash/run/run.logs)
display_result
xdg-open "http://127.0.0.1:9090/ui/#/proxies" & exit
;;
esac
