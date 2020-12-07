FROM node:alpine

WORKDIR /usr/src/app

RUN apk update && \
    apk add bash && \
    npm install -g tiktok-scraper

COPY . .
RUN sed -i 's/\r$//' scrape.sh  && \  
    chmod +x scrape.sh

CMD [ "./scrape.sh" ]