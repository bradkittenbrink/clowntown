FROM alpine:3.22

RUN apk update && \
    apk add nodejs npm python3 ripgrep fd && \
    apk add python3-dev build-base && \
    npm install -g '@google/gemini-cli' && \
    apk del python3-dev build-base && \
    rm -rf /var/cache/apk/*

RUN mkdir /clowntown

RUN adduser -D clown

USER clown
