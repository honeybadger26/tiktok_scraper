FROM node:alpine

WORKDIR /usr/src/app

ARG OUTPUT_PATH
RUN npm install -g tiktok-scraper && \
    mkdir $OUTPUT_PATH

COPY scrape.sh .

CMD [ "./scrape.sh" ]