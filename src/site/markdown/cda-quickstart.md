CDA Kurzanleitung
=================

Datensatz Basismodul
--------------------

Der Datensatz für das Basismodul ist auf der Seite 
http://aktin.art-decor.org im aktuellen Release (HTML) 
unter dem Bereich Datensatz einzusehen. 

Weitere inhaltliche Informationen zum Datensatz, sowie eine Vorlage des 
Formulars für eine Implementierung als Eingabeformular im KIS befinden 
sich unter http://notaufnahme.data-set.org/ bzw. 
http://www.notaufnahmeprotokoll.de/site/

Die CDA-Spezifikation basiert auf diesem Datensatz. 
Das Mapping zwischen dem Datensatz und den entsprechenden Elementen im 
CDA ist ebenfalls über die ART-DECOR Seite des AKTIN-Projekts nachvollziehbar.

Fragen bzgl. der medizinischen Inhalte bzw. des Hintergrunds lassen sich 
ggf. durch das PDF-Formular, verfügbar unter http://www.notaufnahmeprotokoll.de/site/downloads/viewcategory/4-modul-basis.html und die [Erläuterungen](Basismodul.pdf) dazu klären. 
Dort sind insbesondere auch die Abgrenzung unklarer Ausprägungen der Valuesets 
näher erläutert.

Technische Fragen zur Umsetzung als CDA-Dokument sollten durch den 
Implementierungsleitfaden auf der ART-DECOR Seite (PDF) beantwortet werden.

Bei weiteren Fragen hilft der [IT-Support](support.html) des AKTIN-Projekts 
gerne weiter.


CDA Verwaltungsinformationen, Constraints und Datenschutz
---------------------------------------------------------

Im Basismodul-CDA gibt es drei IDs, die zwingend korrekt gesetzt werden müssen:
* EncounterID
* PatientID
* SetID

Als Identifier für eine Episode (hier definiert als ein Patientenkontakt, 
für den ein neues Notaufnahmeprotokoll angelegt werden soll) wird das Element 
`/ClinicalDocument/componentOf/encompassingEncounter/id` verwendet. 
`@root` und `@extension` müssen also gleich bleiben, falls ein CDA-Dokument 
nachträglich geändert werden soll. Wenn der Patient erneut die Notaufnahme aufsucht, muss eine andere ID vergeben werden. 

Das Quelldatensystem bzw. der Importer muss also sicherstellen, dass die `EncounterID` 
entsprechend eindeutig ist und bei inhaltlichen Änderungen eines Patientenkontakts 
unverändert bleibt. Dies ist nicht unbedingt gleichzusetzen mit einer Fallnummer oder 
Abrechnungsnummer, da je nach lokaler Umsetzung im KIS mehrere 
Notaufnahme-Formulare einem Fall zugeordnet werden könnten. Je nachdem wie das KIS bzw. die Prozesse strukturiert sind (auch bzgl. nachträglicher Änderungen) sind die IDs entsprechend der beschriebenen Anforderungen zu wählen oder ggf. zu generieren.

Das CDA hat eine `/ClinicalDocument/setId`, die das Dokument eindeutig identifiziert. Für den Import spielt diese ID keine Rolle, aber sie sollte CDA-konform gewählt werden. Beispielsweise könnte man in der root das Basismodul-CDA referenzieren und als extension die eindeutige EncounterID verwenden. Theoretisch wäre bei einer Änderung auch `/ClinicalDocument/versionNumber` zu erhöhen 
– die Schnittstelle beachtet dies aber nicht, sondern überschreibt Informationen 
mit gleicher `EncounterID` (s. o.) und gleicher `PatientID`.

Als Identifier für den Patienten dient im Basismodul-CDA das Element 
`/ClinicalDocument/recordTarget/patientRole/id`. 

Diese ID kann sinnvollerweise mit der Patienten-ID im KIS bzw. einem 
entsprechenden Pseudonym befüllt werden. Diese ID wird nur verwendet 
um Formulare eines Patienten zusammenfassen zu können. 
Vgl. dazu das AKTIN-Datenschutzkonzept. 

