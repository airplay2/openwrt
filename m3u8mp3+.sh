
#!/bin/sh
# ffmpeg推送m3u8变MP3流
n=1
FFMPEG(){
stop=0
while [ "$stop" = "0" ];do
echo 这个地方是守护进程的命令
sh /root/m3u8mp3.sh
stop=1
n=$(($n+1))
n=1
done
}
 while true;do
ffmpeg=`ps | grep -E "ffmpeg" | awk -F ' ' {'print $5'} | awk "NR==1"`
if [ "$ffmpeg" = "ffmpeg" ]; then
sleep 5
echo 进程正常
else
echo 好像进程不在
FFMPEG
fi
done



