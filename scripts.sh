#!/bin/bash
cd ~
echo "alias cl=clear" >> ~/.profile
source ~/.profile
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install jenkins -y
sudo apt update -y
sudo apt install openjdk-11-jre -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
