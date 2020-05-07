# Setup XUbuntu VM to work with minikube

## Add CPU on your VM
Go to your machine settings in VirtualBox, then System > Processor and put at least 2 cores.

## Add your user to the Docker group
```sh
sudo usermod -aG docker $(whoami);
```
Then log out and log in again or restart the VM.

## Download Minikube VM before correction to gain time
```sh
minikube start --vm-driver=docker
```

