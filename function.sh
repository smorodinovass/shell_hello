#!/bin/bash
curl -sSL https://cli.openfaas.com | sudo sh #intall faas-cli
export OPENFAAS_URL=http://10.20.14.180:8080 #your IP from faasd (from first VM)
sudo chmod 666 /var/run/docker.sock
docker login
faas-cli login -u admin -p Qf38m8h31AaTFbuDmhHqW5aRsICudJQODObabiPx0kAtE2kLs1UBuKpRuPGSi9y -g http://10.20.14.180:8080 #password and gateway from first VM
faas-cli store deploy Hello-python
git clone https://github.com/smorodinovass/function_open.git
cd function_open
faas-cli up -f ./hello-python3.yml
