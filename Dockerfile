FROM ruby:2.3

RUN apt-get update && apt-get install -y build-essential libsqlite3-dev nodejs
ENV APP_DIR /srv/tracctr
RUN mkdir $APP_DIR
WORKDIR $APP_DIR
ADD Gemfile* $APP_DIR/
RUN bundle install --jobs 8
ADD . $APP_HOME
RUN bundle exec rake db:setup

CMD rails s -b 0.0.0.0
