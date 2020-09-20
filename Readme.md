# TikTok Scraper
Scraper for Black Lives Matter posts.
Uses: https://github.com/drawrowfly/tiktok-scraper

# Requirements
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- If using Linux make sure `docker` and `docker-compose` are available at command line

# Instructions
- Edit `hashtags.txt` to include required hashtags to scrape. Note: The last line of the this file needs to be empty
- Edit `NUM_POSTS` inside `docker-compose.yml` to specify number of posts to scrape. This is the number scraped *per* hashtag, not in total.
- Run: `docker-compose up --build`

# Notes
- Combining CSVs and removing duplicate rows: `awk '(NR == 1) || (FNR > 1)' *.csv | awk '!v[$1]++' > combined.csv` Note: Need to fix this