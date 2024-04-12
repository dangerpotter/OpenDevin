#!/bin/bash

# Install Python 3.11
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.11 python3.11-venv python3.11-dev

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Poetry
curl -sSL https://install.python-poetry.org | python3 -

# Verify installations
python3.11 --version
node --version
poetry --version
