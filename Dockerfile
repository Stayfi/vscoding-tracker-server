FROM node:10-alpine

WORKDIR /tmp

RUN wget "https://github.com/stayfi/vscode-coding-tracker-server/archive/develop.zip" \
    && unzip develop.zip \
    && mv vscode-coding-tracker-server-develop /app \
    && rm /tmp/develop.zip

WORKDIR /app

RUN npm install && npm cache clean --force

EXPOSE 10345

ENTRYPOINT [ "node", "app"]