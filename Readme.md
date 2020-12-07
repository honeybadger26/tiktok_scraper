# TikTok Scraper
Scraper for Black Lives Matter posts.
Uses: https://github.com/drawrowfly/tiktok-scraper

# Requirements
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- If using Linux make sure `docker` and `docker-compose` are available at command line

# Instructions
- Edit the `HASHTAGS` array in `scrape.sh` to set the hashtags to scrape
- Edit `NUM_POSTS` in `scrape.sh` to specify number of posts to scrape. This is the number scraped *per* hashtag, not in total.
- Run: `docker-compose up --build`

# Notes
- Combining CSVs and removing duplicate rows: `awk '(NR == 1) || (FNR > 1)' *.csv | awk '!v[$1]++' > combined.csv` Note: Need to fix this