#!/bin/bash

# Array of hashtags to scrape
HASHTAGS=("blacklivesmatter" "blm")

# Number of posts to scrape
NUM_POSTS=3000

# Folder to save output to
OUTPUT_PATH=out

ARGS="-n $NUM_POSTS --filepath $OUTPUT_PATH -t csv --historypath $OUTPUT_PATH"

set -x

# Loop through hashtags and scrape
for HASHTAG in "${HASHTAGS[@]}"
do
    tiktok-scraper hashtag $HASHTAG $ARGS
done

# Combine csv files FIXME
# cd $OUTPUT_PATH
# rm combined.csv
# awk '(NR == 1) || (FNR > 1)' *.csv | awk '!v[$1]++' > combined.csv