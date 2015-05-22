<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4065
Name: Allergy Concern Act
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4065-2015-03-27T000000">
   <title>Allergy Concern Act</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]
Item: (Allergyconcernact)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']"
         id="tmp-r-093c57e4-f0dc-49fb-92ab-09cf63d6a294">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@classCode)=('ACT')">(Allergyconcernact): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Allergyconcernact): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4065'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4065']/@nullFlavor)">(Allergyconcernact): Element hl7:templateId[@root='1.2.276.0.76.10.4065'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4065'])&lt;=1">(Allergyconcernact): Element hl7:templateId[@root='1.2.276.0.76.10.4065'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Allergyconcernact): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&gt;=1 and not(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]/@nullFlavor)">(Allergyconcernact): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&lt;=1">(Allergyconcernact): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:statusCode)&gt;=1 and not(hl7:statusCode/@nullFlavor)">(Allergyconcernact): Element hl7:statusCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:statusCode)&lt;=1">(Allergyconcernact): Element hl7:statusCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Allergyconcernact): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Allergyconcernact): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']])&gt;=1 and not(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/@nullFlavor)">(Allergyconcernact): Element hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:templateId[@root='1.2.276.0.76.10.4065']
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:templateId[@root='1.2.276.0.76.10.4065']"
         id="tmp-r-4768b869-49d6-47d7-b832-64a300892ecb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4065')">(Allergyconcernact): Der Wert von @root MUSS '1.2.276.0.76.10.4065' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:id
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:id"
         id="tmp-r-6ac42735-ff09-43be-96c7-3b5bcbb45d54">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]"
         id="tmp-r-68079831-ee99-46b6-8dd8-6036fc624958">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(Allergyconcernact): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:statusCode
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:statusCode"
         id="tmp-r-d306bd0b-176f-497a-a9ef-d507fb97a177">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime"
         id="tmp-r-b364f58c-32cb-4fa4-8a60-56cc9aaa3625">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:low)&gt;=1 and not(hl7:low/@nullFlavor)">(Allergyconcernact): Element hl7:low ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:low)&lt;=1">(Allergyconcernact): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:high)&lt;=1">(Allergyconcernact): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:low
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:low"
         id="tmp-r-c7bb9718-4737-4ff9-bb98-8288c5a5b10d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:high
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:high"
         id="tmp-r-5a1a2423-842f-4934-9d50-baf268d76f8e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]
Item: (Allergyconcernact)
-->
   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@typeCode)=('SUBJ')">(Allergyconcernact): Der Wert von @typeCode MUSS 'SUBJ' sein.</assert>
   </rule>
</pattern>
