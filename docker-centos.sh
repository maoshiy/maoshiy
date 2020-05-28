#!/usr/bin/python
yum remove -y docker \
  docker-client \
  docker-client-latest \
  docker-common \
  docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-selinux \
  docker-engine-selinux \
  docker-engine
yum install -y yum-utils \
  evice-mapper-persistent-data \
  lvm2
yum-config-manager \
  --add-repo \
  https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-nightly;yum makecache fast;yum install -y docker-ce;systemctl enable docker;systemctl start docker;usermod -aG docker $USER
sudo tee -a /etc/sysctl.conf <<-EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sysctl -p
chown "$USER":"$USER" /"$USER"/.docker -R;chmod g+rwx "$HOME/.docker" -R
docker run hello-world
