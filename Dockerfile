FROM ruby:3.0

RUN apt-get update -qq && apt-get install -y nodejs 


# syntax=docker/dockerfile:1
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

#CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["bash"]
