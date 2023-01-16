#!/bin/bash

# update package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

#Install necessary packages
sudo apt install curl wget git -y
sudo apt install apt-transport-https ca-certificates gnupg-agent software-properties-common -y

#Install zsh
sudo apt-get install zsh
sudo apt-get install powerline fonts-powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# install GO
wget https://go.dev/dl/go1.19.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile

# install Python
sudo apt install python3 python3-pip -y

# install Node.js and npm
sudo apt install nodejs npm -y

#install crowdsec
curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
sudo apt install crowdsec -y

# Install default Crowdsec bouncer
sudo apt install crowdsec-firewall-bouncer-iptables crowdsec-firewall-bouncer-nftables -y

# install Cockpit
sudo apt install cockpit -y
