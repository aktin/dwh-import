Demoschnittstelle
=================

Zum Kompilieren `mvn clean install` ausf�hren.

Starten mit `java -jar target/import-demo-0.0.1-SNAPSHOT.jar`.

Daten�bermittlung
-----------------
Die Schnittstelle akzeptiert ausschlie�lich CDA-Dokumente.
Dokumente k�nnen entweder via IHE XDS.b 'Provide and Register Document' �bermittelt werden oder via HL7 FHIR Binary.


IHE XDS.b
---------

TODO: FIX: Output correct URLs in WSDL


HL7 FHIR Mailbox
----------------
Der neue HL7-Standard FHIR erlaubt die �bermittlung von 
Dokumenten �ber RESTful-Schnittstellen. Die AKTIN-Schnittstelle
implementiert die Mailbox, sowie die Validierung. Die Adressen der
RESTful-Dienste entsprechen der Spezifikation mit der base `/fhir/` 

Konkret kann ein CDA-Dokument per HTTP-POST z.B. an die Adresse 
`http://demo.aktin.org/fhir/Binary` gesendet werden.

Fehler oder Erfolg wird �ber den [zur�ckgelieferten Statuscode
indiziert](https://www.hl7.org/fhir/messaging.html#2.3.3.2). Zus�tzlich wird als Antwort 
eine [OperationOutcome resource](https://www.hl7.org/fhir/operationoutcome.html) 
zur�ckgeliefert (siehe auch entsprechendes XSD).

HL7 FHIR Update
---------------
CDA-Dokumente k�nnen via [update]
(https://www.hl7.org/fhir/http.html#update) �bermittelt werden.

Die �bermittlung erfolgt via HTTP PUT /fhir/Binary/<episodennummer>
mit Content-Type: text/xml

Antworten:
- 400 Bad Request, falls das CDA-XML-Dokument Syntaxfehler enth�lt 
  und nicht eingelesen werden kann.
- 422 Unprocessable Entity, falls die Validierung fehlschl�gt. In
  diesem Fall wird eine OperationOutcome resource zur�ckgeliefert (s.o.)
- 200 OK, falls das Dokument verarbeitet wurde.


FHIR Resource
-------------
http://www.hl7.org/implement/standards/fhir/comparison-cda.html
Antwort entweder als xml oder json OperationOutcome.
Einstellbar mit request header Accept: text/xml oder application/json


TODO
-----

Merge von Patienten und Episoden