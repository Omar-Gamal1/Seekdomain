# Seekdomain
### collection of subdomain tools and techniques to gather subdomains.


## Tools 
* amass                                                                                                                                         
* subfinder                                                                                                                              
* assetfinder                                                                                                                      
* findomain  
* github-subdomains 
* gospider 
* tlsx 
* dnsx 
* puredns 
* unimap   
* htttpx 

## Techniques 
#### Passive subdomain Enumeration :
* passive sources 
* CRTSH
#### Active subdomain Enumeration :  
* bruteforce 
* permutation 
* scraping 
* NOERROR  (more info [Here](https://www.securesystems.de/blog/enhancing-subdomain-enumeration-ents-and-noerror))
* TLSX 

## install
> the tools will install in the home directory (Tools) \
and the script will go to usr local binaries needing root privilege
```
git clone https://github.com/akaPABL0/Seekdomain.git
cd Seekdomain
chmod +x setup.sh
./setup.sh
seekdomain -h
```

## Example
```
seekdomain -d oppo.com -m f
```
```-m``` is the scan mode fast ```f``` or deep ```d``` \
the diffrence is with the deep one will use permutation, bigger bruteforce list and test in the TLS for more ports



### Output 
![image](https://user-images.githubusercontent.com/101532943/219975655-50944f29-de99-40bd-afee-704c448bcdea.png)
will be all subdomains the tool found, alive subdomains two files    \
one with the default ports [80,443] and the other with common web ports like [8080,8443]   \
the output of gospider ready to use for another step \
the output from each tools in the dir  tools_output if you want to delete it add the ```-r``` argument.
