FROM elixir:1.3

ENV APP_HOME /code

RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME

RUN /usr/local/bin/mix local.hex --force && \
    /usr/local/bin/mix local.rebar --force \
    mix deps.get

