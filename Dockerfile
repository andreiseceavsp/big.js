FROM node:14.21.3-alpine

ENV CHROME_BIN="/usr/bin/chromium-browser" \
    PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

# Install OS dependencies
RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
      chromium \
      fontconfig \
      g++ \
      gcc \
      libgcc \
      libstdc++ \
      linux-headers \
      make \
      openjdk8 \
      postgresql-dev \
      python \
      ttf-freefont \
      udev

RUN fc-cache -f -v
