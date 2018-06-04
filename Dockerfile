FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y sqlite3 nodejs
WORKDIR /mnt
COPY Gemfile /mnt/Gemfile
COPY Gemfile.lock /mnt/Gemfile.lock
RUN bundle install
COPY . /mnt