Eine Vorverarbeitung/Pseudonymisierung im Quell-System ist nicht notwendig, 
da beim Import die Patienten-IDs mit einem Einweg-Hash verschlüsselt werden 
und somit keine Rück-Zuordnung zu identifizierenden Daten möglich ist, sondern lediglich ein anonymes Mapping zwischen Episoden des gleichen Patienten.

Im AKTIN Data Warehouse werden keine direkt identifizierenden Daten gespeichert 
(vgl. Datenschutzkonzept). Diese Daten könnten bei der CDA-Erzeugung 
im Quell-System bereits weggelassen oder durch Dummy-Einträge ersetzt werden.  Im Sinne eines korrekten CDA-Dokuments ist es aber besser vollständige CDAs mit identifizierenden Daten zu senden. Die identifizierenden Daten werden von 
der krankenhausinternen AKTIN-Schnittstelle nicht verarbeitet oder gespeichert.

Fehlende Information, Null Flavors und Dummy-Einträge
-----------------------------------------------------

Fehlende Informationen (i. e. Teile des CDA-Dokuments, die in der lokalen Notaufnahme grundsätzlich nicht dokumentiert werden oder bei einzelnen Patienten nicht vorhanden sind) sollten nach Möglichkeit entsprechend der CDA-Vorgaben weggelassen oder mit Null Flavors versehen werden.

Knoten bzw. Teilbäume mit der Kardinalität `0..1` sollten weggelassen werden, wenn keine sinnvollen Werte vorhanden sind.

`1..1 R` (required) Elemente können mit `@nullFlavor` Attributen belegt werden. Beispielsweise kann durch `<id nullFlavor="NA"/>` vermieden werden einen wertlosen Dummy-Wert für `<id extension="XYZ" root="1.2.3.4.5"/>` anzugeben.
Auch Zeitpunkte, die im Quellsystem nicht vorhanden sind, können so weggelassen werden: `<effectiveTime nullFlavor="NA"/>`.

Nur Elemente, die `1..1 M` (mandatory) sind, müssen ggf. mit Dummy Werten belegt werden um ein gültiges CDA-Dokument zu erzeugen. Sollten systematisch Informationen fehlen, die im CDA mandatory sind, wenden Sie sich bitte an den [IT-Support](support.html) um zu klären wie die Datenqualität in solchen Fällen möglichst erhalten werden kann.

Strukturierte Einträge vs. Freitext
-----------------------------------

Die CDA Spezifikation besteht aus vielen strukturierten Elementen, definiert aber auch Freitext-Felder, in die die relevanten Informationen eingetragen werden können/sollen.
Die Freitext-Informationen werden durch die AKTIN-Schnittstelle nicht ausgewertet, d. h. jede Information, die nur in Form von Freitexten im CDA vorkommt ist für das Data Warehouse verloren.
Im Sinne einer hohen Datenqualität ist es deshalb notwendig die strukturierten Felder im CDA entsprechend der inhaltlichen Anforderungen des Datensatzes und konform zur CDA-Spezifikation zu füllen - Freitext-Angaben sind insofern rein optional, auch wenn sie z. T. notwendig sind um ein standardkonformes CDA-Dokument zu erzeugen. 

Insbesondere bieten Freitextfelder aus Projekt-Sicht keine auswertbare Möglichkeit Informationen unterzubringen, die nicht in die strukturierten Felder passen.
Hier gibt es einen Unterschied zwischen dem was für das AKTIN Projekt notwendig bzw. sinnvoll ist und was eigentlich im Sinne eines standardkonformen CDA-Dokuments best practice wäre.
Bei Fragen zur Umcodierung/inhaltlichen Anpassung von nur teilweise vorhandenen oder abweichend codierten Daten wenden Sie sich bitte an den [IT-Support](support.html).