@ECHO OFF
REM Distribution
SET mydir=%~dp0
java -Djava.util.logging.config.file="%mydir%\logging.properties" -cp "%mydir%\lib\*" de.sekmi.histream.impl.RunConfiguration %*
