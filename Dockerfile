FROM alpine:latest
RUN apk add --update netcat-openbsd tcptraceroute bind-tools && rm -rf /var/cache/apk/*
