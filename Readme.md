# TikTok Scraper
Scraper for Black Lives Matter posts.
Uses: https://github.com/drawrowfly/tiktok-scraper

# Instructions
First you will need to create a folder titled `out` in this directory
## Locally
- Install node
- Run: `npm install && node index.js`

## Docker
### Windows
```
docker build -t tiktok_scraper . && docker run -it --rm -v %cd%\out:/usr/src/app/out tiktok_scraper
```
### UNIX
```
docker build -t tiktok_scraper . && docker run -it --rm -v `pwd`\out:/usr/src/app/out tiktok_scraper
```