Schnittstellen
==============

Installation
------------
Eine Installation ist nicht erforderlich. Das JAR-Paket kann mit dem Befehl �java -jar \<Path/import-demo-XXX.jar\>� gestartet werden.

IHE XDS.b SOAP Schnittstelle
----------------------------
Die Schnittstelle wird auf einem  freien Port gestartet, der in der Logdatei ausgegeben wird und ist unter �http://localhost:\<Port\>/aktin/xds.b� zu erreichen.
Informationen zum IHE Profil gibt es unter den folgenden Links:
http://www.ihe.net/Technical_Framework/upload/IHE_ITI_TF_Supplement_XDS-2.pdf
http://wiki.ihe.net/index.php?title=XDS.b_Implementation

HL7 FHIR REST Schnittstelle
------------------
Alternativ zur IHE XDS.b Schnittstelle gibt es auch eine einfache REST-Schnittstelle, die ebenfalls auf einem freien Port gestartet wird und unter �http://localhost\[:Port\]/aktin/fhir/Binary zu erreichen ist.
Ein CDA-Dokument kann beispielsweise mit dem folgenden Befehl manuell an die Schnittstelle gesendet werden:

���
curl -X POST http://localhost\[:Port\]/aktin/fhir/Binary -H "Content-Type: text/xml" --data-binary "@\<CDA.xml\>"
���

R�ckgabewerte und Fehlermeldungen
---------------------------------
Die REST-Schnittstelle liefert einen http-Statuscode und gibt das Ergebnis der Schematron-Validierung zur�ck.
Wenn die Schematron-Validierung keine Fehler zur�ckgibt, ist das gesendete CDA-Dokument von der Schnittstelle akzeptiert und kann ins DataWarehouse geladen werden. Der tats�chliche Import entf�llt bei der Demo-Schnittstelle
Das jeweils aktuelle Release der Notaufnahmeprotokoll-CDA-Spezifikation und der dazugeh�rigen Schematron Regeln sind im JAR enthalten.

Demo-Schnittstelle
------------------
Die Demo-Schnittstelle ist nach au�en identisch mit der sp�teren Data-Warehouse-Schnittstelle, die die CDA-Dokumente speichert. Die Demo-Schnittstelle nimmt die CDA Dokumente an, f�hrt eine Schematron-Validierung durch, gibt eine R�ckmeldung und verwirft alle Daten. Es werden keine Daten �bermittelt oder gespeichert. Ggf. k�nnen lokal gespeicherte Logdateien entstehen, in denen Teile der �bertragenen CDA-Daten Daten sichtbar sind.

Datensatz Basismodul
--------------------
Der Datensatz f�r das Basismodul ist auf der Seite http://aktin.art-decor.org im aktuellen Release (HTML) unter dem Bereich Datensatz einzusehen. Weitere inhaltliche Informationen zum Datensatz, sowie eine Vorlage des Formulars f�r eine Implementierung als Eingabeformular im KIS finden Sie unter http://notaufnahme.data-set.org/ bzw. http://www.notaufnahmeprotokoll.de/site/
Die CDA-Spezifikation basiert auf diesem Datensatz. Das Mapping zwischen dem Datensatz und den entsprechenden Elementen im CDA ist ebenfalls �ber die ART-DECOR Seite des AKTIN-Projekts nachvollziehbar.
Fragen bzgl. der medizinischen Inhalte bzw. des Hintergrunds lassen sich ggf. durch das PDF-Formular und die [Erl�uterungen](Basismodul.pdf) dazu kl�ren. Dort ist insbesondere auch die Abgrenzung unklarer Auspr�gungen der Valuesets n�her erl�utert.
Technische Fragen zur Umsetzung als CDA-Dokument sollten durch den Implementierungsleitfaden auf der ART-DECOR Seite (PDF) beantwortet werden.
Bei weiteren Fragen hilft der IT-Support des AKTIN-Projekts gerne weiter.

