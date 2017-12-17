FROM alpine:3.6
MAINTAINER Adrian Gschwend <adrian.gschwend@zazuko.com>

RUN apk --update add build-base gcc g++ make asciidoc curl
RUN cd /tmp && curl -L https://github.com/tinyproxy/tinyproxy/releases/download/1.8.4/tinyproxy-1.8.4.tar.bz2 | tar xj
RUN cd /tmp/tinyproxy* && ./configure && make && make install

RUN cd / && rm -rf /tmp/*
RUN apk del build-base gcc g++ make asciidoc curl
RUN rm -rf /var/cache/apk/*
