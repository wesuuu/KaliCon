ARG TAG=latest
FROM kalilinux/kali-rolling:$TAG

RUN apt-get update && \
    apt-get install \
        lsb-release \
        kali-tools-top10 -y

COPY install-redis.sh /tmp

RUN /tmp/install-redis.sh