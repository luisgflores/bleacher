FROM alpine:3.12.4
RUN apk update
RUN apk add build-base make ruby-full ruby-dev
RUN gem install rubocop -v 0.73.0
RUN gem install rubocop-gitlab-security -v 0.1.1

