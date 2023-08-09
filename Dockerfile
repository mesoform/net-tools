FROM alpine:3.18.3
RUN apk add --update netcat-openbsd tcptraceroute bind-tools curl nmap && rm -rf /var/cache/apk/*
