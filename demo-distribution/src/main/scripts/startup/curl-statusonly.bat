@ECHO OFF
REM --------------------------------
REM Output HTTP response status only
REM --------------------------------
IF [%1] == [] GOTO usage
IF [%2] == [] GOTO usage
IF [%3] == [] GOTO localhost

curl --silent -w "%%{http_code}"  -X POST "http://%1:%2/aktin/cda/fhir/Binary" -H "Content-Type: text/xml" --data-binary "@%3" -o NUL
GOTO end

:localhost
curl --silent -w "%%{http_code}"  -X POST "http://localhost:%1/aktin/cda/fhir/Binary" -H "Content-Type: text/xml" --data-binary "@%2" -o NUL
GOTO end

:usage
ECHO Usage: curl-statusonly.bat TCPPORT FILETOSUBMIT
ECHO Usage: curl-statusonly.bat IP-ADDRESS TCPPORT FILETOSUBMIT

:end