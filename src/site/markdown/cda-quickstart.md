CDA Kurzanleitung
=================

Datensatz Basismodul
--------------------
Der Datensatz für das Basismodul ist auf der Seite 
http://aktin.art-decor.org im aktuellen Release (HTML) 
unter dem Bereich Datensatz einzusehen. Eine PDF-Repräsentation des 
Formulars als Vorlage für eine Implementierung als Eingabeformular 
im KIS liegt dem Release bei.

Die CDA-Spezifikation basiert auf diesem Datensatz. 
Das Mapping zwischen dem Datensatz und den entsprechenden Elementen im 
CDA ist ebenfalls über die ART-DECOR Seite des AKTIN-Projekts nachvollziehbar.

Fragen bzgl. der medizinischen Inhalte bzw. des Hintergrunds lassen sich 
ggf. durch das PDF-Formular und die Erläuterungen dazu klären. 
Dort sind insbesondere auch einige Valuesets näher erläutert.
Technische Fragen zur Umsetzung als CDA-Dokument sollten durch den 
Implementierungsleitfaden auf der ART-DECOR Seite (PDF) beantwortet werden.

Bei weiteren Fragen hilft der [IT-Support](support.html) des AKTIN-Projekts 
gerne weiter.


CDA Verwaltungsinformationen, Constraints und Datenschutz
---------------------------------------------------------
Als Identifier für eine Episode (hier definiert als ein Patientenkontakt, 
für den ein neues Notaufnahmeprotokoll angelegt werden soll) wird das Element 
`/ClinicalDocument/setId` verwendet. 
`@root` und `@extension` müssen also gleich bleiben, falls ein CDA-Dokument 
nachträglich geändert werden soll. 

Theoretisch wäre dann das `/ClinicalDocument/versionNumber` zu erhöhen 
– die Schnittstelle beachtet dies aber nicht, sondern überschreibt Dokumente 
mit gleicher `setId` (s.o.) und legt ein neues Dokument ab, wenn die setId 
sich unterscheidet. 

Das Quelldatensystem bzw. der Importer muss also sicherstellen, dass die setID 
entsprechend eindeutig ist und bei inhaltlichen Änderungen eines Patientenkontakts 
unverändert bleibt. 

Die setId ist nicht unbedingt gleichzusetzen mit einer Fallnummer oder 
Abrechnungsnummer, da je nach lokaler Umsetzung im KIS mehrere 
Notaufnahme-Formulare einem Fall zugeordnet werden könnten.

Als Identifier für den Patienten dient im Basismodul-CDA das Element 
`/ClinicalDocument/recordTarget/patientRole/id`. 

Diese ID kann sinnvollerweise mit der Patienten-ID im KIS bzw. einem 
entsprechenden Pseudonym befüllt werden. Diese ID wird nur verwendet 
um Formulare eines Patienten zusammenfassen zu können. 
Vgl. dazu das AKTIN-Datenschutzkonzept. 

Eine Vorverarbeitung/Pseudonymisierung im Quell-System ist nicht notwendig, 
da beim Import die Patienten-IDs mit einem Einweg-Hash verschlüsselt werden 
und somit keine Rück-Zuordnung zu identifizierenden Daten möglich ist. 

Im AKTIN DWH werden keine direkt identifizierenden Daten gespeichert 
(vgl. Datenschutzkonzept). Diese Daten können bei der CDA-Erzeugung 
im Quell-System bereits weggelassen oder durch Dummy-Einträge ersetzt werden. 

Im Sinne eines korrekten CDA-Dokuments ist es aber auch möglich CDAs mit 
identifizierenden Daten zu senden. Die identifizierenden Daten werden von 
der krankenhausinternen AKTIN-Schnittstelle nicht verarbeitet oder gespeichert.
