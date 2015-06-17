<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4052
Name: Diagnostik Pelvis X-ray
Description: Diagnostik Template Pelvis X-ray in Emergency Department in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4052-2015-03-27T000000">
   <title>Diagnostik Pelvis X-ray</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]"
         id="tmp-r-3049352d-782d-45bb-b911-c654817f3c61">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])&gt;=1 ">(Pelvisxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])&lt;=1">(Pelvisxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']"
         id="tmp-r-ccc96f90-8a1d-4b0b-b287-60173b42ed4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Pelvisxray): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Pelvisxray): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4052'])&gt;=1 ">(Pelvisxray): Element hl7:templateId[@root='1.2.276.0.76.10.4052'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4052'])&lt;=1">(Pelvisxray): Element hl7:templateId[@root='1.2.276.0.76.10.4052'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Pelvisxray): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Pelvisxray): Element hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Pelvisxray): Element hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Pelvisxray): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Pelvisxray): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Pelvisxray): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Pelvisxray): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Pelvisxray): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Pelvisxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Pelvisxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Pelvisxray): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Pelvisxray): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:templateId[@root='1.2.276.0.76.10.4052']
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:templateId[@root='1.2.276.0.76.10.4052']"
         id="tmp-r-1807e66e-4047-42fd-a052-d7c409f71e7e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4052')">(Pelvisxray): Der Wert von @root MUSS '1.2.276.0.76.10.4052' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:id
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:id"
         id="tmp-r-58b4cace-73cb-451d-96eb-29fa4f1e1c57">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-25ac4434-57a6-4f3a-93fc-cee7fadd465f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="@nullFlavor or (@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')">(Pelvisxray): Der Elementinhalt MUSS einer von 'code '268425006' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text"
         id="tmp-r-1e53a5ea-a7fa-4b07-bab3-06285758a4a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Pelvisxray): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Pelvisxray): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/hl7:reference
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/hl7:reference"
         id="tmp-r-5331c568-a0e5-415b-a4b4-06f4967f14d2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:statusCode[@code='completed']
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:statusCode[@code='completed']"
         id="tmp-r-83921f05-8195-418e-b5f7-4d29fe2c57bf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Pelvisxray): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:effectiveTime
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:effectiveTime"
         id="tmp-r-8934bb5c-5d0b-4f57-9494-f25b12423efc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-8786f23f-b4b8-44ca-b2fd-a868f95febf1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Pelvisxray): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pelvisxray): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-a72a6c9c-8dac-48a3-9138-c713979c9c73">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Pelvisxray): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Pelvisxray): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Pelvisxray): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-baaa75c7-092c-4dcd-b61d-51b61b3863b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Pelvisxray): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Pelvisxray): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Pelvisxray): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-0cb59172-62d6-455e-b4ba-9b2d51daae4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4052-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Pelvisxray): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
