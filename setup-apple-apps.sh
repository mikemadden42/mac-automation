#!/bin/sh

ansible-playbook -c local -i hosts mac-apple-brews.yml

ansible-playbook -c local -i hosts mac-apple-casks.yml
