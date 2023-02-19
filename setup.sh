#!/bin/bash

#install go tools
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/tomnomnom/assetfinder@latest
go install github.com/gwen001/github-subdomains@latest
go install github.com/d3mondev/puredns/v2@latest
go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install github.com/Josue87/gotator@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
go install github.com/tomnomnom/anew@latest
go install github.com/tomnomnom/unfurl@latest
GO111MODULE=on go install github.com/jaeles-project/gospider@latest



mkdir /home/`whoami`/Tools
cd /home/`whoami`/Tools

git clone https://github.com/UnaPibaGeek/ctfr.git
cd ctfr
pip3 install -r requirements.txt

cd ../


git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo make install

cd ../



curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-linux-i386.zip
chmod +x findomain
sudo mv findomain /usr/bin/findomain
rm -rf findomain-linux-i386.zip
findomain --help

wget -O brute_subs_2M_all.txt 102k_Brute_subs.txt https://gist.githubusercontent.com/six2dez/a307a04a222fab5a57466c51e1569acf/raw 


wget -N -c https://github.com/Edu4rdSHL/unimap/releases/download/0.5.1/unimap-linux
sudo mv unimap-linux /usr/local/bin/unimap
chmod 755 /usr/local/bin/unimap
strip -s /usr/local/bin/unimap

sudo mv seekdomain /usr/local/bin/ 
chmod +x /usr/local/bin/seekdomain