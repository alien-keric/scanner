#!/bin/bash

##checking the package is installed or not

package1="rustscan"
package2="nmap"
package3="whois"

if dpkg -l | grep -q "^ii.*$package1"; then
    echo "$package1 is already installed"
else 
    sudo apt install $package1
fi

if dpkg -l | grep -q "^ii.*$package2"; then
    echo "$package2 is already installed"
else 
    sudo apt install $package2
fi

if dpkg -l | grep -q "^ii.*$package3"; then
    echo "$package3 is already installed"
else
    sudo apt install $package3
fi

## simple scanner for pentesting

echo "Enter the target ip address"
read target

echo "Okay let's have some fun by scanning our target $target"

