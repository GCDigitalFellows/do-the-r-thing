FROM rocker/hadleyverse
MAINTAINER Tahir Butt <me@tahirbutt.com>

RUN set -x \
    && apt-get update \
    && apt-get install -y gdebi-core \
    && wget https://download2.rstudio.org/rstudio-server-pro-1.0.143-amd64.deb \
    && gdebi -n rstudio-server-pro-1.0.143-amd64.deb

RUN adduser --disabled-password --gecos '' dotherthing \
  && echo 'ruready!' | chpasswd

EXPOSE 8787