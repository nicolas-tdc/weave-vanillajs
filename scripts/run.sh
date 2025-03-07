#!/bin/bash

# Exit immediately if a command fails
set -e

echo -e "\e[33mRunning vanillajs-sk...\e[0m"

# Stop existing containers
(
    echo -e "\e[33mStopping existing containers...\e[0m"
    docker-compose down
) &

# Copy environment files
(
    # Check if .env.dist file exists
    if [ -f ".env.dist" ]; then
        echo -e "\e[33mCopying dev environment file\e[0m"
        cp .env.dist .env
    else
        echo -e "\e[31mError: .env.dist file not found\e[0m"
        exit 1
    fi

    echo -e "\e[32mEnvironment file ready!\e[0m"
) &

wait

echo -e "\e[32mDocker compose ready!\e[0m"

# Building and starting containers
echo -e "\e[33mBuilding and starting container...\e[0m"
docker-compose up --build --remove-orphans -d

# Cleaning up unused Docker images
echo -e "\e[33mCleaning up unused Docker images...\e[0m"
docker system prune -af
