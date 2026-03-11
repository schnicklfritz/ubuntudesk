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
        android-tools-adb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER 1001
