FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y sqlite3 nodejs
RUN mkdir /tweet_app
WORKDIR /tweet_app
COPY Gemfile /tweet_app/Gemfile
COPY Gemfile.lock /tweet_app/Gemfile.lock
RUN bundle install
COPY . /tweet_app
