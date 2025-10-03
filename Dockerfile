FROM alpine:3.22.1
RUN apk add --update netcat-openbsd tcptraceroute bind-tools curl nmap && rm -rf /var/cache/apk/*
