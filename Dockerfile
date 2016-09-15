FROM ruby:2.3.1

ENV APP_HOME /code

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
ADD . $APP_HOME

RUN bundle install
