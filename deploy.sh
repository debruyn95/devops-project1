#!/bin/bash

echo "?? Starting deployment..."

cd ~/devops-project1 || exit

echo "?? Pulling latest code..."
git pull

echo "?? Stopping containers..."
docker-compose down

echo "?? Building and starting containers..."
docker-compose up -d --build

echo "? Deployment complete!"