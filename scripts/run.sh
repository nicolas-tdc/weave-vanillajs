#!/bin/bash

# Exit immediately if a command fails
set -e

echo -e "\e[33mRunning vanillajs-sk...\e[0m"

# Install required packages
if [ -f "./scripts/helpers/installed-required.sh" ]; then
    echo -e "\e[33mInstalling required packages...\e[0m"
    ./scripts/helpers/install-required.sh
fi

if [ $APP_ENV == "dev" ] && [ -f ".env.dev" ]; then
    cp .env.dev .env
fi

if [ $APP_ENV == "prod" ] && [ -f ".env.prod" ]; then
    cp .env.prod .env
fi

# run.sh

# Stopping existing containers
echo -e "\e[33mStopping existing containers...\e[0m"
docker-compose down

# Building and starting containers
echo -e "\e[33mBuilding and starting container...\e[0m"
docker-compose up --build -d


# Cleaning up unused Docker images
echo -e "\e[33mCleaning up unused Docker images...\e[0m"
docker system prune -af
