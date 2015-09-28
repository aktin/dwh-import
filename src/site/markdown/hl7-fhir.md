HL7 FHIR Schnittstelle
======================

CDA-Dokumente werden abgeliefert per RESTfull HTTP entsprechend dem FHIR Draft.


Übermitteln von Dokumenten
--------------------------

Um ein Dokument zu übermitteln wird eine HTTP PUT-Operation
an http://servernamen/aktin/fhir/Binary durchgeführt.

Das Ergebnis der Operation wird durch den HTTP-Statuskode
angezeigt. Im Erfolgsfall ist der Statuskode 200 und es wird kein Antwortdokument geliefert.

Im Content-type-header muss immer `text/xml` stehen und ein 
gültiges XML-Dokument muss übermittelt werden. Ist dies nicht der Fall,
wird der Status `415 Unsupported media type` zurückgegeben.

Sofern das XML-Dokument (syntaktisch) gültig ist, erfolgt anschließend eine automatische
Validierung gegen die passenden Schematron-Regeln. Schlägt die Validierung fehlt, so
wird der Status `422 Unprocessable entity` zurückgegeben. 
Zusätzlich wird die FHIR-XML-Resource `OperationOutcome` zurückgeliefert mit 
detaillierten Fehlerbeschreibungen aus dem Schematron-Durchlauf.

Nach erfolgreicher Validierung wird das Dokument verarbeitet und im Data-Warehouse
gespeichert. Treten in diesem Ablauf interne Fehler auf, so wird der
Statuskode `500 Internal Error` zurückgeliefert.


Validierung von Dokumenten ohne Übermittlung
--------------------------------------------

Nach HL7 FHIR lassen sich Dokumente validieren, indem eine POST-Operation
an die Adresse `http://servernamen/aktin/fhir/Binary/_validate` durchgeführt
wird. Es erfolgen alle Schritte wie bei der Übermittlung von Dokumenten, 
allerdings wird das Dokument verworfen und nicht im Datawarehouse gespeichert.
