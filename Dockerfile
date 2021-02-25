FROM alpine:latest
RUN apk add --no-cache nodejs npm

WORKDIR  /usr/src/app

COPY package*.json ./


RUN npm install


COPY .  .

EXPOSE 4000
ENTRYPOINT [ "node" ]

CMD  ["npm","start"]
