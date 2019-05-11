FROM ubuntu:16.04

ADD . /u16node

RUN /u16node/install.sh && rm -rf /tmp && mkdir /tmp && chmod 1777 /tmp
