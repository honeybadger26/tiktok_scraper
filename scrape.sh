#!/bin/sh

ARGS="-d --hd -w -n $NUM_FILES --filepath $OUTPUT_PATH -t csv -s --historypath $OUTPUT_PATH"

set -x

for HASHTAG in "blacklivesmatter" "blm"
do
    tiktok-scraper hashtag $HASHTAG $ARGS
done