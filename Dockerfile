ARG TAG=latest
FROM kalilinux/kali-rolling:$TAG

RUN echo "deb http://http.us.debian.org/debian jessie main contrib non-free" >> /etc/apt/sources.lst
RUN apt-get update && \
    apt-get install \
        lsb-release \
        gnupg \
        gobuster \
        iputils-ping \
        default-mysql-client \
        kali-tools-top10 -y

COPY ./install-scripts/ /opt/install-scripts

# install scripts
WORKDIR /opt/install-scripts

RUN chmod -R +x . && \
    ./redis.sh 

WORKDIR /root