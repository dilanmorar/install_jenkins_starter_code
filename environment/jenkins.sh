#!/bin/bash

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update
sudo apt-get upgrade

sudo apt install default-jre -y

sudo apt-get install -y jenkins

sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

sudo npm install pm2 -g

sudo apt-get install nginx -y

# cat var/log/jenkins/jenkins.log

# echo "Adding apt-keys"
# wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
# echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
#
# echo "Updating apt-get"
# sudo apt-get -qq update
#
# echo "Installing default-java"
# sudo apt-get -y install default-jre > /dev/null 2>&1
# sudo apt-get -y install default-jdk > /dev/null 2>&1
#
# echo "Installing git"
# sudo apt-get -y install git > /dev/null 2>&1
#
# echo "Installing git-ftp"
# sudo apt-get -y install git-ftp > /dev/null 2>&1
#
# echo "Installing jenkins"
# sudo apt-get -y install jenkins > /dev/null 2>&1
# sudo service jenkins start
#
# sleep 1m
#
# echo "Installing Jenkins Plugins"
# JENKINSPWD=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
# echo $JENKINSPWD
