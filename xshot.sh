#!/bin/bash
# Take screenshot of Screen 15 seconds after the script is executed
# Handy if you want to take screenshots of Games in Fullscreen in GNU / Linux and FreeBSD
# The script requires import (part of ImageMagick)
# 300 secs (5 mins)
seconds='300';
screenshot_dir='screenshots'/$(date +'%Y%m%d');
if [ ! -d "$screenshot_dir" ]; then
    mkdir -p "$screenshot_dir";
fi
while [ 1 ]; do
    sleep $seconds;
    (scrot "$screenshot_dir"/'%Y%m%d-%H:%M:%S.png') &
done
