FROM ruby:2.3.7


RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /tweet_app


WORKDIR /tweet_app


COPY Gemfile /tweet_app/Gemfile
COPY Gemfile.lock /tweet_app/Gemfile.lock




RUN bundle install

# Make port 3000 available to the world outside this container

ADD . /tweet_app
