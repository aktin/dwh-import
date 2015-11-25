@ECHO OFF
REM ---------------------------
REM Output response from server
REM ---------------------------
IF [%1] == [] GOTO usage
IF [%2] == [] GOTO usage
IF [%3] == [] GOTO localhost

curl --silent -X POST "http://%1:%2/aktin/fhir/Binary" -H "Content-Type: text/xml" --data-binary "@%3"
GOTO end

:localhost
curl --silent -X POST "http://localhost:%1/aktin/fhir/Binary" -H "Content-Type: text/xml" --data-binary "@%2"
GOTO end

:usage
ECHO Usage for localhost: curl-response.bat TCPPORT FILETOSUBMIT
ECHO Usage: curl-response.bat IP-ADDRESS TCPPORT FILETOSUBMIT

:end