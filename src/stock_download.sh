#!/usr/bin/env bash

# Bash script
# Topic: Download daily stock price from Yahoo
# Author: Prasert Kanawattanachai
# Last updated: 2021-10-05
# GitHub: https://github.com/prasertcbs
# YouTube: https://www.youtube.com/prasertcbs

from_unix_time=$(date --date='20210901EDT' +"%s")
to_unix_time=$(date --date='20210910EDT' +"%s")
# stock="MSFT"

# for stock in fb scb.bk aapl; do
for stock in $(<bank.txt); do
    stock=${stock^^}
    url="https://query1.finance.yahoo.com/v7/finance/download/${stock}?period1=${from_unix_time}&period2=${to_unix_time}&interval=1d&events=history&includeAdjustedClose=true"
    echo $url
    curl -o "${stock}.csv" "${url}"
    # cat "${stock}.csv"
done
