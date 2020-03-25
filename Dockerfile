FROM node:12-alpine

RUN mkdir /poster
WORKDIR /poster

COPY . /poster
RUN npm install

CMD node server.js
