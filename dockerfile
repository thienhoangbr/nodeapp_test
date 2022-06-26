FROM alpine
RUN apk add --update nodejs npm

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
