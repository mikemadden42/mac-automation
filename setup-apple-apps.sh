#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Check if ansible-playbook is installed
if ! command -v ansible-playbook >/dev/null 2>&1; then
    echo "Error: ansible-playbook is not installed. Please install Ansible first."
    exit 1
fi

# Check if hosts file exists
if [ ! -f "hosts" ]; then
    echo "Error: 'hosts' file not found in the current directory."
    exit 1
fi

echo "Starting Homebrew packages setup..."
ansible-playbook -c local -i hosts mac-apple-brews.yml

echo "Starting Homebrew casks setup..."
ansible-playbook -c local -i hosts mac-apple-casks.yml

echo "Setup complete!"
