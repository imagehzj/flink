FROM ttbb/base:jdk11

ARG version=1.14.2
ARG download=1.14.2-bin-scala_2.12

ENV FLINK_HOME /opt/sh/flink

RUN wget https://downloads.apache.org/flink/flink-$version/flink-$download.tgz  && \
mkdir -p /opt/sh/flink && \
tar -xf flink-$download.tgz -C /opt/sh/flink --strip-components 1 && \
rm -rf flink-$download.tgz

WORKDIR /opt/sh/flink
