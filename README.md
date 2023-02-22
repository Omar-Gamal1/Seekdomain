# Seekdomain
### A collection of subdomain tools and techniques to gather subdomains.


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
* htttpx 

## Techniques 
#### Passive subdomain Enumeration :
* passive sources 
* CRTSH
* recursion
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
seekdomain -d oppo.com -m F
```
```-m``` is the scan mode fast ```F``` or deep ```D``` 
> the diffrence is with the deep one will use permutation, bigger bruteforce list and test in the TLS for more ports

#### for enable subdomain scrapping 
```
seekdomain -d oppo.com -m F -s 
```
```
seekdomain -d oppo.com -m D -p d -w <dns wordlist>
```
```-p``` is for enable permutation ```d``` is the default permutation wordlist you can set your own using ```-p <path to wordlist>``` \
```-w``` to set your own dns wordlist 

### Output 
![image](https://user-images.githubusercontent.com/101532943/219975655-50944f29-de99-40bd-afee-704c448bcdea.png)
will be all subdomains the tool found, alive subdomains two files    \
one with the default ports [80,443] \
the output of gospider ready to use for another step \
the output from each tools in the dir  tools_output if you want to delete it add the ```-r``` argument.
