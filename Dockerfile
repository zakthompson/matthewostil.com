FROM ruby:2-alpine as builder

WORKDIR /app

RUN apk update && apk add nodejs yarn build-base mysql mysql-client mysql-dev tzdata \
  && adduser -D ruby \
  && gem install bundler:1.16.1 \
  && mkdir -p /node_modules /usr/local/bundle \
  && chown ruby:ruby -R /node_modules /app /usr/local/bundle

USER ruby

COPY --chown=ruby:ruby Gemfile Gemfile.lock ./
RUN bundle install --without development test

ARG RAILS_ENV="production"
ENV RAILS_ENV="${RAILS_ENV}" \
  USER="ruby"

COPY --chown=ruby:ruby . .

RUN if [ "${RAILS_ENV}" != "development" ]; then \
  bundle exec rails assets:precompile; fi

#======================================================================

FROM ruby:2-alpine as app

WORKDIR /app

RUN apk update && apk add mysql mysql-dev nodejs tzdata \
  && adduser -D ruby && chown ruby:ruby -R /app

USER ruby

COPY --chown=ruby:ruby --from=builder /usr/local/bundle /usr/local/bundle
COPY --chown=ruby:ruby --from=builder /app/public /public
COPY --chown=ruby:ruby . .

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
