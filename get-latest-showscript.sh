#!/bin/bash

# Fetch the latest ShowScript release jar from the GitHub repository
LATEST_RELEASE=$(curl -s https://api.github.com/repos/MCParks/ShowScript/releases/latest | grep -oP '"browser_download_url": "\K(.*)(?=")')

# Ensure the script saves the downloaded jar to the plugins directory
wget $LATEST_RELEASE -O /workspaces/minecraft-server/plugins/showscript.jar
