FROM node:alpine

WORKDIR /usr/src/app

RUN npm install -g tiktok-scraper

COPY . .

CMD [ "./scrape.sh" ]