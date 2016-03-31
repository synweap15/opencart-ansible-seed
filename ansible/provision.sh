#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install python-pip
sudo pip install ansible
export PYTHONUNBUFFERED=1
ansible-playbook -v -i /vagrant_nox/ansible/local.inventory /vagrant_nox/ansible/site.yml