#!/bin/bash
set -e

# Stop old container if running
docker stop mynginx || true
docker rm mynginx || true

# Pull latest image
docker pull kavi466/footcap:v2.0

# Run container
docker run -d --name mynginx -p 80:80 kavi466/footcap:v2.0
