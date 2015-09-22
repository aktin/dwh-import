Schnittstellen
==============

Installation
------------
Eine Installation ist nicht erforderlich. Das JAR-Paket kann mit dem Befehl `java -jar \<Path/import-demo-XXX.jar\>` gestartet werden.

IHE XDS.b SOAP Schnittstelle
----------------------------
Die Schnittstelle wird auf einem  freien Port gestartet, der in der Logdatei ausgegeben wird und ist unter `http://localhost:\<Port\>/aktin/xds.b` zu erreichen.
Informationen zum IHE Profil gibt es unter den folgenden Links:
http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_XDS-2.pdf
http://wiki.ihe.net/index.php?title=XDS.b_Implementation

HL7 FHIR REST Schnittstelle
------------------
Alternativ zur IHE XDS.b Schnittstelle gibt es auch eine einfache REST-Schnittstelle, die ebenfalls auf einem freien Port gestartet wird und unter `http://localhost\[:Port\]/aktin/fhir/Binary zu erreichen ist.
Ein CDA-Dokument kann beispielsweise mit dem folgenden Befehl manuell an die Schnittstelle gesendet werden:

```
curl -X POST http://localhost\[:Port\]/aktin/fhir/Binary -H "Content-Type: text/xml" --data-binary "@\<CDA.xml\>"
```

Rückgabewerte und Fehlermeldungen
---------------------------------
Die REST-Schnittstelle liefert einen http-Statuscode und gibt das Ergebnis der Schematron-Validierung zurück.
Wenn die Schematron-Validierung keine Fehler zurückgibt, ist das gesendete CDA-Dokument von der Schnittstelle akzeptiert und kann ins DataWarehouse geladen werden. Der tatsächliche Import entfällt bei der Demo-Schnittstelle
Das jeweils aktuelle Release der Notaufnahmeprotokoll-CDA-Spezifikation und der dazugehörigen Schematron Regeln sind im JAR enthalten.

Demo-Schnittstelle
------------------
Die Demo-Schnittstelle ist nach außen identisch mit der späteren 
Data-Warehouse-Schnittstelle, die die CDA-Dokumente speichert. 
Die Demo-Schnittstelle nimmt die CDA Dokumente an, führt eine 
Schematron-Validierung durch, gibt eine Rückmeldung und verwirft 
alle Daten. 

Es werden keine Daten gespeichert. Ggf. können lokal gespeicherte 
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
spätestens 24h nachdem sie vollständig im Quellsystem vorliegen
an das Data Warehouse zu übermitteln.

Bereits übermittelte CDA-Dokumente können und sollen überschrieben 
werden, wenn sich nachträglich Änderungen ergeben (vgl. Abschnitt 
zur setID). Es wird auch möglich sein über ein Webinterface importierte 
CDA-Dokumente zu sperren bzw. zu löschen um ein Opt-Out zu realisieren.

Eine mögliche Strategie für die CDA-Erzeugung wäre es z.B. einmal 
täglich alle geänderten Formulare an die Schnittstelle zu schicken.
Eine andere Möglichkeit wäre es die Formulare durch einen geeigneten 
Trigger (z. B. Abschluss/Entlassung) direkt bei der Fertigstellung zu senden.