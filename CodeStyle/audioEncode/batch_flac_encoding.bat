@echo off
setlocal enabledelayedexpansion 
cd flac-1.3.1-icl

set ta=庾澄庆
set tAlbum=九十年代金庸影视剧歌曲精选
set ty=2010
set tg=Anime

set srcPath=D:\Music\Illusions\新建文件夹\新建文件夹
set targetPath=D:\Music\Illusions\新建文件夹\新建文件夹

set prefix=0
rem 用来设置mp3的Track Title.去除文件名前部份长度，为4时"(01)牛仔很忙.wav"变为"牛仔很忙.wav".

set index=1
for %%n in (%srcPath%\*.wav) do (
set fileFullName=%%~nn
set tt=!fileFullName:~%prefix%!
set tn=!index!
if !index! lss 10 (
set tempnum=0!index!
) else (
 set tempnum=!index!
)

flac -f -6 -T Title="!tt!" -T Artist="%ta%" -T Album="%tAlbum%" -T Genre=%tg% -T date=%ty%  -T Track=!tn! -o "%targetPath%\!tt!.flac" "%srcPath%\!fileFullName!.wav"
set /a index+=1
)

pause
