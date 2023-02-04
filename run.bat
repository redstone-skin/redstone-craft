@echo off

set YGGDRASIL_URL=https://mcskin.cn/api/yggdrasil
set AUTHLIB_AGENT=authlib-injector-1.2.1.jar
set JAVA_BIN=java
set JAR_NAME=paper-1.19.3-386.jar
set JVM_ARGS=-javaagent:%AUTHLIB_AGENT%=%YGGDRASIL_URL% -jar %JAR_NAME%
set MC_ARGS=nogui

set BOOT_CMD=%JAVA_BIN% %JVM_ARGS% %MC_ARGS%

:RUN_SERVER
echo Server will start in 5s. Use CTRL+C to cancel.
ping 127.0.0.1>nul
%BOOT_CMD%

goto RUN_SERVER
pause