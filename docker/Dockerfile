FROM jenkins/jenkins:lts

ENV DEBIAN_FRONTEND noninteractive
USER root
RUN apt-get update --yes --quiet=2 \
    && apt-get install --yes --no-install-recommends apt-utils \
    && apt-get install --yes --quiet=2 ruby-full \
    && gem install --no-ri --no-rdoc capistrano capistrano-ext
