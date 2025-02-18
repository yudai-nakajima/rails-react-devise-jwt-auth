FROM ruby:3.0.2
RUN apt-get update -qq && \
apt-get install -y nodejs npm && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get install yarn && gem install rails