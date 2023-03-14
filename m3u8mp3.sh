#!/bin/sh

ffmpeg -re -i "http://ngcdn001.cnr.cn/live/zgzs/index.m3u8" -ar 44100 -threads 1 -ac 1 -f mp3 "icecast://source:hackme@192.168.1.36:8888/stream"
