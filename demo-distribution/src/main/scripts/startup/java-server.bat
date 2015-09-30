@ECHO OFF
REM ${name}
SET mydir=%~dp0
java -Djava.util.logging.config.file="%mydir%\logging.properties" -cp "%mydir%\lib\*" org.aktin.cda.etl.demo.Server %*
