FROM ubuntu:20.04
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install sudo git ssh vim tmux python3 python3-pip postgresql libpq-dev wget unzip curl network-manager
RUN useradd -rm -d /home/pse -s /bin/bash -g root -G sudo -u 1001 pse
RUN pip install --upgrade pip
RUN ln -sfn /usr/bin/python3 /usr/bin/python
