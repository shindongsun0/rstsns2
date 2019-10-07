FROM node:7
MAINTAINER Daeun Shim <10ekdms01@naver.com>

RUN mkdir -p /app
WORKDIR /app
ADD . /app
ADD app.js /app.js
RUN npm install
ENV NODE_ENV development
EXPOSE 9000 80
CMD ["npm","start"]
