# Use a specific base image
FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    NODE_VERSION=18.17.1

# Install Python 3.11 and Node.js
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.11 python3.11-venv python3.11-dev \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs=$NODE_VERSION-* \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Copy your application code to the container (assuming your code is in the same directory as your Dockerfile)
COPY . /app

# Set work directory
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN poetry install

# Run any additional scripts you need
CMD ["bash", ".devcontainer/setup.sh"]
