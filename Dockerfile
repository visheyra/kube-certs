FROM golang:1.10

ENV KUBECTL_VERSION v1.10.2

RUN apt install openssl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
  chmod +x kubectl && \
  mv kubectl /bin/kubectl

RUN go get -u github.com/cloudflare/cfssl/cmd/...

ENTRYPOINT ["/bin/bash", "-c"]
