#!/bin/bash 

#### KATANA ######
wget https://github.com/projectdiscovery/katana/releases/download/v1.1.2/katana_1.1.2_linux_386.zip -O katana.zip
echo A | unzip katana.zip
cp katana /usr/bin/ 

rm katana.zip 


#### SUBFINDER ######

wget https://github.com/projectdiscovery/subfinder/releases/download/v2.6.8/subfinder_2.6.8_linux_386.zip -O subfinder.zip
echo A | unzip subfinder.zip
cp subfinder /usr/bin/

rm subfinder.zip 

#### HTTPX #####

wget https://github.com/projectdiscovery/httpx/releases/download/v1.6.10/httpx_1.6.10_linux_386.zip -O httpx.zip
echo A | unzip httpx.zip 
cp httpx /usr/bin/ && cp httpx $(which httpx) 

rm httpx.zip 


#### NUCLEI ######
wget https://github.com/projectdiscovery/nuclei/releases/download/v3.3.9/nuclei_3.3.9_linux_386.zip -O nuclei.zip 
echo A | unzip nuclei.zip 
cp nuclei /usr/bin/ 

rm nuclei.zip 


##### GAU ##### 
wget https://github.com/lc/gau/releases/download/v2.2.4/gau_2.2.4_linux_386.tar.gz -O gau.tar.gz 
echo A | tar xvf gau.tar.gz 
cp gau /usr/bin/

rm gau.tar.gz 


nuclei -ut -silent 

snap install seclists
apt install tor -y


###### TruffleHog ######
wget https://github.com/trufflesecurity/trufflehog/releases/download/v3.88.12/trufflehog_3.88.12_linux_amd64.tar.gz -O trufflehog.tar.gz
echo A | tar xvf trufflehog.tar.gz
cp trufflehog /usr/bin/

rm trufflehog.tar.gz



echo 'threads = 6
verbose = false
retries = 15
subdomains = false
parameters = false
providers = ["wayback","commoncrawl","otx","urlscan"]' > /root/.gau.toml 



git clone https://github.com/ameenmaali/urldedupe.git
cd urldedupe
cmake CMakeLists.txt
make
cp urldedupe /usr/bin/
cd ..

