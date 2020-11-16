#!/bin/sh

### Docker
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo service docker start


### Conf Git
GIT_NAME="monnom"
GIT_EMAIL="monemail@monfournisseur.com"

git config --global user.email ${GIT_MAIL}
git config --global user.name ${GIT_NAME}

ssh-keygen -t ed25519 -C ${GIT_MAIL} # ssh key for github
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519

