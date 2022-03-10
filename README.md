# Clash For Termux Without Root

# Tampilan
[![ZEROSSL](https://i.ibb.co/9ckxPFK/275280701-1017928129071608-6754365807402039988-n.jpg)](https://t.me/zerossl/) 

# Install
- pkg update  

- pkg install git

- git clone https://github.com/zerossl/ClashForTermux

- cd ClashForTermux && bash install.sh

# Edit Config.yaml
- Format Protocol V2Ray
-   name: "Vmess_Server"
-   server: HOST_SERVER
-   port: 443
-   type: vmess
-   uuid: ISI_UUID
-   alterId: 0
-   cipher: auto
-   tls: true
-   skip-cert-verify: true
-   network: ws
-   ws-opts:
-     path: /vvip
-     headers:
-       Host: BUG_SNI

-   name: "Trojan_Server"
-   type: trojan
-   server: HOST_SERVER
-   port: 443
-   password: PASS_SERVER
-   udp: true
-   sni: BUG_SNI
-   skip-cert-verify: true
    
# Running Clash
- Sebelum di running dahulukan lah, edit condif
- Command :
- micro .config/clash/config.yaml

# Open Yacd-Dashboard
- Buka Chrome
- http://127.0.0.1:9090/ui/#/proxies

# Setting IPTABLE Without Root
- Buka pengaturan jaringan
- masuk ke Access Point Names (APN)
- APN : Bebas (Reccomended : internet)
- Proxy : 127.0.0.1
- Port : 7890, yang dimana port berasal dari config.yaml yang bernama mixed-port

