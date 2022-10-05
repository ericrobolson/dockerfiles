# syntax=docker/dockerfile:experimental
FROM alpine:3.16 AS BUILDER
# Git
RUN apk add git
# Repos
RUN git clone https://github.com/mixxxdj/libkeyfinder.git
RUN git clone https://github.com/evanpurkhiser/keyfinder-cli.git
# Packages
RUN apk add gcc g++
RUN apk add cmake catch2 make
RUN apk add ffmpeg
RUN apk add fftw fftw-dev ffmpeg-dev
# Default args
ARG CMAKE_BUILD_PARALLEL_LEVEL=4

## Installs 
# libkey finder
RUN cd libkeyfinder && cmake -S . -B build
RUN cd libkeyfinder && cmake --build build
RUN cd libkeyfinder && cmake --install build
RUN cd libkeyfinder/build && ctest --parallel ${CMAKE_BUILD_PARALLEL_LEVEL}
# cli
RUN cd keyfinder-cli/ && make
RUN cd keyfinder-cli/ && PREFIX=usr/_installs make install

WORKDIR /
COPY ./run.sh /
ENTRYPOINT [ "sh", "run.sh" ]
