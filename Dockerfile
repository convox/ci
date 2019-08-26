FROM golang:1.12

RUN curl -s https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | \
  tar -C /usr/bin --strip-components 1 -xz

RUN curl -Ls https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl -o /usr/bin/kubectl && \
  chmod +x /usr/bin/kubectl

WORKDIR /

COPY . .

CMD ["bash", "-c"]
