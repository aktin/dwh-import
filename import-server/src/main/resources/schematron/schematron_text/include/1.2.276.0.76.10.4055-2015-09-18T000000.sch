<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4055
Name: Diagnostik Computed tomography of entire head
Description: Diagnostik Template Computed tomography of entire head in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4055-2015-09-18T000000">
   <title>Diagnostik Computed tomography of entire head</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]"
         id="tmp-r-adc4124e-66d4-4e02-a121-2ad0341c3fc4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])&gt;=1 ">(Computedtomographyofentirehead): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])&lt;=1">(Computedtomographyofentirehead): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']"
         id="tmp-r-d21ffcbe-dae9-4f67-a957-27c71c604890">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Computedtomographyofentirehead): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Computedtomographyofentirehead): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4055'])&gt;=1 ">(Computedtomographyofentirehead): Element hl7:templateId[@root='1.2.276.0.76.10.4055'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4055'])&lt;=1">(Computedtomographyofentirehead): Element hl7:templateId[@root='1.2.276.0.76.10.4055'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Computedtomographyofentirehead): Element hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Computedtomographyofentirehead): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Computedtomographyofentirehead): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Computedtomographyofentirehead): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Computedtomographyofentirehead): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Computedtomographyofentirehead): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:participant)&gt;=1 and not(hl7:participant/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:participant ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:participant)&lt;=1">(Computedtomographyofentirehead): Element hl7:participant kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:templateId[@root='1.2.276.0.76.10.4055']
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:templateId[@root='1.2.276.0.76.10.4055']"
         id="tmp-r-afbd4836-0da4-4165-93a6-411a4e0a0212">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4055')">(Computedtomographyofentirehead): Der Wert von @root MUSS '1.2.276.0.76.10.4055' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:id
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:id"
         id="tmp-r-d9a79177-6707-49df-aee7-2f64e1c862da">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-6737e6ef-aa9b-48f7-8269-82650185fad1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="@nullFlavor or (@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von 'code '24725-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text"
         id="tmp-r-eb6d6b36-b0cf-4b81-8f95-1800c9427b24">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Computedtomographyofentirehead): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Computedtomographyofentirehead): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/hl7:reference
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/hl7:reference"
         id="tmp-r-5eea2d7f-63e4-4184-9c8a-6a2b6eb0cefc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:statusCode[@code='completed']
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:statusCode[@code='completed']"
         id="tmp-r-ef37d640-4d4d-4e43-9b5d-0252afb0cf5f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:effectiveTime
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:effectiveTime"
         id="tmp-r-b7d56098-e9b0-4f93-ae44-8b296f783751">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-a9141c8c-6348-4858-ac07-5db69ea1fec0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Computedtomographyofentirehead): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant"
         id="tmp-r-eae4a881-e909-438f-90f0-a535c22e6def">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="string(@typeCode)=('LOC')">(Computedtomographyofentirehead): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:participantRole)&gt;=1 and not(hl7:participantRole/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:participantRole ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:participantRole)&lt;=1">(Computedtomographyofentirehead): Element hl7:participantRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant/hl7:participantRole
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant/hl7:participantRole"
         id="tmp-r-32c7a83d-7810-4c63-ba53-50a88cb27a86">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="string(@classCode)=('SDLOC')">(Computedtomographyofentirehead): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1 and not(hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')]/@nullFlavor)">(Computedtomographyofentirehead): Element hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="count(hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1">(Computedtomographyofentirehead): Element hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4055
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant/hl7:participantRole/hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (Computedtomographyofentirehead)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant/hl7:participantRole/hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')]"
         id="tmp-r-b82e0db5-24b1-4aee-a1dc-2d6bbd87e059">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computedtomographyofentirehead): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4055-2015-09-18T000000.html"
              test="@nullFlavor or (@code='ER' and @codeSystem='2.16.840.1.113883.5.111')">(Computedtomographyofentirehead): Der Elementinhalt MUSS einer von 'code 'ER' codeSystem '2.16.840.1.113883.5.111'' sein.</assert>
   </rule>
</pattern>
