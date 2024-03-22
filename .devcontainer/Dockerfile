FROM nvidia/cuda:12.3.2-devel-ubuntu20.04 AS build

ARG DEBIAN_FRONTEND=noninteractive

# INSTALL SYSTEM DEPS + OpenCV Deps.
RUN apt-get update && apt-get install -y \
        locales \
        build-essential \
        pkg-config \
        clang \
        libc++-dev \
        cmake \
        git \
        wget \
        curl \
        unzip \
        sudo \
        apt-utils \
        libglfw3-dev \
        lsb-release \
        libglew-dev \
        ffmpeg \
        gdb \
        libgtk2.0-dev \ 
        libxkbcommon-dev \
        python-dev \
        libgstreamer1.0-dev \
        libvtk6-dev \
        libavresample-dev \
        libavcodec-dev \
        libswscale-dev \
        libavformat-dev \
        pip \
    && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8   

WORKDIR /
RUN mkdir bags

WORKDIR /workspaces/HybVIO/3rdparty/mobile-cv-suite
RUN git config --global --add safe.directory "*"

# python3
RUN pip install pathlib numpy