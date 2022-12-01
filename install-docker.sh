apt-get update

apt-get --force-yes remove unscd

apt-get --force-yes install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update

apt-get --force-yes install docker-ce docker-ce-cli containerd.io

groupadd docker

usermod -aG docker $USER

addgroup --system docker

adduser $USER docker

newgrp docker
