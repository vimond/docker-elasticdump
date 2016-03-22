FROM ubuntu:14.04
MAINTAINER Dag Viggo Lokoeen <dagviggo@vimond.com>

RUN apt-get update -qq && apt-get install -y software-properties-common && \
    apt-add-repository ppa:chris-lea/node.js && \
    apt-get update -qq && apt-get install -y nodejs

RUN  npm install -g elasticdump@1.1.1

RUN mkdir /d && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/d"]
ENTRYPOINT ["/usr/bin/elasticdump"]
