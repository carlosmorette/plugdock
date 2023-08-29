FROM elixir:1.12.3

WORKDIR /elixir-app

EXPOSE 4000

COPY lib/ lib
COPY mix.exs .

RUN mix local.hex --force ; mix local.rebar --force
RUN mix deps.get -y
RUN mix deps.get
RUN mix compile