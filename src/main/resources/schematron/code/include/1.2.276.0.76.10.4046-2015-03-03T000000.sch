<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4046
Name: Pupillenweite
Description: Pupillenweite (rechts/links)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4046-2015-03-03T000000">
   <title>Pupillenweite</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]"
         id="tmp-r-6fcfd10e-9318-4af7-ad90-46bac52405ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'])&gt;=1 ">(Pupilsize): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'])&lt;=1">(Pupilsize): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']"
         id="tmp-r-4851b1bd-307e-4d3f-8ccc-7aac2574c917">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Pupilsize): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Pupilsize): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4046'])&gt;=1 ">(Pupilsize): Element hl7:templateId[@root='1.2.276.0.76.10.4046'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4046'])&lt;=1">(Pupilsize): Element hl7:templateId[@root='1.2.276.0.76.10.4046'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 ">(Pupilsize): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:id)&lt;=1">(Pupilsize): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Pupilsize): Element hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Pupilsize): Element hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Pupilsize): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Pupilsize): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Pupilsize): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Pupilsize): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Pupilsize): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Pupilsize): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(Pupilsize): Element hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(Pupilsize): Element hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:templateId[@root='1.2.276.0.76.10.4046']
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:templateId[@root='1.2.276.0.76.10.4046']"
         id="tmp-r-8bd9f08b-6f14-4281-8057-b9d1cbfaefed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4046')">(Pupilsize): Der Wert von @root MUSS '1.2.276.0.76.10.4046' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:id
Item: (Pupilsize)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-149a969b-21b0-4a52-a795-3c93a90c4dc4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="@nullFlavor or (@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')">(Pupilsize): Der Elementinhalt MUSS einer von 'code '363953003' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text"
         id="tmp-r-41536a34-b313-4a10-bbd6-33ad35777166">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Pupilsize): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Pupilsize): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text/hl7:reference
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text/hl7:reference"
         id="tmp-r-7010a70c-5091-453d-8958-db876979c70e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:statusCode[@code='completed']
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:statusCode[@code='completed']"
         id="tmp-r-87b61755-e495-4c1a-88a7-7774612e6ae0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Pupilsize): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:effectiveTime
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:effectiveTime"
         id="tmp-r-d592c150-3a4b-49f2-ab9c-0aa694738ff1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-e067997e-ed3a-46ce-b809-331c0241aa50">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Pupilsize): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.49 Pupillenweite (quantitativ) (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pupilsize): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.49 Pupillenweite (quantitativ) (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (Pupilsize)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-11293a28-0587-46c1-8ccf-6381b6f8c339">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilsize): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Pupilsize): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.48 Auge links/rechts/beidseits (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4046-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pupilsize): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.48 Auge links/rechts/beidseits (DYNAMIC).</assert>
   </rule>
</pattern>