
#!/bin/sh
# ffmpeg推送m3u8变MP3流
FFMPEG(){
stop=0
while [ "$stop" = "0" ];do
ffmpeg -re -i "http://ngcdn001.cnr.cn/live/zgzs/index.m3u8" -ar 44100 -threads 1 -ac 1 -f mp3 "icecast://source:hackme@192.168.31.1:8001/zgzs1"
stop=1
done
}
 while true;do
ffmpeg=`ps | grep -E "ffmpeg" | awk -F ' ' {'print $5'} | awk "NR==1"`
if [ "$ffmpeg" = "ffmpeg" ]; then
sleep 4
echo Streaming succeeded
else
stop=0
FFMPEG
fi
done
