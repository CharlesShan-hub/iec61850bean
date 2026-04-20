::BATCH file to windows
@echo off

set BATDIR=%~dp0
set LIBDIR="%BATDIR%..\build\libs-all\*"

java -Djxer.asnDir=D:\project\work\standard\xer\asn -Dlogback.configurationFile=logback.xml -cp %LIBDIR% com.beanit.iec61850bean.app.ConsoleClient %*
