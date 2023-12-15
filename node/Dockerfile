FROM node:20.10.0-buster-slim

RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt/lists \
    apt-get update && \
    apt-get install -yq build-essential dumb-init telnet curl

ENV PNPM_VERSION 8.12.1
RUN curl -sL https://unpkg.com/@pnpm/self-installer | node

ENTRYPOINT ["/usr/bin/dumb-init", "--"]