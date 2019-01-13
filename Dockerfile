FROM alpine:3.7

LABEL maintainer="Percis Gabriel<psgabriel@gmail.com>"

# Nginx Install
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories && \
    apk add --update nginx=1.8.1-r1 && \
    rm -rf /var/cache/apk/* && \
    chown -R nginx:www-data /var/lib/nginx

# Add the files
ADD root /

# Expose the ports for nginx
EXPOSE 80 443