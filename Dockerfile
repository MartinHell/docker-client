FROM alpine:latest 

MAINTAINER Martin Hellstrom <martin@hellstrom.it>

RUN apk add --no-cache curl &&\
 curl -L -o /tmp/docker-18.06.1-ce.tgz https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz &&\
 tar -x -C /tmp -f /tmp/docker-18.06.1-ce.tgz && mv /tmp/docker/* /usr/bin && rm -rf /tmp/*
