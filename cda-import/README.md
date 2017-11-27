CDAs werden transformiert mit cda-eav/*.xsl zu eav-data XML.
Es ist wichtig, dass bei mehreren CDA-Modulen (die beim gleichen Patient und Fall dokumentiert werden) NICHT die gleichen concept_codes erzeugt werden. Dies w�rde unique constraints
der Tabelle observation_fact verletzen.


List of AKTIN module IDs:
- *base* Basismodul
- *monitor* �berwachung
- *trauma* Trauma
- *anae* Anaesthesie
- *consult* Konsil

Release Notes for next version:

- Entlasszeitpunkt ist nun optional.
- FHIR Spezifikation erweitert umgesetzt mit Conformance resource