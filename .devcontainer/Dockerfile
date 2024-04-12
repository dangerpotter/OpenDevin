# Use an official Python runtime as a parent image
FROM mcr.microsoft.com/vscode/devcontainers/python:0-3.11-bullseye

# Set the working directory in the container
WORKDIR /app

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Verify installation
RUN node --version
RUN npm --version

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
