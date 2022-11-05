#!/usr/bin/env bash

# Install ansible
export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"
sudo pip3 install --upgrade pip
pip3 install ansible

# Run ansible tasks
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml --ask-become-pass --check