<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4073
Name: Problem Observation (Multidrug-resistant organism)
Description: Multiresistente Keime
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4073-2015-06-01T000000">
   <title>Problem Observation (Multidrug-resistant organism)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]"
         id="tmp-r-1cac7731-9f1f-4ebd-bca9-1e7b81f9795b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'])&gt;=1 ">(ProblemobservationMDRO): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'])&lt;=1">(ProblemobservationMDRO): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']"
         id="tmp-r-a77a39e9-30fd-4cad-ad97-f2dfb7aa9eaa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="string(@classCode)=('OBS')">(ProblemobservationMDRO): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="string(@moodCode)=('EVN')">(ProblemobservationMDRO): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4073'])&gt;=1 ">(ProblemobservationMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4073'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4073'])&lt;=1">(ProblemobservationMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4073'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(ProblemobservationMDRO): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:text)&lt;=1">(ProblemobservationMDRO): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(ProblemobservationMDRO): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(ProblemobservationMDRO): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(ProblemobservationMDRO): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:templateId[@root='1.2.276.0.76.10.4073']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:templateId[@root='1.2.276.0.76.10.4073']"
         id="tmp-r-4c2222e0-6990-4869-95ec-529fd9734778">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4073')">(ProblemobservationMDRO): Der Wert von @root MUSS '1.2.276.0.76.10.4073' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:id
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:id"
         id="tmp-r-400ff7bd-ac3f-4e01-9796-051e2d6a9545">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-3e5dac7e-18c5-41e6-982e-6fd18c17503e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '64572001' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text"
         id="tmp-r-e5e8ab38-7d87-491a-b3b7-459fd43cbe82">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:reference)&gt;=1 ">(ProblemobservationMDRO): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:reference)&lt;=1">(ProblemobservationMDRO): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text/hl7:reference
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text/hl7:reference"
         id="tmp-r-caf47551-b8b1-42ae-b3fe-ae28b375c595">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:statusCode[@code='completed']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:statusCode[@code='completed']"
         id="tmp-r-ec3c1bae-a1df-47cb-b52d-584adf03c8b8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='completed')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime"
         id="tmp-r-9fa65403-7eb1-4dcb-b6d5-9ae5d2ba5cf9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:low)&gt;=1 ">(ProblemobservationMDRO): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:low)&lt;=1">(ProblemobservationMDRO): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:high)&lt;=1">(ProblemobservationMDRO): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:low
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:low"
         id="tmp-r-bd6e248d-107a-491e-9bac-32e2beaccc16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:high
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:high"
         id="tmp-r-d98e9d8d-dd86-41fa-909d-74e6760c68e3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-0ef7e39b-f0fa-46fd-bec6-747fd4c046f1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ProblemobservationMDRO): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier)&gt;=1 and not(hl7:qualifier/@nullFlavor)">(ProblemobservationMDRO): Element hl7:qualifier ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier)&lt;=1">(ProblemobservationMDRO): Element hl7:qualifier kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier)&gt;=1 and not(hl7:qualifier/@nullFlavor)">(ProblemobservationMDRO): Element hl7:qualifier ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier)&lt;=1">(ProblemobservationMDRO): Element hl7:qualifier kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier"
         id="tmp-r-6b593a50-4a2a-4ef0-a5af-2984b92c12a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-cf15173e-c3fa-48ba-92d4-42f3cffa92bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '246090004' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-1a72029c-ce7e-4750-8f86-f87bcc554bd8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '40733004' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier"
         id="tmp-r-b522bc1e-f0f4-4513-9c77-6b550640c068">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-f74afe90-a133-4a17-b235-e07c216f6bf3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '246075003' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-0d6aa04c-f074-42d4-82b8-f072b3a1aec3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.60 Multiresistant Organisms (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ProblemobservationMDRO): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.60 Multiresistant Organisms (DYNAMIC).</assert>
   </rule>
</pattern>
