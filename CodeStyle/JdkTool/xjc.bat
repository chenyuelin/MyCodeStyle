@echo off
set outputPath="D:\work_tools\eclipse\workspace\jaxbsample\src"
set codePackage="com.abc"
set xsdFile="test2.xsd"
"%JAVA_HOME%\bin\xjc.exe" -d %outputPath% -p %codePackage% %xsdFile%
pause