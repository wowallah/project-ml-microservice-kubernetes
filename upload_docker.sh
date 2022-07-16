#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:  
# Retrieve an authentication token and authenticate your Docker client to your registry.
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 921865418652.dkr.ecr.us-east-1.amazonaws.com

# Step 2:
# Build your Docker image using the following command.
docker build -t udacity-devops-proj3 .

# Step 3
# After the build completes, tag your image so you can push the image to this repository:
docker tag udacity-devops-proj3:latest 921865418652.dkr.ecr.us-east-1.amazonaws.com/udacity-devops-proj3:latest

# Step 4:
# Run the following command to push this image to your newly created AWS repository:
docker push 921865418652.dkr.ecr.us-east-1.amazonaws.com/udacity-devops-proj3:latest