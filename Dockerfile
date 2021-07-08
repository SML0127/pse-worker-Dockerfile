FROM ubuntu:20.04
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get -y install sudo git ssh vim tmux python3.6 python3.6-dev python3-pip python3-setuptools postgresql libpq-dev wget unzip curl network-manager net-tools
RUN useradd -rm -d /home/pse -s /bin/bash -g root -G sudo -u 1001 pse
RUN ln -sfn /usr/bin/python3.6 /usr/bin/python
RUN curl https://bootstrap.pypa.io/get-pip.py | sudo -H python3.6
