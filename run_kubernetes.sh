#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# Create cluster in EKS
# eksctl create cluster --name udacity-devops-proj3 --region=us-east-1
eksctl create cluster -f cluster.yml
# Step 2
# View cluster details
eksctl get cluster --name=udacity-devops-proj3 --region=us-east-1

# Step 3
# Run the EKS container with kubernetes
kubectl create deploy boston --image=921865418652.dkr.ecr.us-east-1.amazonaws.com/udacity-devops-proj3:latest

# Step 4:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host with service name boston (--name=boston)
kubectl expose deployment boston --port=80 --target-port=8000 --name=boston
kubectl get services
kubectl describe services/boston
export NODE_PORT=$(kubectl get services/boston -o go-template='{{(index .spec.ports 0).nodePort}}')
curl $(minikube ip):$NODE_PORT
