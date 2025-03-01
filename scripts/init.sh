#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo -e "\e[33mInitializing vanillajs-sk...\e[0m"

# Install required packages
if [ -f ".scripts/helpers/installed-required.sh" ]; then
    echo -e "\e[33mInstalling required packages...\e[0m"
    .scripts/helpers/install-required.sh
fi
