#!/bin/bash
curl -sSL https://cli.openfaas.com | sudo sh #intall faas-cli
export OPENFAAS_URL=http://10.20.14.180:8080 #your IP from faasd (from first VM)
cd Figlet_OpenFaaS
sudo chmod 666 /var/run/docker.sock
docker login
faas-cli login -u admin -p mqtO34IiJftdm5Wux9mKQgW1bDTuYgekRL7d4zNaHKpaEez2PAXu3MIoNOuRh4W -g http://10.20.14.180:8080 #password and gateway from first VM
faas-cli store deploy Figlet #install from store for your function
faas-cli new —lang python hello-python
faas-cli up -f ./hello-python.yml
