FROM node:10-alpine

WORKDIR /tmp

RUN wget "https://github.com/stayfi/vscode-coding-tracker-server/archive/master.zip" \
    && unzip master.zip \
    && mv vscode-coding-tracker-server-master /app \
    && rm /tmp/master.zip

WORKDIR /app

RUN npm install && npm cache clean --force

EXPOSE 10345

ENTRYPOINT [ "node", "app"]