@echo off
setlocal enabledelayedexpansion 
cd flac-1.3.1-icl

set srcPath=D:\Music\Illusions\�½��ļ���\�½��ļ���
set targetPath=D:\Music\Illusions\�½��ļ���\�½��ļ���

set prefix=0
rem ��������mp3��Track Title.ȥ���ļ���ǰ���ݳ��ȣ�Ϊ4ʱ"(01)ţ�к�æ.wav"��Ϊ"ţ�к�æ.wav".

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

flac -f -6 -o "%targetPath%\!tt!.flac" "%srcPath%\!fileFullName!.wav"
set /a index+=1
)

pause
