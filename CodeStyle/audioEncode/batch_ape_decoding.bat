@echo off
setlocal enabledelayedexpansion 
cd 4.12

set srcPath=D:\Music\Illusions\�½��ļ���
set targetPath=D:\Music\Illusions\�½��ļ���\�½��ļ���

set prefix=3
rem ��������mp3��Track Title.ȥ���ļ���ǰ���ݳ��ȣ�Ϊ4ʱ"(01)ţ�к�æ.wav"��Ϊ"ţ�к�æ.wav".

set index=1
for %%n in (%srcPath%\*.ape) do (
set fileFullName=%%~nn
set tt=!fileFullName:~%prefix%!
set tn=!index!
if !index! lss 10 (
set tempnum=0!index!
) else (
 set tempnum=!index!
)
mac "%srcPath%\!fileFullName!.ape" "%targetPath%\!tt!.wav" -d
set /a index+=1
)

pause
