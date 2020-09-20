FROM node:alpine

WORKDIR /usr/src/app

RUN npm install -g tiktok-scraper

COPY . .
RUN sed -i 's/\r$//' scrape.sh  && \  
    chmod +x scrape.sh

CMD [ "./scrape.sh" ]