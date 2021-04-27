FROM automatio/xvfb:14.16.1-buster-slim

WORKDIR /opt

RUN YARN_CACHE_FOLDER=/tmp/yarn_cache yarn add puppeteer@8.0.0 && \
    yarn cache clean && \
    rm -rf /tmp/yarn_cache && \
    rm -rf /usr/local/share/.cache && \
    CHROME_PATH=$(find node_modules/puppeteer/.local-chromium/ -type d -name chrome-linux) && \
    mv $CHROME_PATH /opt/.local-chromium && \
    rm -rf node_modules && \
    rm package.json && \
    rm yarn.lock

RUN ln -s /opt/.local-chromium/chrome /usr/bin/google-chrome
RUN ln -s /opt/.local-chromium/chrome /usr/bin/chromium-browser

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
