FROM nvidia/cuda:12.3.2-devel-ubuntu20.04 AS build

ARG DEBIAN_FRONTEND=noninteractive

# INSTALL SYSTEM DEPS + OpenCV Deps.
RUN apt-get update && apt-get install -y \
        build-essential \
        pkg-config \
        clang \
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
    && rm -rf /var/lib/apt/lists/*



WORKDIR /
RUN mkdir bags

WORKDIR /workspaces/HybVIO/3rdparty/mobile-cv-suite
RUN git config --global --add safe.directory "*"