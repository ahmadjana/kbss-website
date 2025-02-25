FROM ruby:3

RUN bundle config --global frozen 1

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock minimal-mistakes-jekyll.gemspec ./

RUN bundle install

VOLUME /srv/jekyll

EXPOSE 4000

CMD ["jekyll", "serve"]
