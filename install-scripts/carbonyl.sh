#!/bin/bash

# doesn't work for arm64

apt install -y \
    libgconf-2-4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    libgbm-dev \
    libnss3-dev \
    libxss-dev

wget https://github.com/fathyb/carbonyl/releases/download/v$CARBONYL_VERSION/carbonyl.linux-$ARCH.zip

unzip /opt/install-scripts/*.zip

echo export PATH=$PATH:/opt/install-scripts/carbonyl-$CARBONYL_VERSION >> ~/.bashrc