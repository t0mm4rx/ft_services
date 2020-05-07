#!/bin/sh

# This script deletes everything, useful for rebuilding Docker images with Minikube context

kubectl delete --all ingresses
kubectl delete --all deployments
kubectl delete --all pods
kubectl delete --all services
kubectl delete --all pvc
