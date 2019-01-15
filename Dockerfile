FROM nimmis/alpine-micro

MAINTAINER Percis Gabriel <psgabriel@gmail.com>

RUN apk update && apk upgrade && \
    apk add nginx && \
    mkdir /web && \
    rm -rf /var/cache/apk/*


COPY rootfs /

VOLUME /web

EXPOSE 81 443