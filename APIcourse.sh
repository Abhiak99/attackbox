sudo apt update -y 
sudo apt upgrade -y 
sudo apt dist-upgrade -y 

sudo pip3 install mitmproxy2swagger
sudo apt install git
sudo apt install docker-compose
sudo apt install docker.io
sudo apt install golang-go

# Installing tools in opt folder
### JWT_TOOL

cd /opt
sudo git clone https://github.com/ticarpi/jwt_tool.git
cd jwt_tool

python3 -m pip install termcolor cprint pycryptodomex requests

sudo chmod +x jwt_tool.py
sudo cp jwt_tool.py /usr/bin/jwt_tool

## Kiterunner

cd /opt

sudo git clone https://github.com/assetnote/kiterunner.git
cd kiterunner
sudo make build
cd dist 
sudo cp kr /usr/bin/kr

## ARJUN 

cd /opt
sudo git clone https://github.com/s0md3v/Arjun.git
cd Arjun 
sudo python3 setup.py install 

## OWASP ZAP
sudo apt install zaproxy