Belieferung der Schnittstelle
-----------------------------
Die Schnittstelle ist darauf ausgelegt einzelne CDA-Dokumente anzunehmen und zu verarbeiten. Die CDA-Erzeugung und der Aufruf durch Komponenten des KIS m�ssen im Kontext des jeweiligen Quellsystems und der hausinternen Dokumentationsprozesse betrachtet werden.
Im AKTIN-Projekt sollen tagesaktuelle Daten verarbeitet werden. Die Empfehlung ist demzufolge die Notaufnahmeprotokolle zeitnah, sp�testens 24h nachdem sie vollst�ndig im Quellsystem vorliegen an das Data Warehouse zu �bermitteln. 
Bereits �bermittelte CDA-Dokumente k�nnen und sollen �berschrieben werden, wenn sich nachtr�glich �nderungen ergeben (vgl. Abschnitt zur setID). Es wird auch m�glich sein �ber ein Webinterface importierte CDA-Dokumente zu sperren bzw. zu l�schen um ein Opt-Out zu realisieren.
Eine m�gliche Strategie f�r die CDA-Erzeugung w�re es z. B. einmal t�glich alle ge�nderten Formulare an die Schnittstelle zu schicken. Eine andere M�glichkeit w�re es die Formulare durch einen geeigneten Trigger (z. B. Abschluss/Entlassung) direkt bei der Fertigstellung zu senden.

CDA Verwaltungsinformationen, Constraints und Datenschutz
---------------------------------------------------------
Als Identifier f�r eine Episode (hier definiert als ein Patientenkontakt, f�r den ein neues Notaufnahmeprotokoll angelegt werden soll) wird das Element /ClinicalDocument/setId verwendet. @root und @extension m�ssen also gleich bleiben, wenn ein CDA-Dokument nachtr�glich ge�ndert werden soll. Theoretisch w�re dann das /ClinicalDocument/versionNumber zu erh�hen � die Schnittstelle beachtet dies aber nicht, sondern �berschreibt Dokumente mit gleicher SetId und legt ein neues Dokument ab, wenn die SetId sich unterscheidet. Das Quelldatensystem bzw. der Importer muss also sicherstellen, dass die setID entsprechend eindeutig ist und bei inhaltlichen �nderungen eines Patientenkontakts unver�ndert bleibt. Die setId ist nicht unbedingt gleichzusetzen mit einer Fallnummer oder Abrechnungsnummer, da je nach lokaler Umsetzung im KIS mehrere Notaufnahme-Formulare einem Fall zugeordnet werden k�nnten.
Als Identifier f�r den Patienten dient im Basismodul-CDA das Element /ClinicalDocument/recordTarget/patientRole/id. Diese ID kann sinnvollerweise mit der Patienten-ID im KIS bzw. einem entsprechenden Pseudonym bef�llt werden. Diese ID wird nur verwendet um Formulare eines Patienten zusammenfassen zu k�nnen. Vgl. dazu das AKTIN-Datenschutzkonzept. Eine Vorverarbeitung/Pseudonymisierung im Quell-System ist nicht notwendig, da beim Import die Patienten-IDs mit einem Einweg-Hash verschl�sselt werden und somit keine R�ck-Zuordnung zu identifizierenden Daten m�glich ist. 
Im AKTIN DWH werden keine direkt identifizierenden Daten gespeichert (vgl. Datenschutzkonzept). Diese Daten k�nnen bei der CDA-Erzeugung im Quell-System bereits weggelassen oder durch Dummy-Eintr�ge ersetzt werden. Im Sinne eines korrekten CDA-Dokuments ist es aber auch m�glich CDAs mit identifizierenden Daten zu senden. Die identifizierenden Daten werden von der krankenhausinternen AKTIN-Schnittstelle nicht verarbeitet oder gespeichert.

Kontakt / Support
-----------------
Die Mitarbeiter der IT-Arbeitspakete im AKTIN-Projekt sind unter it-support@aktin.org zu erreichen und stehen gerne f�r Fragen zur Verf�gung.
