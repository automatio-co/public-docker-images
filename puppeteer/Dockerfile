FROM automatio/xvfb:20.10.0-buster-slim

WORKDIR /opt

RUN --mount=type=cache,target=/app/pnpm-store \
    --mount=type=cache,target=/root/.cache/puppeteer \
    pnpm config set store-dir /app/pnpm-store && \
    pnpm install puppeteer@21.5.2 && \
    mv $(find /root/.cache/puppeteer -type d -name chrome-linux64) /opt/.local-chromium && \
    rm -rf node_modules package.json yarn.lock pnpm-lock.yaml

RUN ln -s /opt/.local-chromium/chrome /usr/bin/google-chrome
RUN ln -s /opt/.local-chromium/chrome /usr/bin/chromium-browser

ARG PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV PUPPETEER_EXECUTABLE_PATH ${PUPPETEER_EXECUTABLE_PATH}

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
