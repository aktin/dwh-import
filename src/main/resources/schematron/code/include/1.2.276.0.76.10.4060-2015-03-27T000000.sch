<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4060
Name: Diagnostik Urinalysis, reagent strip without microscopy
Description: Diagnostik Template Urinalysis, reagent strip without microscopy
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4060-2015-03-27T000000">
   <title>Diagnostik Urinalysis, reagent strip without microscopy</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]"
         id="tmp-r-75b3ae93-1653-49b0-a78f-d79d883a7b4e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']"
         id="tmp-r-595334e6-babb-44ee-be67-b66c6efd0d10">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Urinalysisreagentstripwithoutmicroscopy): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Urinalysisreagentstripwithoutmicroscopy): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4060'])&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:templateId[@root='1.2.276.0.76.10.4060'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4060'])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:templateId[@root='1.2.276.0.76.10.4060'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:templateId[@root='1.2.276.0.76.10.4060']
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:templateId[@root='1.2.276.0.76.10.4060']"
         id="tmp-r-0125ebe2-a431-4a5b-8914-453ebd89dcd2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4060')">(Urinalysisreagentstripwithoutmicroscopy): Der Wert von @root MUSS '1.2.276.0.76.10.4060' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:id
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:id"
         id="tmp-r-c1eca819-9390-4b21-9bac-2281f6ca1217">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-85db431b-bfa7-4c7a-9bf6-1b4fd5be5d2f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="@nullFlavor or (@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')">(Urinalysisreagentstripwithoutmicroscopy): Der Elementinhalt MUSS einer von 'code '53853004' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text"
         id="tmp-r-e904165a-3c84-4737-98fd-fa6f153d8f3b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/hl7:reference
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/hl7:reference"
         id="tmp-r-370b7577-9df8-40ab-bcc7-52210a9d0e06">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:statusCode[@code='completed']
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:statusCode[@code='completed']"
         id="tmp-r-b4124dd5-ddbf-4532-9f1d-6ecde4f234c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Urinalysisreagentstripwithoutmicroscopy): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:effectiveTime
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:effectiveTime"
         id="tmp-r-bf0cc552-b182-41e8-beb9-61d134f9cb1a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-56c84eb0-53fe-4ac5-bc9f-77c4bebafd2f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Urinalysisreagentstripwithoutmicroscopy): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Urinalysisreagentstripwithoutmicroscopy): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
