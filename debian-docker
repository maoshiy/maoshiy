#!/usr/bin/python

apt -y remove docker \
               docker-engine \
               docker.io
apt -y update
 apt -y install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     lsb-release \
     software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg |  apt-key add -
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"
apt -y update;apt install -y docker-ce;systemctl enable docker;systemctl start docker;sudo groupadd docker;sudo usermod -aG docker $USER;docker run hello-world
