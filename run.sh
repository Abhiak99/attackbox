#!/bin/bash 


##### Auto Update and Upgrade 

sudo apt update && sudo apt upgrade -y

##### Tools 

# net-tools

sudo apt install net-tools

# autorecon tools

sudo apt install seclists curl dnsrecon enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

## Golang Installation

sudo apt install wget

wget https://go.dev/dl/go1.19.linux-amd64.tar.gz -O lol.gz 
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf lol.gz

echo $(go version)

echo "export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> $HOME/.profile

echo "export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> $HOME/.bashrc

source ~/.bashrc
source ~/.profile


## subfinder

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest


## assetfinder 


go install -v github.com/tomnomnom/assetfinder@latest


## httpx

sudo snap install httpx

## naabu

go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

