# syntax=docker/dockerfile:experimental
FROM alpine:3.16 AS BUILDER
RUN apk add musl-dev
RUN apk add git gcc make
RUN git clone https://github.com/ericrobolson/bpm-tools.git
RUN apk add sox
WORKDIR /bpm-tools
RUN make
RUN make install
WORKDIR /
COPY ./run.sh /
ENTRYPOINT [ "sh", "run.sh" ]
