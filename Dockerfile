FROM gliderlabs/alpine:3.3
MAINTAINER Dag Viggo Lokoeen <dagviggo@vimond.com>

RUN apk-install nodejs
RUN npm install -g elasticdump@1.1.1

ENTRYPOINT ["/usr/lib/node_modules/elasticdump/bin/elasticdump"]
VOLUME ["/d"]
