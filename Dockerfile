FROM ruby:3.1.3
ARG RUBYGEMS_VERSION=3.3.20

# PostgreSQLクライアントをインストール
RUN apt-get update -qq && apt-get install -y postgresql-client

# yarnパッケージ管理ツールをインストール
RUN apt-get update && apt-get install -y curl apt-transport-https wget gnupg2
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Node.jsをインストール
RUN curl https://deb.nodesource.com/setup_14.x | bash -
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1655A0AB68576280
RUN apt-get update && apt-get install -y nodejs

RUN mkdir /web
WORKDIR /web

# Gemをインストール
ADD Gemfile /web/Gemfile
ADD Gemfile.lock /web/Gemfile.lock
RUN gem install bundler
RUN cd /web
RUN gem update --system ${RUBYGEMS_VERSION} && \
    bundle install
COPY . /web

# Railsサーバーの起動
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
