﻿Schnittstellen
==============

Installation
------------
Eine Installation ist nicht erforderlich. Das JAR-Paket kann mit dem Befehl `java -jar <Path/import-demo-XXX.jar>` gestartet werden.

Das jeweils aktuelle Release der CDA-Spezifikation für das Notaufnahmeprotokoll und der dazugehörigen Schematron Regeln sind im JAR enthalten.

HL7 FHIR REST Schnittstelle
------------------
Die REST-Schnittstelle wird auf einem freien Port gestartet, der in der Logdatei ausgegeben wird und ist unter `http://localhost:<Port>/aktin/cda/fhir/Binary` zu erreichen.
Ein CDA-Dokument kann beispielsweise mit dem folgenden Befehl manuell an die Schnittstelle gesendet werden:

```
curl -X POST http://localhost:<Port>/aktin/cda/fhir/Binary -H "Content-Type: text/xml" --data-binary "@<CDA.xml>"
```
Weitere Informationen gibt es unter: [RESTful/HL7 FHIR](hl7-fhir.html)

IHE XDS.b SOAP Schnittstelle
----------------------------
Die SOAP-Schnittstelle wird auf einem  freien Port gestartet, der in der Logdatei ausgegeben wird und ist unter `http://localhost:<Port>/aktin/xds.b` zu erreichen.

Weitere Informationen gibt es unter: [IHE XDS.b SOAP](xds.html)

Rückgabewerte und Fehlermeldungen
---------------------------------
Die Schnittstellen liefern einen Statuscode bzw. das Ergebnis der Schematron-Validierung zurück. Wenn die Schematron-Validierung keine Fehler zurückgibt, ist das gesendete CDA-Dokument von der Schnittstelle akzeptiert und kann ins Data Warehouse geladen werden.
Der tatsächliche Import entfällt bei der Demo-Schnittstelle.

Details zu Rückgabewerten und Fehlermeldungen sind in den Abschnitten zu den beiden Schnittstellen dokumentiert.

Demo-Schnittstelle
------------------
Die Demo-Schnittstelle ist nach außen identisch mit der späteren 
Data Warehouse-Schnittstelle, die die CDA-Dokumente speichert. 
Die Demo-Schnittstelle nimmt die CDA-Dokumente an, führt eine 
Schematron-Validierung durch, gibt eine Rückmeldung und verwirft 
alle Daten. 

Es werden keine Daten gespeichert oder weitergegeben. Ggf. können lokal gespeicherte 
Logdateien entstehen, in denen Teile der übertragenen CDA-Daten 
Daten sichtbar sind.

Belieferung der Schnittstelle
-----------------------------
Die Schnittstelle ist darauf ausgelegt einzelne CDA-Dokumente anzunehmen 
und zu verarbeiten. Die CDA-Erzeugung und der Aufruf durch Komponenten 
des KIS müssen im Kontext des jeweiligen Quellsystems und der hausinternen 
Dokumentationsprozesse betrachtet werden.

Im AKTIN-Projekt sollen tagesaktuelle Daten verarbeitet werden. 
Die Empfehlung ist demzufolge die Notaufnahmeprotokolle zeitnah, 
spätestens 24h nachdem sie vollständig im Quellsystem vorliegen,
an das Data Warehouse zu übermitteln.

Bereits übermittelte CDA-Dokumente können und sollen überschrieben 
werden, wenn sich nachträglich Änderungen ergeben (vgl. Abschnitt 
zur setID in der [Kurzanleitung CDA](cda-quickstart.html)). Es wird auch möglich sein über ein Webinterface importierte 
CDA-Dokumente zu sperren bzw. zu löschen um ein Opt-Out zu realisieren.

Eine mögliche Strategie für die CDA-Erzeugung wäre es z. B. einmal 
täglich alle geänderten Formulare an die Schnittstelle zu schicken.
Eine andere Möglichkeit wäre es die Formulare durch einen geeigneten 
Trigger (z. B. Abschluss/Entlassung) direkt bei der Fertigstellung zu senden.