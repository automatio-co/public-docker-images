# Base images for various projects

These are base images created for internal uses, but trying to harness the public docker registry for faster build and response.

## automatio/prisma:1.34.8

This is same as the prisma:1.34.8 image, except this has a wait-for-it script waiting for the database to initialize. These three arguments can be provided at runtime via docker or docker compose.

> This might be deprecated in near future.

```yml
version: '3.7'
services:
  prisma:
    image: automatio/prisma:1.34.8
    environment:
      DB_HOST: ${DB_HOST}
      DB_PORT: ${DB_PORT}
      WAIT_TIMEOUT: 0
      PRISMA_CONFIG: |
        port: 4466
        ...
```

## automatio/node:14.16.1-slim

This is same as node:14.16.1-slim image, except has build-essential and dumb-init packages installed for production usage.


## automatio/xvfb:14.16.1-buster-slim

This is same as node:14.16.1-buster-slim image, except has build-essential and dumb-init packages, as well as many packages and fonts required for running chromium in xvfb.