FROM node:14.5.0-slim

RUN apt-get update && apt-get install -yq build-essential dumb-init &&\
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ENTRYPOINT ["/usr/bin/dumb-init", "--"]