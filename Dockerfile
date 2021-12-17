FROM alpine:latest
RUN apk add --update netcat-openbsd tcptraceroute bind-tools curl nmap && rm -rf /var/cache/apk/*
