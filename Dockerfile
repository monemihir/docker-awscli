FROM alpine:3.14
LABEL maintainer="Mihir Mone <monemihir@hotmail.com>"

RUN apk --no-cache add \
      bash \
      curl \
      less \
      groff \
      jq \
      git \
      python3 \
      py3-pip && \
      pip install --upgrade pip awscli s3cmd && \
      mkdir /root/.aws

COPY get-metadata /usr/local/bin/get-metadata
