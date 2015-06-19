FROM gliderlabs/alpine:3.1

RUN apk add --update bash redis
COPY redis.conf /etc/redis.conf

EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
CMD ["/etc/redis.conf"]
