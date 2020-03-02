FROM alpine:latest

COPY serviio/   /opt/serviio/

RUN apk update && apk upgrade && \
    apk add --no-cache --update \
        ffmpeg \
        x264-libs \
		x264 \
		x265 \
        alsa-lib \
		expat \
		lame \
		opus \
        libvpx \
		libdrm \
        opus \
		libffi \
		libjpeg-turbo \
		libtheora \
		libogg \
		libpciaccess \
        openjdk10

VOLUME /opt/Video
VOLUME /opt/Audio
VOLUME /opt/Images
VOLUME /opt/serviio/config
VOLUME /opt/serviio/log


EXPOSE 8895 23423 23424 1900/udp

CMD /opt/serviio/bin/serviio.sh && /opt/serviio/bin/serviio-console.sh