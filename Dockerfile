FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    xfce4 xfce4-goodies \
    tigervnc-standalone-server tigervnc-tools \
    openjdk-17-jre \
    mesa-utils libgl1-mesa-dri \
    wget curl sudo dbus-x11 perl \
    && apt-get clean

RUN useradd -m -s /bin/bash headless && \
    echo "headless:dumbfuck#1" | chpasswd && \
    adduser headless sudo

USER headless
WORKDIR /home/headless

# Keep the container running even if VNC isn't started
CMD ["tail", "-f", "/dev/null"]
