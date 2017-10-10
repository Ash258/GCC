FROM alpine:3.6 as Alpine

RUN apk add --no-cache --virtual .ash258-deps \
        gcc \
        musl-dev \
        make \
        valgrind
