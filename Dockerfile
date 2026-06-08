FROM alpine:3.23.4

RUN apk upgrade --no-cache libxml2 \
 && apk add --no-cache netcat-openbsd tcptraceroute bind-tools curl nmap
