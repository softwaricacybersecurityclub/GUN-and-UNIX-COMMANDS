#! /bin/bash

if [ "$USER" == "ksab" ]
then
    echo "Hello Kesab! :)"
fi
echo "enter ip address"
read ip_addr
nmap -sV $ip_addr >> nmap.txt

terminator -x watch -n 60 bat ~/CyberSecutity_Club/Test/nmap.txt
