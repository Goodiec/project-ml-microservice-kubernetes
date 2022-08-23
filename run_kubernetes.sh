#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=goodiec/mlproject

# Run the Docker Hub container with kubernetes
kubectl run mlproject --image=$dockerpath

# list the pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward mlproject 8000:80
