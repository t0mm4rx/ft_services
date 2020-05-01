# ft_services

42 cursus project, about kubernetes and docker.

## Introduction (will save you some time !)

### What are Docker and Kubernetes 🐳

Docker is a software that allow users to run lightweight virtual machines. You can build Docker "containers" with a Dockerfile. A container is a single virtual machine, with its own memory space and storage. It is created on an image, which is a template with preconfigured softwares.

If you're running big apps that needs lot of containers/services, such as a database, web servers, monitoring tools, ftp, ssh..., you'll need a way to properly manage multiple Docker containers. It's not an easy task: you need to restart automatically crashed containers, to share data between them, to make sure some are fetchable from outside and some not... That's what Kubernetes does.

In Kubernetes, you have:
- Deployment: **an object that runs and manages N instances of a given Docker image**. For example, you can have a deployment that will launch and manage 10 Apache servers.
- Service: **an object that links a deployment to the outside or to other containers**. For exemple, a deployment that will link the IP 192.168.0.1 to the 10 Apache server and pick the one that have the less work load.
- Pod: **A pod is a running instance of a deployment**, you can run a shell into it. It has its own IP, its memory space...

All the above objects are described in **YAML files**.

Minikube is the software we use to create a virtual machine that runs Kubernetes, and make sure it works well with VirtualBox. It has also features such as a dashboard to see how are your pods going.

### Docker basics command ✅

```sh
# Build a docker image from a Dockerfile
docker build -t <your image name> <your Dockerfile dir>

# Start an instance of a docker image
docker run -it <your image name>
# Really important if you want to bind some ports on the container to your own computer, use -p option.
# Exemple for an Apache image using port 80 in the container as our port 80
docker run -it debian:apache -p80:80

# See all images
docker images

# Delete all unused Docker images and cache and free SO MUCH SPACE on your computer
docker system prune
```

### How to manage pods with Kubernetes ✅

```sh
# Create a pod from a YAML file
kubectl create -f <yourfile.yaml>

# Delete a pod
kubectl delete deployment <your deployment>
kubectl delete service <your service>
# and so on if you have different objects

# Get a shell in a pod
# First get the pod full name with:
kubectl get pods
# Then, your pod name should look like "grafana-5bbf569f68-svdnz"
kubectl exec -it <pod name> -- /bin/sh

# Copy data to pod or to our computer
kubectl cp <pod name>:<file> <to>
# or vice versa
kubectl cp <from> <pod name>:<to>

# Launch minikube dashboard
minikube dashboard

# Get cluster external IP
minikube ip
```

### How IP are managed with Kubernetes 🤖

**Kubernetes will create a network that connects all your containers**. Each container will have its own private IP address. **The network has an external IP**. You can get it with "minikube ip".
Sometimes, you want a container to connect an other. For exemple if you have a website in a container that needs a database from an other container.
To achieve that, you need to create a service, which will create an easy-access to the container.

**From inside your Kubernetes network (from container to an other container), you can access a service by its name, and not its IP.**
For exemple, you have a service "mysql" linked to a MySQL container. To access this container from a Nginx container, you can try:
```sh
mysql <database> -u <user> -p -h mysql
# Normally, we access with IP like that:
mysql <database> -u <user> -p -h 127.0.0.10
```
An other example, you have a web page hosted on port 1000, with a service named "test". You minikube ip is 192.168.0.1.
```sh
# Access the webpage from containers
curl http://test:1000
# Access the webpage from outside (your computer, remotely)
curl http://192.168.0.1:1000
```

## Containers 🧑‍💻

### Nginx
Nginx is a web server that can provide web pages and execute PHP (a language for web backend). You need to create a simple Nginx server, it has to be fetchable through Ingres, which is a more advanced version of Service. Port 443 is for SSL connection (https). You can create a SSL certificate with openssl.
This container need to provide a SSH connection. SSH is a tool to access a computer remotly (usually without graphics part).
A really simple way to create a SSH server is though the openssh package and then run the sshd deamon.

### FTPS
A simple FTPs server. FTP is a protocole to send and download files from a distant computer. FTPs is a version that uses SSL to encrypt communications between the client and the server, which is safer. Pure-FTPD is a simple FTP server.
You can test a FTP connection with:
```sh
ftp <user>@<ip>
```

### Wordpress
Wordpress is the #1 open source website and blog content manager. It's written in PHP, and uses MySQL as database. MySQL is the most used SQL database, SQL is a language to query data.
You'll need to use a web server, you can reuse nginx.
Your wordpress database (you'll need to import it in MySQL) contains informations about the IP of the website, it has to match the IP you'll access it. So you'll need to put the minikube IP to wordpress SQL database. Wordpress has also a wp-config.php file that you'll need to edit so it can access your MySQL service.

You can test a remote MySQL connection with:
```sh
# -p only if your user has a password
mysql <database name> -u <user> -p -h <ip>
```

### PHPMyAdmin
PHPMyAdmin is a useful tool to see, query, edit data from a MySQL database. It can be hosted by any web server, so I recommand you to use nginx as well as you've used it before. You need to edit phpmyadmin.inc.php file to connect to your MySQL service.

### Grafana
Grafana is a web dashboard used to visualize data, like cluster health. It can fetch automatically data from various sources, but we'll use InfluxDB, which is a database engine.

You can test an InfluxDB connection by fecthing /ping endpoint:
```sh
curl http://influxdb:8086/ping
curl http://192.168.0.29/ping
```

We'll send every container data (CPU usage, memory, processes) easily by using Telegraf. It's a simple program that sends system data to an InfluxDB instance.

So our stack is:
Telegraf --> InfluxDB --> Grafana
Get data     Store data   Visualize Data

So there are two connections to configure, Telegraf to InfluxDB which is done in the /etc/telegraf/telegraf.conf file and the Grafana to InfluxDB which is done from the Grafana web interface.

To provide an already-configured version of Grafana, I advise you to setup a blank Grafana setup, launch you container, configure everything. Then save the grafana.db file on your computer (you can use "kubectl cp" to get data from a running pod). You can now copy this file in your Dockerfile.

## Useful resources 🕸
- To build Grafana + InfluxDB + Telegraf stack: https://medium.com/@nnilesh7756/copy-directories-and-files-to-and-from-kubernetes-container-pod-19612fa74660
- Kubernetes cheat sheet: https://kubernetes.io/fr/docs/reference/kubectl/cheatsheet/

## Questions ? 📪
Tom Marx
**tmarx** on the intra and slack :)

