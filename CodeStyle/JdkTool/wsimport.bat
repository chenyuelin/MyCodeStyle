@echo off
set outputPath="d:/wsSample"
set codePackage="com.ws"
set wsdlUrl="http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx?wsdl"
"%JAVA_HOME%\bin\wsimport.exe" -extension -s %outputPath% -p %codePackage% %wsdlUrl%
pause