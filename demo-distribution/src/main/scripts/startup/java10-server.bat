@ECHO OFF
REM AKTIN : DWH Import : Demo Distribution
SET mydir=%~dp0
java -Xmx1024m -Djava.util.logging.config.file="%mydir%\logging.properties" -cp "%mydir%\lib\*" --add-modules java.activation,java.xml.bind,java.xml.ws --patch-module java.xml.ws.annotation=lib/javax.annotation-api-1.2.jar org.aktin.cda.etl.demo.Server %*
