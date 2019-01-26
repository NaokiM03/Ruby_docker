FROM ruby:latest

ENV LANG C.UTF-8
RUN apt-get update -qq \
	&& apt-get install -y --no-install-recommends build-essential libpq-dev curl zip unzip vim \
  && apt-get clean \
  && rm -fr /var/lib/apt/lists/*
