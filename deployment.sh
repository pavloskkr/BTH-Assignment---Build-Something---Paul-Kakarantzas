#!/bin/bash

# Display the ASCII art
cat ./ASCII/onebe_asciiart.txt

sleep 1

# Deploy PostgreSQL with ConfigMap
kubectl apply -f postgres-deployment.yml

# Deploy Firebase Auth Microservice
kubectl apply -f firebaseauthms-deployment.yml

# Give a head start to the PostgreSQL deployment because OneBE Microservice needs it
sleep 10

# Deploy OneBE Service Microservice
kubectl apply -f onebeservicems-deployment.yml

# Extract the clusterIP of PostgreSQL
postgresip=$(kubectl get services/postgresql-service --template='{{.spec.clusterIP}}')
