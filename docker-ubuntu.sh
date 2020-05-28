#!/usr/bin/python
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  (lsb_release -cs) \
  stable"
apt -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
apt -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common
apt -y update \
  apt -y install docker.io
sudo systemctl enable docker
sudo systemctl start docker
sudo service docker start
sudo groupadd docker
sudo usermod -aG docker $USER
docker run hello-world
