FROM accetto/ubuntu-vnc-xfce-g3:latest

ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        nano \
        netcat-openbsd \
        wget \
        unzip \
        git \
        openjdk-17-jdk \
        android-tools-adb \
        curl \
        iproute2 \
        net-tools \
        nvidia-utils-550 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /workspace && chmod 777 /workspace

RUN echo '<html><head><meta http-equiv="refresh" content="0; url=/vnc.html"></head></html>' \
    > /usr/libexec/noVNCdim/index.html

USER 1001

