FROM alpine:3.22.2
RUN apk add --update netcat-openbsd tcptraceroute bind-tools curl nmap && rm -rf /var/cache/apk/*
