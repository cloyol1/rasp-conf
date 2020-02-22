#!/usr/bin/env bash

# Aplicativos e utilitários

#####AWSCLI-INSTALL#####

sudo apt install -y python3-pip

pip3 install awscli --upgrade --user

sudo cp .local/bin/aws* /usr/local/bin/

#####DOCKER INSTALL#####

curl -fsSL http://get.docker.com | sh

sudo usermod -aG docker $USER

#####KUBECTL INSTALL#####

curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv kubectl /usr/local/bin/
