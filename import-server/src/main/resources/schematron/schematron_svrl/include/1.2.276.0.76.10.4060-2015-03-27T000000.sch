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
         id="tmp-r-3a69b5a4-b224-441a-b4ef-1136b2c2b35a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']"
         id="tmp-r-049c47d3-5e7e-4710-a9ee-3ac32e2aa915">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Urinalysisreagentstripwithoutmicroscopy): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Urinalysisreagentstripwithoutmicroscopy): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4060'])&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:templateId[@root='1.2.276.0.76.10.4060'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4060'])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:templateId[@root='1.2.276.0.76.10.4060'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:templateId[@root='1.2.276.0.76.10.4060']
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:templateId[@root='1.2.276.0.76.10.4060']"
         id="tmp-r-31322ac3-22ca-40d3-aa30-8372a95920d9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4060')">(Urinalysisreagentstripwithoutmicroscopy): Der Wert von @root MUSS '1.2.276.0.76.10.4060' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:id
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:id"
         id="tmp-r-ebcdad5a-fbef-44d6-b469-ae0c3466ef36">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-d57ee6e5-4084-4efc-ae65-7eb16896efe0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="@nullFlavor or (@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')">(Urinalysisreagentstripwithoutmicroscopy): Der Elementinhalt MUSS einer von 'code '53853004' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text"
         id="tmp-r-4b5effb8-b63b-4f71-926a-fa8ab6011f97">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Urinalysisreagentstripwithoutmicroscopy): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/hl7:reference
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/hl7:reference"
         id="tmp-r-8be3f0d7-2dfb-40a6-83eb-b70a38a50974">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:statusCode[@code='completed']
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:statusCode[@code='completed']"
         id="tmp-r-0b5f7b2f-efdd-47a8-bb63-193a1cf9fe1a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Urinalysisreagentstripwithoutmicroscopy): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:effectiveTime
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:effectiveTime"
         id="tmp-r-a0e41fe6-a97b-4274-86d4-e1ac26babde6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4060
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Urinalysisreagentstripwithoutmicroscopy)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-2dd5b263-e959-47d4-ac31-e4392c2e54d8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urinalysisreagentstripwithoutmicroscopy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Urinalysisreagentstripwithoutmicroscopy): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4060-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Urinalysisreagentstripwithoutmicroscopy): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
