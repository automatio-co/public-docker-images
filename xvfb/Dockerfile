FROM node:14.16.1-buster-slim

# Install XVFB dependencies
RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt/lists \
    apt-get update &&\
    apt-get install -yq build-essential gconf-service fonts-noto-color-emoji libasound2 libatk1.0-0 libc6 libcairo2 \
    libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm-dev libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 \
    libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
    libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates \
    fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget xvfb x11vnc x11-xkb-utils xfonts-100dpi \
    xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps dumb-init telnet curl

ENV PNPM_VERSION 6.7.4
RUN curl -sL https://unpkg.com/@pnpm/self-installer | node

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
