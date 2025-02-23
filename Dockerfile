ARG BASE_TIKA_VERSION="3.1.0.0"

# See: https://github.com/apache/tika-docker/blob/main/full/Dockerfile
FROM apache/tika:${BASE_TIKA_VERSION}-full
ARG UID_GID="35002:35002"

USER root
RUN set -eux \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends tesseract-ocr-nld tesseract-ocr-swe tesseract-ocr-ukr tesseract-ocr-rus \
  && apt-get clean --yes \ 
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Override maintainer label.
LABEL maintainer="Jasper Dijt"

USER $UID_GID
