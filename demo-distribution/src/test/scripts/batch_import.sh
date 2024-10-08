#!/bin/bash
for ((i=101;i<=150;i++))
do
    ./msxsl.exe basismodul-v2-beispiel-storyboard01.xml changedates.xsl pid="$i" newtime="201702121122" > target/temp_"$i".xml
    cedis=$(shuf -n 1 encounters_ready.txt | cut -f 12)
    icd=$(shuf -n 1 encounters_ready.txt | cut -f 18)
    ./msxsl.exe target/temp_"$i".xml changevalues.xsl cedis="$cedis" icd="$icd" > target/target_"$i".xml
    target/java-client-fhir.bat http://localhost/aktin/cda/fhir/Binary target/target_"$i".xml
done
