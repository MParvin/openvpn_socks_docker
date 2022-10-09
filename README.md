# openvpn_socks_docker
OpenVPN client + Shadowsocks server


## Installation

Copy .env.example to .env and edit it
```bash
cp .env.example .env
```

Copy your OpenVPN config file to ./openvpn/config
```bash
cp /path/to/your/config.ovpn ./client.ovpn
```


Build:
```
docker-compose build
```

Run:
```
docker-compose up -d
```

### Own OpenVPN server

If you want to use your own OpenVPN server, use the following steps:


#### Install OpenVPN server

You can install OpenVPN on a server with the following command:
```bash
curl -O- https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh && bash openvpn-install.sh
```

Copy client configuration files to your local machine:
```bash
scp USER@SERVER_IP:/root/client.ovpn .
```