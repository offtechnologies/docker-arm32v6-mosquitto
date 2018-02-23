FROM offtechnologies/docker-arm32v6-base-image-alpine-qemu:latest

ARG MOSQUITTO_VERSION=1.4.14-r3

RUN apk -U upgrade && \
    apk --no-cache add \
    mosquitto-clients=$MOSQUITTO_VERSION \
    mosquitto=$MOSQUITTO_VERSION \
    su-exec &&\
    rm -rf /var/cache/apk/* /tmp/*

EXPOSE 1883 9001

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mosquitto"]
