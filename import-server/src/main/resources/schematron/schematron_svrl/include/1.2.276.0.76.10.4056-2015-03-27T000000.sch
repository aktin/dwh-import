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
         id="tmp-r-8e5d1b96-435a-42b6-9cbd-95204952491c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])&lt;=1">(Computedtomographyscanwholebody): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']"
         id="tmp-r-9761b4ae-26a5-4674-9034-aebf8204311e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Computedtomographyscanwholebody): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Computedtomographyscanwholebody): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4056'])&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:templateId[@root='1.2.276.0.76.10.4056'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4056'])&lt;=1">(Computedtomographyscanwholebody): Element hl7:templateId[@root='1.2.276.0.76.10.4056'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Computedtomographyscanwholebody): Element hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Computedtomographyscanwholebody): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Computedtomographyscanwholebody): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Computedtomographyscanwholebody): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Computedtomographyscanwholebody): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participant)&gt;=1 and not(hl7:participant/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:participant ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participant)&lt;=1">(Computedtomographyscanwholebody): Element hl7:participant kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:templateId[@root='1.2.276.0.76.10.4056']
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:templateId[@root='1.2.276.0.76.10.4056']"
         id="tmp-r-02979ce2-7c89-40ee-b6d1-1b3c831c30c6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4056')">(Computedtomographyscanwholebody): Der Wert von @root MUSS '1.2.276.0.76.10.4056' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:id
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:id"
         id="tmp-r-f5036390-f35d-4184-9bda-58ad25031331">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-aa3005be-be59-4c87-a8c6-5221c6db70b3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or (@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von 'code '169072007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text"
         id="tmp-r-52775b79-6e5f-4cb6-877b-7cfb17383bb4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Computedtomographyscanwholebody): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Computedtomographyscanwholebody): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/hl7:reference
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/hl7:reference"
         id="tmp-r-8d217025-71e9-483b-9153-17763c3589c6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:statusCode[@code='completed']
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:statusCode[@code='completed']"
         id="tmp-r-9a033132-3122-4774-a405-2c97fa294731">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:effectiveTime
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:effectiveTime"
         id="tmp-r-5a054720-0990-4c11-8200-be77a64fe53c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-af73442a-9f4b-43d4-ba21-2b11ed6f7a3d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Computedtomographyscanwholebody): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant"
         id="tmp-r-d0d3888c-47f4-4c99-a747-06378ccfb06a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Computedtomographyscanwholebody): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participantRole)&gt;=1 and not(hl7:participantRole/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:participantRole ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:participantRole)&lt;=1">(Computedtomographyscanwholebody): Element hl7:participantRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant/hl7:participantRole
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant/hl7:participantRole"
         id="tmp-r-4fbb4448-ac07-496c-afbf-f199a846e9e3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Computedtomographyscanwholebody): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Computedtomographyscanwholebody): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Computedtomographyscanwholebody): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4056
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant/hl7:participantRole/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Computedtomographyscanwholebody)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant/hl7:participantRole/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-e393de87-ab85-4c27-8dac-16c4616c0f55">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyscanwholebody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4056-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Computedtomographyscanwholebody): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
