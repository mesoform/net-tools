FROM alpine:3.21.3
RUN apk add --update netcat-openbsd tcptraceroute bind-tools curl nmap && rm -rf /var/cache/apk/*
