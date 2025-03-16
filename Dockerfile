FROM ruby:3.3

WORKDIR /usr/src/app

COPY app/Gemfile* ./

RUN bundle install

COPY app/ .

RUN chown -R root:root /usr/src/app && chmod -R 777 /usr/src/app

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "4567"]
