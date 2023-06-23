#!/bin/bash 


##### Auto Update and Upgrade 

sudo apt update && sudo apt upgrade -y

##### Tools 

# net-tools

sudo apt install net-tools

# autorecon tools

sudo snap install seclists curl enum4linux feroxbuster impacket tnscmd10g
sudo apt install gobuster dnsrecon nbtscan nikto nmap onesixtyone redis-tools smbclient smbmap snmp sslscan sipvicious whatweb wkhtmltopdf


#### oscanner <To be Updated>



## Golang Installation



sudo apt install wget

wget https://go.dev/dl/go1.19.linux-amd64.tar.gz -O lol.gz 
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf lol.gz

echo $(go version)

# echo "export GOROOT=/usr/local/go
# export GOPATH=$HOME/go
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> $HOME/.profile

## echo "export GOROOT=/usr/local/go
## export GOPATH=$HOME/go
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> $HOME/.bashrc

source ~/.bashrc
source ~/.profile

rm lol.gz*

### there is an error of <pcap.h> no such file or directory so I found a fix 

sudo apt-get install libpcap-dev

# OR <uncomment> below 
#sudo apt-get install libpcap0.8-dev


## subfinder

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest


## assetfinder 


go install -v github.com/tomnomnom/assetfinder@latest


## httpx

sudo snap install httpx

## naabu

go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

## amass

sudo snap install amass

## ffuf 
go install -v github.com/ffuf/ffuf@latest

## Webanalyzer go
go install -v github.com/rverton/webanalyze/cmd/webanalyze@latest
webanalyze -update

## nuclei 

go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest


##  API Hacking Requirements 

pip3 install mitmproxy2swagger termcolor cprint pycryptodomex requests

## Crobat from SONAR Project

go install -v github.com/cgboal/sonarsearch/cmd/crobat



