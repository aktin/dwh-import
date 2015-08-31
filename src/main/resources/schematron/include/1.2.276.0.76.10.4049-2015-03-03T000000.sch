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
         id="tmp-r-8d1df5b8-424a-42d5-94a5-3f5436926ca3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])&lt;=1">(Problemobservationeddiagnosis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']"
         id="tmp-r-7af3c46b-cd85-4a75-a47d-153bd34561f3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Problemobservationeddiagnosis): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Problemobservationeddiagnosis): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4049'])&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:templateId[@root='1.2.276.0.76.10.4049'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4049'])&lt;=1">(Problemobservationeddiagnosis): Element hl7:templateId[@root='1.2.276.0.76.10.4049'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Problemobservationeddiagnosis): Element hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Problemobservationeddiagnosis): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Problemobservationeddiagnosis): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Problemobservationeddiagnosis): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Problemobservationeddiagnosis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:value)&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:value)&lt;=1">(Problemobservationeddiagnosis): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:templateId[@root='1.2.276.0.76.10.4049']
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:templateId[@root='1.2.276.0.76.10.4049']"
         id="tmp-r-37398cac-681c-4369-b3d3-da2a6d6cec40">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4049')">(Problemobservationeddiagnosis): Der Wert von @root MUSS '1.2.276.0.76.10.4049' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:id
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:id"
         id="tmp-r-ad1bd95a-64cb-46bb-8abf-44f436f8f0c8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-0071beac-3f9b-4f99-9e5d-8f449d5172e0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="@nullFlavor or (@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')">(Problemobservationeddiagnosis): Der Elementinhalt MUSS einer von 'code '282291009' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text"
         id="tmp-r-0ceb4543-f34e-4ca2-a0f6-0f2754b877dc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Problemobservationeddiagnosis): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/hl7:reference
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/hl7:reference"
         id="tmp-r-98e23b8d-72f3-49da-9424-f1cee2da40a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:statusCode[@code='completed']
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:statusCode[@code='completed']"
         id="tmp-r-05be7df4-1ac3-4d1a-9e4d-8fb8e6bcaba2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Problemobservationeddiagnosis): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime"
         id="tmp-r-3bf32ac7-bab3-4a42-843a-fc2975818609">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:low)&gt;=1 ">(Problemobservationeddiagnosis): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:low)&lt;=1">(Problemobservationeddiagnosis): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Problemobservationeddiagnosis): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:low
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:low"
         id="tmp-r-f05f0cf0-cfab-4466-a99e-53bcf8747306">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:high
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/hl7:high"
         id="tmp-r-ad736a68-e046-4be9-8080-3007eafdcf7b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:value
Item: (Problemobservationeddiagnosis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:value"
         id="tmp-r-21973987-1623-4da3-985f-ffe76113ca82">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4049-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationeddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
   </rule>
</pattern>
