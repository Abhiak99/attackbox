#!/bin/bash 


##### Auto Update and Upgrade 

sudo apt update && sudo apt upgrade -y

##### Tools 

# net-tools

sudo apt install net-tools

# autorecon tools

sudo apt install seclists curl dnsrecon enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

# Golang
sudo apt install wget

wget https://go.dev/dl/go1.19.linux-amd64.tar.gz -O lol.gz 
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf lol.gz



## Go version 

echo $(go version)


## 