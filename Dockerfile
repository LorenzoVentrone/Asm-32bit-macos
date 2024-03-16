# Use the official Ubuntu 20.04 LTS image as the base image
FROM ubuntu:20.04

# Set environment variables for 32-bit compilation on a macOS host
ENV CFLAGS="-m32" \
    LDFLAGS="-m32"

# Install required packages
RUN apt-get update && \
    apt-get install -y \
    nasm \
    gdb \
    && rm -rf /var/lib/apt/lists/*

# Set up a working directory
WORKDIR /usr/src/app

