FROM ruby
RUN mkdir -p /root/ultroneous.org
WORKDIR /root/ultroneous.org
RUN gem install jekyll bundler
EXPOSE 4000
