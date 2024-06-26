FROM node:16-alpine

WORKDIR /opt/app

ENV NODE_ENV production

COPY package*.json ./

RUN npm ci 

COPY . /opt/app

RUN npm install --only=dev && npm run build

CMD [ "npm", "start" ]