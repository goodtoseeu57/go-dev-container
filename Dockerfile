FROM golang:1.20.4-buster

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils 2>&1 \
    && useradd -s /bin/bash -m chris

RUN apt-get -y install git

RUN chown -R chris:chris /go

USER chris

ENV DEBIAN_FRONTEND=dialog

EXPOSE 8000