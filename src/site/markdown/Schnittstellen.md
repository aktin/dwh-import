Schnittstellen
==============

Installation
------------
Eine Installation ist nicht erforderlich. Das JAR-Paket kann mit dem Befehl ´java -jar \<Path/import-demo-XXX.jar\>´ gestartet werden.

IHE XDS.b SOAP Schnittstelle
----------------------------
Die Schnittstelle wird auf einem  freien Port gestartet, der in der Logdatei ausgegeben wird und ist unter ´http://localhost:\<Port\>/aktin/xds.b´ zu erreichen.
Informationen zum IHE Profil gibt es unter den folgenden Links:
http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_XDS-2.pdf
http://wiki.ihe.net/index.php?title=XDS.b_Implementation

HL7 FHIR REST Schnittstelle
------------------
Alternativ zur IHE XDS.b Schnittstelle gibt es auch eine einfache REST-Schnittstelle, die ebenfalls auf einem freien Port gestartet wird und unter ´http://localhost\[:Port\]/aktin/fhir/Binary zu erreichen ist.
Ein CDA-Dokument kann beispielsweise mit dem folgenden Befehl manuell an die Schnittstelle gesendet werden:

´´´
curl -X POST http://localhost\[:Port\]/aktin/fhir/Binary -H "Content-Type: text/xml" --data-binary "@\<CDA.xml\>"
´´´

Rückgabewerte und Fehlermeldungen
---------------------------------
Die REST-Schnittstelle liefert einen http-Statuscode und gibt das Ergebnis der Schematron-Validierung zurück.
Wenn die Schematron-Validierung keine Fehler zurückgibt, ist das gesendete CDA-Dokument von der Schnittstelle akzeptiert und kann ins DataWarehouse geladen werden. Der tatsächliche Import entfällt bei der Demo-Schnittstelle
Das jeweils aktuelle Release der Notaufnahmeprotokoll-CDA-Spezifikation und der dazugehörigen Schematron Regeln sind im JAR enthalten.

Demo-Schnittstelle
------------------
Die Demo-Schnittstelle ist nach außen identisch mit der späteren Data-Warehouse-Schnittstelle, die die CDA-Dokumente speichert. Die Demo-Schnittstelle nimmt die CDA Dokumente an, führt eine Schematron-Validierung durch, gibt eine Rückmeldung und verwirft alle Daten. Es werden keine Daten übermittelt oder gespeichert. Ggf. können lokal gespeicherte Logdateien entstehen, in denen Teile der übertragenen CDA-Daten Daten sichtbar sind.

Datensatz Basismodul
--------------------
Der Datensatz für das Basismodul ist auf der Seite http://aktin.art-decor.org im aktuellen Release (HTML) unter dem Bereich Datensatz einzusehen. Weitere inhaltliche Informationen zum Datensatz, sowie eine Vorlage des Formulars für eine Implementierung als Eingabeformular im KIS finden Sie unter http://notaufnahme.data-set.org/ bzw. http://www.notaufnahmeprotokoll.de/site/
Die CDA-Spezifikation basiert auf diesem Datensatz. Das Mapping zwischen dem Datensatz und den entsprechenden Elementen im CDA ist ebenfalls über die ART-DECOR Seite des AKTIN-Projekts nachvollziehbar.
Fragen bzgl. der medizinischen Inhalte bzw. des Hintergrunds lassen sich ggf. durch das PDF-Formular und die [Erläuterungen](Basismodul.pdf) dazu klären. Dort ist insbesondere auch die Abgrenzung unklarer Ausprägungen der Valuesets näher erläutert.
Technische Fragen zur Umsetzung als CDA-Dokument sollten durch den Implementierungsleitfaden auf der ART-DECOR Seite (PDF) beantwortet werden.
Bei weiteren Fragen hilft der IT-Support des AKTIN-Projekts gerne weiter.

Belieferung der Schnittstelle
-----------------------------
Die Schnittstelle ist darauf ausgelegt einzelne CDA-Dokumente anzunehmen und zu verarbeiten. Die CDA-Erzeugung und der Aufruf durch Komponenten des KIS müssen im Kontext des jeweiligen Quellsystems und der hausinternen Dokumentationsprozesse betrachtet werden.
Im AKTIN-Projekt sollen tagesaktuelle Daten verarbeitet werden. Die Empfehlung ist demzufolge die Notaufnahmeprotokolle zeitnah, spätestens 24h nachdem sie vollständig im Quellsystem vorliegen an das Data Warehouse zu übermitteln. 
Bereits übermittelte CDA-Dokumente können und sollen überschrieben werden, wenn sich nachträglich Änderungen ergeben (vgl. Abschnitt zur setID). Es wird auch möglich sein über ein Webinterface importierte CDA-Dokumente zu sperren bzw. zu löschen um ein Opt-Out zu realisieren.
Eine mögliche Strategie für die CDA-Erzeugung wäre es z. B. einmal täglich alle geänderten Formulare an die Schnittstelle zu schicken. Eine andere Möglichkeit wäre es die Formulare durch einen geeigneten Trigger (z. B. Abschluss/Entlassung) direkt bei der Fertigstellung zu senden.

CDA Verwaltungsinformationen, Constraints und Datenschutz
---------------------------------------------------------
Als Identifier für eine Episode (hier definiert als ein Patientenkontakt, für den ein neues Notaufnahmeprotokoll angelegt werden soll) wird das Element /ClinicalDocument/setId verwendet. @root und @extension müssen also gleich bleiben, wenn ein CDA-Dokument nachträglich geändert werden soll. Theoretisch wäre dann das /ClinicalDocument/versionNumber zu erhöhen – die Schnittstelle beachtet dies aber nicht, sondern überschreibt Dokumente mit gleicher SetId und legt ein neues Dokument ab, wenn die SetId sich unterscheidet. Das Quelldatensystem bzw. der Importer muss also sicherstellen, dass die setID entsprechend eindeutig ist und bei inhaltlichen Änderungen eines Patientenkontakts unverändert bleibt. Die setId ist nicht unbedingt gleichzusetzen mit einer Fallnummer oder Abrechnungsnummer, da je nach lokaler Umsetzung im KIS mehrere Notaufnahme-Formulare einem Fall zugeordnet werden könnten.
Als Identifier für den Patienten dient im Basismodul-CDA das Element /ClinicalDocument/recordTarget/patientRole/id. Diese ID kann sinnvollerweise mit der Patienten-ID im KIS bzw. einem entsprechenden Pseudonym befüllt werden. Diese ID wird nur verwendet um Formulare eines Patienten zusammenfassen zu können. Vgl. dazu das AKTIN-Datenschutzkonzept. Eine Vorverarbeitung/Pseudonymisierung im Quell-System ist nicht notwendig, da beim Import die Patienten-IDs mit einem Einweg-Hash verschlüsselt werden und somit keine Rück-Zuordnung zu identifizierenden Daten möglich ist. 
Im AKTIN DWH werden keine direkt identifizierenden Daten gespeichert (vgl. Datenschutzkonzept). Diese Daten können bei der CDA-Erzeugung im Quell-System bereits weggelassen oder durch Dummy-Einträge ersetzt werden. Im Sinne eines korrekten CDA-Dokuments ist es aber auch möglich CDAs mit identifizierenden Daten zu senden. Die identifizierenden Daten werden von der krankenhausinternen AKTIN-Schnittstelle nicht verarbeitet oder gespeichert.

Kontakt / Support
-----------------
Die Mitarbeiter der IT-Arbeitspakete im AKTIN-Projekt sind unter it-support@aktin.org zu erreichen und stehen gerne für Fragen zur Verfügung.
