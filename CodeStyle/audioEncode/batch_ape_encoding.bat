@echo off
setlocal enabledelayedexpansion 
cd 4.12

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
mac "%srcPath%\!fileFullName!.wav" "%targetPath%\!tt!.ape" -c3000
set /a index+=1
)

pause
