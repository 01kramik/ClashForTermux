# Clash For Termux Without Root

# Install
- pkg update  

- pkg install git

- git clone https://github.com/lycoxz/ClashForTermux

- cd ClashForTermux && bash install.sh

# Edit Config.yaml
- Format Protocol V2Ray
- - name: "Vmess_Server"
    server: HOST_SERVER
    port: 443
    type: vmess
    uuid: ISI_UUID
    alterId: 0
    cipher: auto
    tls: true
    skip-cert-verify: true
    network: ws
    ws-opts:
      path: /vvip
      headers:
        Host: BUG_SNI

- - name: "Trojan_Server"
    type: trojan
    server: HOST_SERVER
    port: 443
    password: PASS_SERVER
    udp: true
    sni: BUG_SNI
    skip-cert-verify: true

# My Facebook
[![Muhammad Quillen](https://i.ibb.co/9ckxPFK/275280701-1017928129071608-6754365807402039988-n.jpg)](https://www.facebook.com/LyCoXyZ/) 
