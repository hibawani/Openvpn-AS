# OpenVPN Access Server With Unlimited Licence
##### Server Requirement: **Centos 7 x86_64**

### Installation

```sh
cd /tmp/ && yum install git -y && git clone https://github.com/hibawani/Openvpn-AS && cd Openvpn-AS/ && sed -i -e 's/\r$//' centos7.sh && chmod 755 centos7.sh && ./centos7.sh
```
> Project Short Link: http://git.io/vpn-as

> Requirements:

```
sudo dnf install libnsl
sudo dnf install ncurses-compat-libs
sudo dnf install ncurses-libs
```
