#!/bin/sh

# installed packages update
sudo apt-get update -y
sudo apt-get upgrade -y

# install ansible
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y

# execute ansible
cd /vagrant/ansible
ansible-galaxy install -r requirements.yml -p ./roles
ansible-playbook site.yml
