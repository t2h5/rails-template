FROM ruby:2.7.1

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list &&  \
    apt-get update -y && apt-get install -y yarn

WORKDIR /rails-template
COPY Gemfile Gemfile.lock ./
RUN bundle install
