FROM ruby:3.3.0-alpine3.18

VOLUME ["/digital_garden"]
WORKDIR /digital_garden
EXPOSE 80

RUN apk add --no-cache --update \
  git \
  build-base \
  libxml2-dev \
  libxslt-dev

RUN gem update --system

COPY digital_garden/Gemfile /Gemfile
# COPY digital_garden/Gemfile.lock /Gemfile.lock
RUN bundle install
RUN mkdir -p /blog

COPY server.sh /server.sh
COPY create.sh /create.sh
COPY build.sh /build.sh
