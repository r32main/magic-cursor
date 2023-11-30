FROM node:8-alpine

LABEL author="Alex Mubarakshin"

WORKDIR /application

COPY /package.json ./

RUN npm install

COPY /client ./client
COPY /server.js ./

ENV PORT 3000

CMD ["sh", "-c", "node server.js -p ${PORT}"]