# !/bin/bash

# Move into correct folder
cd /opt/app

# Pull latest changes
git fetch && git pull

# Refresh deployments
docker compose -f ./compose.yaml pull
docker compose -f ./compose.yaml up -d
