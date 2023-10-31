#!/bin/bash

# Display the ASCII art
cat ./ASCII/oneberestart_asciiart.txt

sleep 1

# Stop all pods
kubectl delete pods --all --grace-period=0 --force

# Wait for a few seconds to ensure pods are terminated
sleep 10

# Deploy Firebase Auth Microservice
kubectl apply -f firebaseauthms-deployment.yml

# Deploy PostgreSQL with ConfigMap
kubectl apply -f postgres-deployment.yml

#give a head start to postgres deployment because One BE Microservice needs it
sleep 10

# Deploy OneBE Service Microservice
kubectl apply -f onebeservicems-deployment.yml

# Extract the clusterIP of PostgreSQL
postgresip=$(kubectl get services/postgresql-service --template='{{.spec.clusterIP}}')
