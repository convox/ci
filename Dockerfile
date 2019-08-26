FROM ubuntu:18.04

RUN apt-get update && apt-get -y install curl

RUN curl -s https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | \
  tar -C /usr/bin --strip-components 1 -xz

COPY ci /ci

ENTRYPOINT ["/ci"]
