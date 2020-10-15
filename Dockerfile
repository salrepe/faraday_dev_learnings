# Dockerfile

FROM ruby:2.7.1

WORKDIR /code
COPY Gemfile /code
RUN bundle install
COPY . /code

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
