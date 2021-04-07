FROM alpine:3.12.4
RUN apk update
RUN apk add npm bash
RUN npm install -g n
RUN n stable
RUN PATH=$PATH
RUN npm install -g eslint
