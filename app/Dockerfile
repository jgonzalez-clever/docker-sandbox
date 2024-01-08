FROM node:16-alpine

RUN npm install -g ts-node

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install

RUN npm install -g nodemon

EXPOSE 8080

CMD [ "npm", "start" ]
