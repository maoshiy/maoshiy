#!/usr/bin/python

wget --no-check-certificate https://code.aliyun.com/clangcn/frp-docker/raw/master/frps-docker/frps-docker.tar
docker load < frps-docker.tar
docker run --restart=always -h="frps-docker" --name frps-docker -d \
-p 6443:5443/tcp \
-p 6443:5443/udp \
-p 6444:5444/udp \
-p 7443:5445/tcp \
-p 8080:80/tcp \
-p 8443:443/tcp \
-p 8022:8022/tcp \
-p 9022:9022/tcp \
-e set_dashboard_user=maoshiy \
-e set_dashboard_pwd=msylll11 \
-e set_token=AIzaSyDdiq27Pywx4XqRWXyDpIjLFoKkT3e9o0I \
-e set_subdomain_host= \
-e set_max_pool_count=50 \
-e set_max_ports_per_client=0 \
-e set_authentication_timeout=600 \
-e set_log_level=info \
-e set_log_max_days=3 \
-e set_tcp_mux=true \
"frps-docker:latest"
