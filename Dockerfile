# peikk0/cv-build

FROM debian:bullseye-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      make \
      texlive-xetex \
      texlive-fonts-extra \
      texlive-fonts-recommended \
 && rm -rf /var/lib/apt/lists/*
