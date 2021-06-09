FROM node:14.16.1-slim

RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt/lists \
    apt-get update && \
    apt-get install -yq build-essential dumb-init telnet curl

ENV PNPM_VERSION 6.7.4
RUN curl -sL https://unpkg.com/@pnpm/self-installer | node

ENTRYPOINT ["/usr/bin/dumb-init", "--"]