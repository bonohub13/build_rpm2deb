FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

COPY ./build.bash ./

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    apt-utils \
    alien \
    libaio1 \
    unixodbc \
    bc
