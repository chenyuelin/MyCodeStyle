@echo off
setlocal enabledelayedexpansion 
cd 3.99.5

set srcPath=D:\新建文件夹\
set targetPath=F:\音乐\阿杜 - 天黑\

set ta=阿杜
set tl=天黑
set ty=2002
set tg=Pop


set prefix=10
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
lame --vbr-old -h --tt "!tt!" --ta "%ta%" --tl "%tl%" --ty "%ty%" --tn !tn! --tg %tg% "%%n" "%targetPath%\%%~nn.mp3"
set /a index+=1
)

pause
