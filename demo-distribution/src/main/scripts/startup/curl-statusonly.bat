@ECHO OFF
REM --------------------------------
REM Output HTTP response status only
REM --------------------------------
IF [%1] == [] GOTO usage
IF [%2] == [] GOTO usage

curl --silent -w "%%{http_code}"  -X POST "http://localhost:%1/aktin/fhir/Binary" -H "Content-Type: text/xml" --data-binary "@%2" -o NUL
EXIT

:usage
ECHO Usage: curl-statusonly.bat TCPPORT FILETOSUBMIT