FROM alpine:3.23.3

RUN apk upgrade --no-cache && \
    apk add --no-cache \
        netcat-openbsd \
        tcptraceroute \
        bind-tools \
        curl \
        nmap && \
    rm -rf /var/cache/apk/*