<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4050
Name: Diagnostik Plain chest X-ray
Description: Diagnostik Template Plain chest X-ray in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4050-2015-03-27T000000">
   <title>Diagnostik Plain chest X-ray</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]"
         id="tmp-r-dd9aeea3-3dc4-4053-8069-f8e2899d2e2c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])&gt;=1 ">(Plainchestxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])&lt;=1">(Plainchestxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']"
         id="tmp-r-6f761c7a-0e6a-4faf-af38-87cbedb06d6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Plainchestxray): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Plainchestxray): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4050'])&gt;=1 ">(Plainchestxray): Element hl7:templateId[@root='1.2.276.0.76.10.4050'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4050'])&lt;=1">(Plainchestxray): Element hl7:templateId[@root='1.2.276.0.76.10.4050'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Plainchestxray): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainchestxray): Element hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainchestxray): Element hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Plainchestxray): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Plainchestxray): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Plainchestxray): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Plainchestxray): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Plainchestxray): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Plainchestxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Plainchestxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Plainchestxray): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Plainchestxray): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:templateId[@root='1.2.276.0.76.10.4050']
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:templateId[@root='1.2.276.0.76.10.4050']"
         id="tmp-r-31650102-72d6-4f37-b29f-e118d7990196">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4050')">(Plainchestxray): Der Wert von @root MUSS '1.2.276.0.76.10.4050' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:id
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:id"
         id="tmp-r-343b9ba3-4e03-4c62-a661-616bed075801">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-79958a22-f0d8-4d37-a078-c40bcdf35820">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or (@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')">(Plainchestxray): Der Elementinhalt MUSS einer von 'code '399208008' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text"
         id="tmp-r-41e4bf20-ccef-4951-8b4e-b1a4d6d55b9d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Plainchestxray): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Plainchestxray): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/hl7:reference
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/hl7:reference"
         id="tmp-r-37da5d35-d3d5-483d-a8ec-3f2be99ca7d5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:statusCode[@code='completed']
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:statusCode[@code='completed']"
         id="tmp-r-1dd347af-8ea9-4707-ab26-06d754685508">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Plainchestxray): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:effectiveTime
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:effectiveTime"
         id="tmp-r-753c4ce1-b6b7-4a33-b414-0ccc278f64d4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-06900650-f4b5-4f47-9522-8da502e45225">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Plainchestxray): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Plainchestxray): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-4c5702e7-d5f0-4077-b1f9-ec005601a5ff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Plainchestxray): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Plainchestxray): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Plainchestxray): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-43ddd933-b4ba-4d8f-8a16-1600731bd854">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Plainchestxray): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainchestxray): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainchestxray): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-89d0dc30-77f3-44c6-84aa-ef5705e94586">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Plainchestxray): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
