<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4053
Name: Diagnostik Plain radiography limb structure
Description: Diagnostik Template Plain radiography limb structure in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4053-2015-03-27T000000">
   <title>Diagnostik Plain radiography limb structure</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]"
         id="tmp-r-6978b219-5148-4d43-a1d4-82e4e7cbb9d8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])&gt;=1 ">(Plainradiographylimbstructure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])&lt;=1">(Plainradiographylimbstructure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']"
         id="tmp-r-343cd8c6-9705-42df-a85f-28edc818aa78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Plainradiographylimbstructure): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Plainradiographylimbstructure): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4053'])&gt;=1 ">(Plainradiographylimbstructure): Element hl7:templateId[@root='1.2.276.0.76.10.4053'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4053'])&lt;=1">(Plainradiographylimbstructure): Element hl7:templateId[@root='1.2.276.0.76.10.4053'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainradiographylimbstructure): Element hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Plainradiographylimbstructure): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Plainradiographylimbstructure): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Plainradiographylimbstructure): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Plainradiographylimbstructure): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Plainradiographylimbstructure): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Plainradiographylimbstructure): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:templateId[@root='1.2.276.0.76.10.4053']
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:templateId[@root='1.2.276.0.76.10.4053']"
         id="tmp-r-c8a75b8a-b296-4529-be3a-d76e63ea484c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4053')">(Plainradiographylimbstructure): Der Wert von @root MUSS '1.2.276.0.76.10.4053' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:id
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:id"
         id="tmp-r-b8946049-08d5-44d1-a6c5-2eacb12f4126">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-402e477e-0fd3-481e-b7b2-31878c1ca398">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or (@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von 'code '168537006:363704007=66019005' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text"
         id="tmp-r-0bc62a43-ce45-4d7d-bfa3-1cc6eab4f951">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Plainradiographylimbstructure): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Plainradiographylimbstructure): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/hl7:reference
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/hl7:reference"
         id="tmp-r-84fd9735-a3f2-408d-b1e1-3352dbd0dc33">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:statusCode[@code='completed']
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:statusCode[@code='completed']"
         id="tmp-r-3e5e6597-a4e3-480a-9078-0331b071bee4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:effectiveTime
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:effectiveTime"
         id="tmp-r-f88ffd14-29e7-45b8-8c86-bc73a0bcb4a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-abe26ffa-490c-4e62-abe5-bb9cd6e23c71">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Plainradiographylimbstructure): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-23978a5c-1955-49dc-8034-9ebeb4476a85">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Plainradiographylimbstructure): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Plainradiographylimbstructure): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-abaf63a0-8f99-4688-b86c-b3f3cc961c3a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Plainradiographylimbstructure): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainradiographylimbstructure): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-88956a13-3ff8-4d2b-8693-2a762f133f2e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
