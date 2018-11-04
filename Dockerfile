FROM ruby:2.5.3-alpine3.8

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app

EXPOSE 4567

CMD ./app.rb -o 0.0.0.0
