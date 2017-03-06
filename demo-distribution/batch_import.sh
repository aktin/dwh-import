#!/bin/bash
for ((i=101;i<=110;i++))
do
    msxsl.exe basismodul-v2-beispiel-storyboard01.xml changedates.xsl pid="$i" newtime="201701071122" > temp/target_"$i".xml
    cedis=$(shuf -n 1 encounters_ready.txt | cut -f 12)  #erst cut, dann mit sed leere elemente weg, dann shuf
    msxsl.exe temp/target_"$i".xml changevalues.xsl cedis="$cedis" > target_"$i".xml
    target/0.7extract/java-client-fhir.bat http://localhost/aktin/cda/fhir/Binary target_"$i".xml
done
