<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4056
Name: Diagnostik Computed tomography scan - whole body
Description: Diagnostik Template Computed tomography scan - whole body in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4056-2015-03-27T000000">
   <title>Diagnostik Computed tomography scan - whole body</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]"
         id="tmp-r-9181e736-aada-4d2d-ad3f-7694f5d226aa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])&lt;=1">(Computedtomographyscanwholebody): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']"
         id="tmp-r-cfd36248-50c4-4bf0-b33c-2612e8242f5f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Computedtomographyscanwholebody): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Computedtomographyscanwholebody): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4056'])&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:templateId[@root='1.2.276.0.76.10.4056'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4056'])&lt;=1">(Computedtomographyscanwholebody): Element hl7:templateId[@root='1.2.276.0.76.10.4056'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Computedtomographyscanwholebody): Element hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Computedtomographyscanwholebody): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Computedtomographyscanwholebody): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Computedtomographyscanwholebody): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Computedtomographyscanwholebody): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Computedtomographyscanwholebody): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:templateId[@root='1.2.276.0.76.10.4056']
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:templateId[@root='1.2.276.0.76.10.4056']"
         id="tmp-r-0fb9414b-65c6-4d5d-8baa-fc1445aab5d0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4056')">(Computedtomographyscanwholebody): Der Wert von @root MUSS '1.2.276.0.76.10.4056' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:id
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:id"
         id="tmp-r-49f41258-4f1a-4e60-b6ce-06ba0c4f5579">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-bbde2365-c534-44f4-a747-faf160ba3c16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or (@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von 'code '169072007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text"
         id="tmp-r-b0b3e712-7e6e-4296-a769-35e3adc8e99c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Computedtomographyscanwholebody): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/hl7:reference
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/hl7:reference"
         id="tmp-r-9f0657fd-5f8a-429c-9806-5321bbcb8585">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:statusCode[@code='completed']
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:statusCode[@code='completed']"
         id="tmp-r-12401cae-0186-4cc5-9f47-7ee65152ad1a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:effectiveTime
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:effectiveTime"
         id="tmp-r-86995a1c-ef51-42a7-aec7-2af30bf03c50">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-2cee7492-b401-46bc-a7d9-c33c6a5398a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Computedtomographyscanwholebody): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-a6174a36-e40d-4410-a6f7-8ad51dc61a71">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Computedtomographyscanwholebody): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Computedtomographyscanwholebody): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-589c94a8-31b8-4029-a21d-ce66cc851eb6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Computedtomographyscanwholebody): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Computedtomographyscanwholebody): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-694f2deb-32ef-4bbe-aca6-dcefeb18505a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
