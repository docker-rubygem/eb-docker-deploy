FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.1

RUN gem install eb-docker-deploy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ebd"]
CMD ["--help"]
