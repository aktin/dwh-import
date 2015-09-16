Demoschnittstelle
=================

Zum Kompilieren `mvn clean install` ausführen.

Starten mit `java -jar target/import-demo-0.0.1-SNAPSHOT.jar`.

Datenübermittlung
-----------------
Die Schnittstelle akzeptiert ausschließlich CDA-Dokumente.
Dokumente können entweder via IHE XDS.b 'Provide and Register Document' übermittelt 
werden oder via HL7 FHIR Mailbox.


IHE XDS.b
---------




HL7 FHIR Mailbox
----------------
Der neue HL7-Standard FHIR erlaubt die Übermittlung von 
Dokumenten über RESTful-Schnittstellen. Die AKTIN-Schnittstelle
implementiert die Mailbox, sowie die Validierung. Die Adressen der
RESTful-Dienste entsprechen der Spezifikation mit der base ´/fhir/´ 

Konkret kann ein CDA-Dokument per HTTP-POST z.B. an die Adresse 
´https://demo.aktin.org/fhir/Mailbox´ gesendet werden.

Fehler oder Erfolg wird über den [zurückgelieferten Statuscode
indiziert](https://www.hl7.org/fhir/messaging.html#2.3.3.2). Zusätzlich wird als Antwort 
eine [OperationOutcome resource](https://www.hl7.org/fhir/operationoutcome.html) 
zurückgeliefert (siehe auch entsprechendes XSD).

HL7 FHIR Update
---------------
Zusätzlich zur Mailbox-Variante können Dokumente via [update]
(https://www.hl7.org/fhir/http.html#update) übermittelt werden.

Die Übermittlung erfolgt via HTTP PUT /fhir/Binary/<episodennummer>
mit Content-Type: text/xml

Antworten:
- 400 Bad Request, falls das CDA-XML-Dokument Syntaxfehler enthält 
  und nicht eingelesen werden kann.
- 422 Unprocessable Entity, falls die Validierung fehlschlägt. In
  diesem Fall wird eine OperationOutcome resource zurückgeliefert (s.o.)
- 200 OK, falls das Dokument verarbeitet wurde.

HL7 FHIR Validierung
--------------------
HL7 FHIR spezifiziert eine [Möglichkeit zur Dokumentvalidierung](
https://www.hl7.org/fhir/http.html#validate).

Um den Validierungsdienst zu nutzen, kann das zu prüfende CDA-Dokument
z.B. an die Adresse ´https://demo.aktin.org/fhir/Encounter/_validate´ gesendet werden.


FHIR Resource
-------------
http://www.hl7.org/implement/standards/fhir/comparison-cda.html
Antwort entweder als xml oder json OperationOutcome.
Einstellbar mit request header Accept: text/xml oder application/json


TODO
-----

Implementieren von Validate: POST [base]/[type]/_validate{/[id]}
in unserem Fall POST /fhir/Encounter/_validate

sowie Mailbox

Merge von Patienten und Episoden