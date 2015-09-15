HL7 FHIR Schnittstelle
======================

CDA-Dokumente werden abgeliefert per RESTfull HTTP entsprechend dem FHIR Draft.


�bermitteln von Dokumenten
--------------------------

Um ein Dokument zu �bermitteln wird eine HTTP PUT-Operation
an http://servernamen/aktin/fhir/Binary durchgef�hrt.

Das Ergebnis der Operation wird durch den HTTP-Statuskode
angezeigt. Im Erfolgsfall ist der Statuskode 200 und es wird kein Antwortdokument geliefert.

Im Content-type-header muss immer �text/xml� stehen und ein 
g�ltiges XML-Dokument muss �bermittelt werden. Ist dies nicht der Fall,
wird der Status �415 Unsupported media type� zur�ckgegeben.

Sofern das XML-Dokument (syntaktisch) g�ltig ist, erfolgt anschlie�end eine automatische
Validierung gegen die passenden Schematron-Regeln. Schl�gt die Validierung fehlt, so
wird der Status �422 Unprocessable entity� zur�ckgegeben. 
Zus�tzlich wird die FHIR-XML-Resource �OperationOutcome� zur�ckgeliefert mit 
detaillierten Fehlerbeschreibungen aus dem Schematron-Durchlauf.

Nach erfolgreicher Validierung wird das Dokument verarbeitet und im Data-Warehouse
gespeichert. Treten in diesem Ablauf interne Fehler auf, so wird der
Statuskode �500 Internal Error� zur�ckgeliefert.


Validierung von Dokumenten ohne �bermittlung
--------------------------------------------

Nach HL7 FHIR lassen sich Dokumente validieren, indem eine POST-Operation
an die Adresse �http://servernamen/aktin/fhir/Binary/_validate� durchgef�hrt
wird. Es erfolgen alle Schritte wie bei der �bermittlung von Dokumenten, 
allerdings wird das Dokument verworfen und nicht im Datawarehouse gespeichert.
