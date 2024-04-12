#!/bin/bash
set -e

# Update and upgrade packages
sudo apt-get update && sudo apt-get upgrade -y

# Install Python 3.11
sudo apt-get install -y python3.11 python3.11-venv python3.11-dev

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Docker if not already available
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Poetry
curl -sSL https://install.python-poetry.org | python3 -

# Environment setup (customize as needed)
export PROJECT_DIR="/workspace/OpenDevin"

# Install additional tools
sudo apt-get install -y git curl

# Install project dependencies globally (if applicable)
# Example: npm install -g some-package

# Clean up
sudo apt-get clean
rm -rf /var/lib/apt/lists/*

# Verify installations
python3 --version
node --version
docker --version
poetry --version

echo "Environment setup complete."
