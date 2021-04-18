FROM node:14.16.1-slim

RUN apt-get update && apt-get install -yq build-essential dumb-init telnet curl &&\
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ENTRYPOINT ["/usr/bin/dumb-init", "--"]