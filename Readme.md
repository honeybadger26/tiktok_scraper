# TikTok Scraper
Scraper for Black Lives Matter posts.
Uses: https://github.com/drawrowfly/tiktok-scraper

# Instructions
First you will need to create a folder titled `out` in this directory where all output files will be stored

## UNIX
- Install **node**
- Install **tiktok-scraper**: `npm install -g tiktok-scraper`
- Run: `./scrape.sh`

## Docker
```
docker-compose up --build
```

# Notes
- Combining CSVs and removing duplicate rows: `awk '(NR == 1) || (FNR > 1)' *.csv | awk '!v[$1]++' > combined.csv`