FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y nodejs default-mysql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
RUN gem install bundler:2.3.22
RUN bundle install
COPY . /myapp
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "8080"]
