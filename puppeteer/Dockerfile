FROM automatio/xvfb:14.16.1-buster-slim

WORKDIR /opt

RUN --mount=type=cache,target=/app/pnpm-store \
    pnpm config set store-dir /app/pnpm-store && \
    pnpm install puppeteer@10.0.0 && \
    CHROME_PATH=$(find node_modules/puppeteer/.local-chromium/ -type d -name chrome-linux) && \
    mv $CHROME_PATH /opt/.local-chromium && \
    rm -rf node_modules package.json yarn.lock pnpm-lock.yaml

RUN ln -s /opt/.local-chromium/chrome /usr/bin/google-chrome
RUN ln -s /opt/.local-chromium/chrome /usr/bin/chromium-browser

ARG PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV PUPPETEER_EXECUTABLE_PATH ${PUPPETEER_EXECUTABLE_PATH}

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
