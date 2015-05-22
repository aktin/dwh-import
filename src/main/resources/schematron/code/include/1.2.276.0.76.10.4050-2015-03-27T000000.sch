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
         id="tmp-r-b58e0502-181a-4761-9635-40383a6f6537">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])&gt;=1 ">(Plainchestxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])&lt;=1">(Plainchestxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']"
         id="tmp-r-c11bd395-108a-4f0e-805d-57cd7f2c17ac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Plainchestxray): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Plainchestxray): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4050'])&gt;=1 ">(Plainchestxray): Element hl7:templateId[@root='1.2.276.0.76.10.4050'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4050'])&lt;=1">(Plainchestxray): Element hl7:templateId[@root='1.2.276.0.76.10.4050'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Plainchestxray): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainchestxray): Element hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainchestxray): Element hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Plainchestxray): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Plainchestxray): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Plainchestxray): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Plainchestxray): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Plainchestxray): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Plainchestxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Plainchestxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Plainchestxray): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Plainchestxray): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:templateId[@root='1.2.276.0.76.10.4050']
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:templateId[@root='1.2.276.0.76.10.4050']"
         id="tmp-r-1f7a019c-fe8e-4a08-be31-f28401ea13f1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4050')">(Plainchestxray): Der Wert von @root MUSS '1.2.276.0.76.10.4050' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:id
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:id"
         id="tmp-r-e8c145ec-5139-45ca-a939-e908009f9ed3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-85c7aca9-8ea7-4d1d-b0d9-1f919b5f5dd6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or (@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')">(Plainchestxray): Der Elementinhalt MUSS einer von 'code '399208008' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text"
         id="tmp-r-c02b0b7b-e69c-4ba8-8d30-cb3192b60108">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Plainchestxray): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Plainchestxray): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/hl7:reference
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/hl7:reference"
         id="tmp-r-0234ec06-4411-4ea7-9645-fbb408331b1d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:statusCode[@code='completed']
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:statusCode[@code='completed']"
         id="tmp-r-f011ee60-0de4-4596-92d1-774129203ba7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Plainchestxray): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:effectiveTime
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:effectiveTime"
         id="tmp-r-4e6512c4-a1aa-44a3-b14a-fcb44ab13816">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-2035808c-b857-4894-9bd0-b4f1f0009f25">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Plainchestxray): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Plainchestxray): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-38367bee-851f-411d-a094-01c7faf3ab2c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Plainchestxray): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Plainchestxray): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Plainchestxray): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-618534b9-84b7-4676-8163-d6233614b5cb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Plainchestxray): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainchestxray): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainchestxray): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainchestxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-923b2ae4-b814-41d4-9f79-6d3b90c3847b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainchestxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4050-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Plainchestxray): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
