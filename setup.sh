#!/bin/sh

echo "Starting minikube..."
minikube --vm-driver=virtualbox start --extra-config=apiserver.service-node-port-range=1-35000
echo "Enabling addons..."
minikube addons enable ingress
minikube addons enable dashboard
echo "Launching dashboard..."
minikube dashboard &

echo "Eval..."
eval $(minikube docker-env)

IP=$(minikube ip)
printf "Minikube IP: ${IP}"

echo "Building images..."
docker build -t service_nginx ./srcs/nginx
docker build -t service_test ./srcs/test
docker build -t service_ftps --build-arg IP=${IP} ./srcs/ftps
docker build -t service_mysql ./srcs/mysql --build-arg IP=${IP}
docker build -t service_wordpress ./srcs/wordpress --build-arg IP=${IP}
docker build -t service_phpmyadmin ./srcs/phpmyadmin --build-arg IP=${IP}

echo "Creating pods and services..."
kubectl create -f ./srcs/

open http://$IP
