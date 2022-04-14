FROM alpine:3.15
LABEL maintainer="Mihir Mone <monemihir@hotmail.com>"

ARG AWSCLI_VERSION
ARG S3CMD_VERSION

RUN apk --no-cache add \
      bash \
      curl \
      less \
      groff \
      jq \
      git \
      python3 \
      py3-pip && \
      pip install awscli==${AWSCLI_VERSION} s3cmd==${S3CMD_VERSION} && \
      mkdir /root/.aws && \
      aws --version && \
      s3cmd --version

COPY get-metadata /usr/local/bin/get-metadata
