#!/bin/bash
#########################################
#########################################
#                                       #
# this script is for setting up jenkins #
# server on a ubuntu vm either localy   #
# or in the cloud.                      # 
#                                       #
#########################################
#########################################
#########################################
# updates apt repo
sudo apt update && sudo apt upgrade -y
sudo apt-get update
# installs java
sudo apt install openjdk-11-jre -y
# switches to root
sudo bash
# gets jenkins url 
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
# updates apt-get repo list
sudo apt-get update
# installs jenkins
sudo apt-get install jenkins
# enables jenkins to start when server is run
sudo systemctl enable jenkins
# starts jenkins
sudo systemctl start jenkins
