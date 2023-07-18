FROM ruby:3.2.2-alpine

# Install dependencies
RUN apk add --update --virtual \
  build-dependencies \
  build-base \
  postgresql-dev \
  tzdata \
  git \
  && rm -rf /var/cache/apk/*

RUN gem install bundler

WORKDIR /app
COPY . /app

ENV BUNDLE_PATH /gems
RUN bundle install

ENTRYPOINT [ "bin/rails" ]
CMD ["server", "-b", "0.0.0.0"]

EXPOSE 3000

