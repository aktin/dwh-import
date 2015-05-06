Datenimport (CDA in DWH)
=================
Schnittstelle zwischen Notaufnahme/Klinik und Datawarehouse

Beispiel CDA
------------
Vollständiges CDA-Dokument erstellen, in dem alle Felder verwendet werden. 
Im ersten Schritt mit unrealistischen Daten. Später dann realistische Daten.

REST-Schnittstelle
-----------------
XML-Datei entgegennehmen per REST-Schnittstelle.

Im ersten Schritt reicht HTTP. Wenn die Schnittstelle steht, dann Umstellung
auf SSL+TLS mit Clientauthentifizierung über selbstsigniertes Zertifikat.
Getestet werden kann die REST+TLS-Schnittstelle dann z.B. mit curl, 
um z.B. POST mit xml file+ ssl-zertifikat durchzuführen.

PUT /aktin/dwh/cda oder POST /aktin/dwh/<patid>/<visit>/cda

Abruf via GET /aktin/dwh/<patid>/<visit>/cda


Validation via Schematron 
-------------------------
Einarbeiten in XML-Validation mit Schematron: Transformation Schematron -> XSLT, dann Validation mit XSLT.
Funktioniert das mit dem XSLT-Prozessor der in Java8 enthalten ist? (java.xml.transform)

XSLT-Transformation CDA->DWH
----------------------------
Idealerweise über java.xml.transform ohne externe Abhängigkeiten.

Beim Import des DWH-XML sollen ggf. vorher existierende Daten zum Fall gelöscht werden. Es wird immer
ein vollständiger Fall übertragen.


=== RESTful API ===

PUT /aktin/dwh/<patid>/<visit>/cda
oder PUT /aktin/dwh/cda (wenn Patid und Visit aus Inhalt hervorgeht)

EinfÜgen eines einzelnen CDA dokuments für einzelnen Patienten und Fall ins DWH.
Überschreibt ggf. vorhandenes CDA mit gleicher Fallnr/Patid.

Replies: 
200 OK
xxx Invalid request (e.g. errors in CDA / XML)


DELETE /aktin/dwh/<patid>/<visit>/cda
Löscht ein CDA dokument

POST? /aktin/dwh/patient/merge/12345+789012
Merges two patient identifiers
Replies:
200 OK

DELETE /aktin/dwh/patient/12345
Deletes all Information for a single patient (e.g. opt-out)
Replies:
200 OK
404 Patient not found 

DELETE /aktin/dwh/patients
Deletes all patient information from the data warehouse (factory-reset).
This function must be enabled manually in the DWH configuration.
Replies:
200 OK
40x Access denied (if this feature is not enabled)



Optional (kann später implementiert werden)

GET /patient/12345/43f232/cda
Lädt ein CDA zu einem bestimmten Patienten und Fall.
Auch wenn IDAT nicht gespeichert werden dürfen, kann die Funktion angeboten werden: Die angefragte ID wird über Einweg-Hash auf interne ID abgebildet. Ergebnis wird zurückgeliefert.
Replies:
200 OK
404 Patient not found




=== Implementierung ===
Für jede CDA-Version gibt es zwei Transformationen (XSLT):
1. CDA nach EAV
2. EAV nach CDA

Implementierung von PUT /patient/12345/cda
1. CDA mit Schematron validieren. Fehlermeldung bei Inkonsistenz
2. XSLT CDA -> EAV-XML
3. EAV mit Sax2 prozessieren und transaktionssicher in Datenbank einfügen (erledigt)
4. Erfolg zurückmelden


EAV-XML Schema siehe dwh-eav-example.xml

TODO: Geht das mit jedem Feld des CDA? In der Kodierung aus Krefeld nachsehen! Ggf. Gruppierung verwenden.