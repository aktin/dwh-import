<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4038
Name: Zuweisung mit Zuweiser
Description: Zuweiser
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4038-2015-09-18T000000">
   <title>Zuweisung mit Zuweiser</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]"
         id="tmp-r-730626bb-b37e-4bdd-9767-d66cad81b463">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])&gt;=1 ">(Referralfrom): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])&lt;=1">(Referralfrom): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']"
         id="tmp-r-f8ec253d-87f3-4d65-9b21-a9b7055137d9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@classCode)=('PCPR')">(Referralfrom): Der Wert von @classCode MUSS 'PCPR' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@moodCode)=('RQO')">(Referralfrom): Der Wert von @moodCode MUSS 'RQO' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4038'])&gt;=1 ">(Referralfrom): Element hl7:templateId[@root='1.2.276.0.76.10.4038'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4038'])&lt;=1">(Referralfrom): Element hl7:templateId[@root='1.2.276.0.76.10.4038'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Referralfrom): Element hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Referralfrom): Element hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Referralfrom): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participant)&gt;=1 and not(hl7:participant/@nullFlavor)">(Referralfrom): Element hl7:participant ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participant)&lt;=1">(Referralfrom): Element hl7:participant kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:templateId[@root='1.2.276.0.76.10.4038']
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:templateId[@root='1.2.276.0.76.10.4038']"
         id="tmp-r-463321a5-81b7-4430-bfb3-30483e3a2685">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4038')">(Referralfrom): Der Wert von @root MUSS '1.2.276.0.76.10.4038' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-3df52692-cae3-4f85-a49f-3494989b621b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="@nullFlavor or (@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')">(Referralfrom): Der Elementinhalt MUSS einer von 'code '11293-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text"
         id="tmp-r-21f5d280-6aee-4733-9f3b-d0f30e585193">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Referralfrom): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Referralfrom): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/hl7:reference
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/hl7:reference"
         id="tmp-r-236bf43c-1956-4e5d-b3ce-2a704c9a4303">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant"
         id="tmp-r-deb553c5-bd55-4be7-8580-f6d155926c8b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@typeCode)=('AUT')">(Referralfrom): Der Wert von @typeCode MUSS 'AUT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participantRole)&gt;=1 ">(Referralfrom): Element hl7:participantRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participantRole)&lt;=1">(Referralfrom): Element hl7:participantRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole"
         id="tmp-r-a92e6310-180e-4e30-8c4d-e202564f09f4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@classCode)=('AGNT')">(Referralfrom): Der Wert von @classCode MUSS 'AGNT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Referralfrom): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Referralfrom): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-032502fc-ce26-49a7-90e3-d69cf46e7424">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Referralfrom): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.42 Zuweiser (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Referralfrom): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.42 Zuweiser (DYNAMIC).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:originalText)&lt;=1">(Referralfrom): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:originalText
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:originalText"
         id="tmp-r-69cb8be4-d22f-453f-9426-866d71814661">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
</pattern>