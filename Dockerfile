FROM alpine:3.22

RUN apk update && \
    apk add nodejs npm && \
    rm -rf /var/cache/apk/*

RUN npm install -g '@anthropic-ai/claude-code'

RUN mkdir /clowntown

RUN adduser -D clown

USER clown
