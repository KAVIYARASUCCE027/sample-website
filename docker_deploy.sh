#!/bin/bash
set -e

# Go to app directory
cd /home/ubuntu/app

# Stop old container if running
docker stop mynginx || true
docker rm mynginx || true

# Build new Docker image
docker build -t mynginx:latest .

# Run container on port 80
docker run -d --name mynginx -p 80:80 mynginx:latest
