FROM node:alpine

WORKDIR /usr/src/app

COPY ./package*json ./
VOLUME node_modules
RUN npm install

COPY . .

CMD ["node", "index.js"]