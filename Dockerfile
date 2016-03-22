FROM ubuntu:14.04
MAINTAINER Dag Viggo Lokoeen <dagviggo@vimond.com>

RUN apt-get update -qq && apt-get install -y software-properties-common curl

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && \
    apt-get install -y nodejs

RUN npm install -g elasticdump

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/d"]

ENTRYPOINT ["/usr/bin/elasticdump"]

