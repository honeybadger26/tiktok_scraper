FROM node:alpine

WORKDIR /usr/src/app

RUN npm install -g tiktok-scraper

COPY . .
RUN chmod +x scrape.sh

CMD [ "./scrape.sh" ]