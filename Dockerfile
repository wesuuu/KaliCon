ARG TAG=latest
ARG ARCH=amd64
FROM kalilinux/kali-rolling:$TAG

RUN echo "deb http://http.us.debian.org/debian jessie main contrib non-free" >> /etc/apt/sources.lst
RUN apt-get update && \
    apt-get install \
        lsb-release \
        gnupg \
        gobuster \
        iputils-ping \
        vsftpd \
        ftp \
        seclists \
        dirb \
        wafw00f \
        whatweb \
        arjun \
        responder \
        john \
        default-mysql-client \
        dnsutils \
        ffuf \
        wfuz \
        kali-tools-top10 -y

COPY ./install-scripts/ /opt/install-scripts


# install scripts
WORKDIR /opt/install-scripts

ENV ARCH=

RUN chmod -R +x . && \
    ./*.sh 

WORKDIR /root