<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4055
Name: Diagnostik Computed tomography of entire head
Description: Diagnostik Template Computed tomography of entire head in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4055-2015-03-27T000000">
   <title>Diagnostik Computed tomography of entire head</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]"
         id="tmp-r-3cd29f8b-25d7-4195-b507-743f5d8fcaf2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])&gt;=1 ">(Computedtomographyofentirehead): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])&lt;=1">(Computedtomographyofentirehead): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']"
         id="tmp-r-1b299786-0c50-4152-b3ae-b3228dc4aa32">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Computedtomographyofentirehead): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Computedtomographyofentirehead): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4055'])&gt;=1 ">(Computedtomographyofentirehead): Element hl7:templateId[@root='1.2.276.0.76.10.4055'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4055'])&lt;=1">(Computedtomographyofentirehead): Element hl7:templateId[@root='1.2.276.0.76.10.4055'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Computedtomographyofentirehead): Element hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Computedtomographyofentirehead): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Computedtomographyofentirehead): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Computedtomographyofentirehead): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Computedtomographyofentirehead): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Computedtomographyofentirehead): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Computedtomographyofentirehead): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:templateId[@root='1.2.276.0.76.10.4055']
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:templateId[@root='1.2.276.0.76.10.4055']"
         id="tmp-r-99523165-1525-445b-83db-00735244c4f3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4055')">(Computedtomographyofentirehead): Der Wert von @root MUSS '1.2.276.0.76.10.4055' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:id
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:id"
         id="tmp-r-c6f9d8ac-6ee5-4512-add7-ca327dac059c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-2e355c0b-fc97-4990-a4c9-b3806c76227c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="@nullFlavor or (@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von 'code '408754009' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text"
         id="tmp-r-5586e7db-54b3-4b81-a0ff-42dbdc0c062e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Computedtomographyofentirehead): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Computedtomographyofentirehead): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/hl7:reference
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/hl7:reference"
         id="tmp-r-d984fe41-6b5f-49bc-ab80-ce21e94f08ac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:statusCode[@code='completed']
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:statusCode[@code='completed']"
         id="tmp-r-06b2a5d5-ac18-409c-805d-8eb7f9984c34">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:effectiveTime
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:effectiveTime"
         id="tmp-r-f55c73ee-e711-4ebd-90a2-4ed37200913b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-15e0ee75-1795-4c6e-8907-dfdf43cc3120">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Computedtomographyofentirehead): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-5002fd16-76da-4cc0-a544-908c6ea64f03">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Computedtomographyofentirehead): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Computedtomographyofentirehead): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-353e83fb-3751-4dcc-958a-35f20fbadb7f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Computedtomographyofentirehead): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Computedtomographyofentirehead): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-14f99280-4f16-4a60-ae76-ed2a8c8d3c7b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4055-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
