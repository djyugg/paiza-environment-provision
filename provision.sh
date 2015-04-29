#!/bin/sh

# OSインストール後にすべてのパッケージをアップデートする
sudo apt-get update -y

# Ansibleのインストール
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y

# Ansible実行
cd /vagrant/ansible
ansible-galaxy install -r requirements.yml -p ./roles
ansible-playbook site.yml