FROM node:10

WORKDIR /tmp

RUN curl -OL "https://github.com/hangxingliu/vscode-coding-tracker-server/archive/master.zip" \
    && unzip master.zip \
    && mv vscode-coding-tracker-server-master /app \
    && rm /tmp/master.zip

WORKDIR /app

RUN npm i

RUN npm audit fix

EXPOSE 10345

ENTRYPOINT [ "node", "app"]