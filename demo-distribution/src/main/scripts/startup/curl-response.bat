@ECHO OFF
REM ---------------------------
REM Output response from server
REM ---------------------------
IF [%1] == [] GOTO usage
IF [%2] == [] GOTO usage

curl --silent -X POST "http://localhost:%1/aktin/fhir/Binary" -H "Content-Type: text/xml" --data-binary "@%2"
EXIT

:usage
ECHO Usage: curl-response.bat TCPPORT FILETOSUBMIT