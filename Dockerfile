FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gcc \
    bzip2 \
    make \
    libncurses5-dev \
    libbz2-dev \
    liblzma-dev \
    zlib1g-dev \
    libcurl4-gnutls-dev  # or libcurl4-openssl-dev

# Download and install samtools
RUN wget https://github.com/samtools/samtools/releases/download/1.13/samtools-1.13.tar.bz2 \
    && tar -vxjf samtools-1.13.tar.bz2 \
    && cd samtools-1.13 \
    && make \
    && make install
