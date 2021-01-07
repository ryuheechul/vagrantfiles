#!/usr/bin/env sh

# symlink repos
ln -T -s /vagrant/repos ~/repos

# prepare locale
sudo locale-gen "${LC_ALL}"

# install essentials
sudo apt update && sudo apt install --yes \
  software-properties-common \
  apt-transport-https \
  ca-certificates \
  gnupg

# ansible
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update && sudo apt install --yes \
  ansible

# gcloud
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt-get update && sudo apt-get install --yes \
  google-cloud-sdk
