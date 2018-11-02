FROM ruby:2.5-stretch

MAINTAINER Teddy Wang <gm2racer@gmail.com>

RUN apt-get update \
  && apt-get install -y git ffmpeg vim\
  && hash -r \
  && git clone -b channelsdirect --single-branch git://github.com/f2racer/wallop.git /wallop \
  && cd /wallop \
  && bundle install --standalone --binstubs --local --path vendor/gems --quiet \
  && apt-get purge -y --auto-remove git

WORKDIR /wallop
VOLUME /tmp
EXPOSE 8888
ENV RACK_ENV production
ENTRYPOINT ["script/server"]
