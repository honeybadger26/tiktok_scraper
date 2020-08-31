const TikTokScraper = require('tiktok-scraper');

(async () => {
    try {
        const options = { 
            number: 10,
            filepath: './out', 
            filetype: 'csv', 
            download: true, 
            noWaterMark: true, 
            hdVideo: true 
        };
        const posts = await TikTokScraper.hashtag('BLACKLIVESMATTER', options);
        console.log(posts);
    } catch (error) {
        console.log(error);
    }
})();