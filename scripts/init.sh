#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo -e "\e[33mInitializing javalin-sk\e[0m"

# Check if Docker is installed
if ! command -v docker >/dev/null 2>&1; then
    # Install docker
    echo -e "\e[33mInstalling docker...\e[0m"
    sudo apt install -y docker
fi

# Check if Docker Compose is installed
if ! command -v docker-compose >/dev/null 2>&1; then
    # Install docker
    echo -e "\e[33mInstalling docker compose...\e[0m"
    sudo apt install -y docker-compose
fi

# Check if user is in Docker group
if ! groups "$USER" | grep -q "\bdocker\b"; then
    # Add user to Docker group
    echo -e "\e[33mAdding user to Docker group...\e[0m"
    sudo usermod -aG docker $USER
fi
