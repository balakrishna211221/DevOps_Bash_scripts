#!/bin/bash


sudo apt update  
sudo apt search openjdk
sudo apt install openjdk-11-jdk
java -version




### Current system
# In case your system is quite current but for some reason automatic update didn't work, there should be enough to:

# apt update
# apt upgrade
# sudo dpkg-reconfigure ca-certificates
#### and in reconfigure stage, deselect "DST Root CA X3" certificate

##sample link   https://stackoverflow.com/questions/21181231/server-certificate-verification-failed-cafile-etc-ssl-certs-ca-certificates-c



wget --no-check-certificate -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

##if you get no opengpg valid while then you can execute below one
wget --no-check-certificate -qO - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins-ci.org/debian binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
    
    
    

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

