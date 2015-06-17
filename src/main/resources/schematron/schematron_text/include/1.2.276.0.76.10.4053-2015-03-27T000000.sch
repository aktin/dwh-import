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
         id="tmp-r-da81ea72-7568-48e2-b07d-d463669c481b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])&gt;=1 ">(Plainradiographylimbstructure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])&lt;=1">(Plainradiographylimbstructure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']"
         id="tmp-r-8be65111-d2df-42d0-bd8f-3bb17ad3e20f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Plainradiographylimbstructure): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Plainradiographylimbstructure): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4053'])&gt;=1 ">(Plainradiographylimbstructure): Element hl7:templateId[@root='1.2.276.0.76.10.4053'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4053'])&lt;=1">(Plainradiographylimbstructure): Element hl7:templateId[@root='1.2.276.0.76.10.4053'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainradiographylimbstructure): Element hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Plainradiographylimbstructure): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Plainradiographylimbstructure): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Plainradiographylimbstructure): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Plainradiographylimbstructure): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Plainradiographylimbstructure): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Plainradiographylimbstructure): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:templateId[@root='1.2.276.0.76.10.4053']
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:templateId[@root='1.2.276.0.76.10.4053']"
         id="tmp-r-193cee5c-7a56-48c9-9828-f54734df60ce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4053')">(Plainradiographylimbstructure): Der Wert von @root MUSS '1.2.276.0.76.10.4053' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:id
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:id"
         id="tmp-r-e16ddff5-15a8-4493-84d1-5fa97111ca1c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-f70139e0-7f63-4bdc-8d91-db6da1f39dd6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or (@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von 'code '168537006:363704007=66019005' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text"
         id="tmp-r-15679831-e271-414c-b4a9-bd72a27d1ee0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Plainradiographylimbstructure): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Plainradiographylimbstructure): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/hl7:reference
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/hl7:reference"
         id="tmp-r-2b2105c6-87e2-4d41-a77f-572eecb35bf2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:statusCode[@code='completed']
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:statusCode[@code='completed']"
         id="tmp-r-e89433c4-cea8-410b-97bb-96979d22f2ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:effectiveTime
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:effectiveTime"
         id="tmp-r-df3125ac-dbdf-4cb1-ad34-5a226e007e6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-a1574f3a-4730-47f8-8012-31d266869532">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Plainradiographylimbstructure): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-7f653de0-5a37-4c30-90d6-cf40e4671984">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Plainradiographylimbstructure): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Plainradiographylimbstructure): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-60328cc2-d7dd-4040-9aa5-4372a00468fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Plainradiographylimbstructure): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainradiographylimbstructure): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainradiographylimbstructure): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4053
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainradiographylimbstructure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-b7819a8e-c01f-4874-9d47-2bb9ef05f975">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiographylimbstructure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4053-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Plainradiographylimbstructure): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
