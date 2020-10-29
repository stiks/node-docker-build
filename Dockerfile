FROM node:lts-alpine3.12
MAINTAINER kirill@iterium.co.uk

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# https://stackoverflow.com/questions/52196518/could-not-get-uid-gid-when-building-node-docker
RUN npm config set unsafe-perm true
RUN npm install react-scripts@3.0.1 -g --silent
