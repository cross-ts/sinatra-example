FROM ruby:2.5.3-alpine3.8

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app

CMD ./app.rb
