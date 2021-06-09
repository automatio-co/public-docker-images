# Base images for various projects

These are base images created for internal uses, but trying to harness the public docker registry for faster build and response.

## automatio/node:14.16.1-slim

This is same as node:14.16.1-slim image, except has build-essential and dumb-init packages installed for production usage.


## automatio/xvfb:14.16.1-buster-slim

This is same as node:14.16.1-buster-slim image, except has build-essential and dumb-init packages, as well as many packages and fonts required for running chromium in xvfb.


## automatio/xvfb-puppeteer:10.0.0

This is same as automatio/xvfb:14.16.1-buster-slim image, but it also has Chromium for the indicated puppeteer version, located at `/usr/bin/chromium-browser`


# Development

Building the image requires,

```
make node
make xvfb
make puppeteer
```

Push the images:
```
docker-compose push
```