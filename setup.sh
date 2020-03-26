#!/bin/sh

minikube --vm-driver=virtualbox start
minikube addons enable ingress
minikube addons enable dashboard
minikube dashboard

eval $(minikube docker-env)

docker build -t service_nginx ./srcs/nginx
docker build -t test ./srcs/test

kubectl create -f ./srcs/
