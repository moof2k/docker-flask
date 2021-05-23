FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    apache2 \
    apt-utils \
    curl \
    git \
    language-pack-en-base \
    less \
    perl \
    python \
    python-genshi \
    python-pip \
    net-tools \
    openssh-server \
    sqlite \
    subversion \
    telnet \
    wget \
    libapache2-mod-wsgi \
    python-oauth2client \
    software-properties-common \
    vim

RUN pip install flask

ENTRYPOINT bash
