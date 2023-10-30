#!/bin/bash
curl -sSL https://cli.openfaas.com | sudo sh #intall faas-cli
export OPENFAAS_URL=http://10.20.14.12:8080 #your IP from faasd (from first VM)
sudo chmod 666 /var/run/docker.sock
docker login
faas-cli login -u admin -p BGUgif5ekY77XCQadvnIFac5EtuwVAxlwvZ6aoP8EtnHTY8Sj7veQNQmFTdd68L -g http://10.20.14.12:8080 #password and gateway from first VM
faas-cli store deploy Hello-python
git clone https://github.com/smorodinovass/openfaas_hello_func.git
cd openfaas_hello_func
faas-cli up -f ./hello-python.yml
