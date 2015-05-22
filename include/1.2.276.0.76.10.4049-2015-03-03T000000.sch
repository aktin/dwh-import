<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4049
Name: Problem Observation (Abschlussdiagnose)
Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4049-2015-03-03T000000">
   <title>Problem Observation (Abschlussdiagnose)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]"
         id="tmp-r-316ca473-1a3e-4859-8a2b-e402edf973fc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])&lt;=1">(Problemobservationeddiagnosis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']"
         id="tmp-r-62c5b4ea-0765-4df4-8ebf-3d1ab8df3448">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Problemobservationeddiagnosis): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Problemobservationeddiagnosis): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4049'])&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:templateId[@root='1.2.276.0.76.10.4049'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4049'])&lt;=1">(Problemobservationeddiagnosis): Element hl7:templateId[@root='1.2.276.0.76.10.4049'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Problemobservationeddiagnosis): Element hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Problemobservationeddiagnosis): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Problemobservationeddiagnosis): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Problemobservationeddiagnosis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:value)&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:value)&lt;=1">(Problemobservationeddiagnosis): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:templateId[@root='1.2.276.0.76.10.4049']
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:templateId[@root='1.2.276.0.76.10.4049']"
         id="tmp-r-1eef2339-660d-4f8c-9252-3ee7f20559f6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4049')">(Problemobservationeddiagnosis): Der Wert von @root MUSS '1.2.276.0.76.10.4049' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:id
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:id"
         id="tmp-r-be81eaa4-3b0c-41a8-817b-7490291c97f0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-16848131-936e-48ac-9b39-4fc91d81fbc3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="@nullFlavor or (@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')">(Problemobservationeddiagnosis): Der Elementinhalt MUSS einer von 'code '282291009' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text"
         id="tmp-r-cf8742be-efd3-4e36-8aac-2b2d16d4f853">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Problemobservationeddiagnosis): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/hl7:reference
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/hl7:reference"
         id="tmp-r-f9e7faac-0286-4df7-acef-6750ab53384e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:statusCode[@code='completed']
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:statusCode[@code='completed']"
         id="tmp-r-f2fbf37f-832f-40d2-b471-1ba2709f36d3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Problemobservationeddiagnosis): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime"
         id="tmp-r-2b78f2c0-43c4-4e45-94f4-981a8f5f1e43">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:low)&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:low)&lt;=1">(Problemobservationeddiagnosis): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Problemobservationeddiagnosis): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:low
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:low"
         id="tmp-r-0af8bc31-59b1-4f0d-90e4-cd0880ecb57e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:high
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:high"
         id="tmp-r-c1674c3e-605d-4a9d-94a7-68a26533c36d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:value
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:value"
         id="tmp-r-79660414-3cb0-4d7b-8e13-4b703b0c9678">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
   </rule>
</pattern>
