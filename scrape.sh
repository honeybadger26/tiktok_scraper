#!/bin/sh

ARGS="-n $NUM_POSTS --filepath $OUTPUT_PATH -t csv --historypath $OUTPUT_PATH"

set -x

# Read from file and scrape
dos2unix < hashtags.txt |
while IFS= read HASHTAG; do
    tiktok-scraper hashtag $HASHTAG $ARGS
done

# Combine csv files 
# FIXME
# cd $OUTPUT_PATH
# rm combined.csv
# awk '(NR == 1) || (FNR > 1)' *.csv | awk '!v[$1]++' > combined.csv