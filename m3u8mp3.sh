#!/bin/sh

ffmpeg -re -i "http://ngcdn001.cnr.cn/live/zgzs/index.m3u8" -ar 44100 -threads 1 -ac 1 -f mp3 "icecast://source:hackme@192.168.31.1:8001/zgzs1"
