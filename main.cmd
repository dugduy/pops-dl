@echo off
title Download Widevine video pops.vn
color a
set /p mpd_url=Mpd url: 
@REM set mpd_url=%*
echo %mpd_url%
yt-dlp %mpd_url% --allow-u -o a
mp4decrypt --key 509ff87e5c905222895cefb94f4a7afd:be7e251f461f44a5e1602ce9c2966b17 a.ff2-v1.mp4 video.mp4
mp4decrypt --key 509ff87e5c905222895cefb94f4a7afd:be7e251f461f44a5e1602ce9c2966b17 a.ff1-a1.m4a audio.m4a
ffmpeg -i video.mp4 -i audio.m4a -c copy final.mp4
echo Done! Your video is output.mp4!!!
pause>nul