FROM alpine:3.22.2

RUN apk upgrade --no-cache libxml2 \
 && apk add --no-cache netcat-openbsd tcptraceroute bind-tools curl nmap
