@echo off
setlocal enabledelayedexpansion 
cd 3.99.5

set srcPath=D:\�½��ļ���\
set targetPath=F:\����\���� - ���\

set ta=����
set tl=���
set ty=2002
set tg=Pop


set prefix=10
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
lame --vbr-old -h --tt "!tt!" --ta "%ta%" --tl "%tl%" --ty "%ty%" --tn !tn! --tg %tg% "%%n" "%targetPath%\%%~nn.mp3"
set /a index+=1
)

pause
