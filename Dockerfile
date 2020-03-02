FROM alpine:latest

COPY serviio/   /opt/serviio/

RUN apk update && apk upgrade && \
    apk add --no-cache --update \
        ffmpeg \
        openjdk10

VOLUME /opt/Video
VOLUME /opt/Audio

EXPOSE 8895 23423 23424 1900/udp

CMD /opt/serviio/bin/serviio.sh && /opt/serviio/bin/serviio-console.sh