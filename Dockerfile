FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=non-interactive

RUN apt-get update \
    && apt-get install -y \
    wget \
    build-essential \
    zlib1g-dev \
    libncurses5-dev \
    libbz2-dev \
    liblzma-dev

RUN wget https://github.com/samtools/samtools/releases/download/1.13/samtools-1.13.tar.bz2 \
    && tar -vxjf samtools-1.13.tar.bz2 \
    && cd samtools-1.13 \
    && make \
    && make install

WORKDIR /data

CMD ["samtools"]
