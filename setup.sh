#!/bin/bash

mkdir /home/`whoami`/Tools
mv permutations_list.txt /home/`whoami`/Tools
mv brute_subs_102k.txt /home/`whoami`/Tools
mv resolvers.txt /home/`whoami`/Tools
mv resolvers_trusted.txt /home/`whoami`/Tools

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
go install github.com/projectdiscovery/katana/cmd/katana@latest

#apt install
sudo apt install lolcat


cd /home/`whoami`/Tools

#github clones
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
sudo mv findomain /usr/bin/
rm -rf findomain-linux-i386.zip
findomain --help

wget -O brute_subs_2M_all.txt https://gist.githubusercontent.com/six2dez/a307a04a222fab5a57466c51e1569acf/raw 


#move to user binares
chmod +x seekdomain
sudo mv seekdomain /usr/local/bin/

