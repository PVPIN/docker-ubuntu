FROM ubuntu:16.04
MAINTAINER wolfg1969 <wolfg1969@qq.com>

ENV REFRESHED_AT 20170103

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN sed -i.bak s/archive/cn.archive/g /etc/apt/sources.list && apt-get -y update

RUN locale-gen en_US.UTF-8
RUN locale-gen zh_CN.UTF-8
RUN dpkg-reconfigure locales
