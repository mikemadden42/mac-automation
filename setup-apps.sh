#!/bin/sh

ansible-playbook -c local -i hosts mac-brews.yml
ansible-playbook -c local -i hosts mac-casks.yml
