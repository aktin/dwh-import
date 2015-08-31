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
         id="tmp-r-67ec9788-8635-43c7-a6f7-f33c504f1d72">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@classCode)=('ACT')">(Allergyconcernact): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Allergyconcernact): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4065'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4065']/@nullFlavor)">(Allergyconcernact): Element hl7:templateId[@root='1.2.276.0.76.10.4065'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4065'])&lt;=1">(Allergyconcernact): Element hl7:templateId[@root='1.2.276.0.76.10.4065'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Allergyconcernact): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&gt;=1 and not(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]/@nullFlavor)">(Allergyconcernact): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&lt;=1">(Allergyconcernact): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:statusCode)&gt;=1 and not(hl7:statusCode/@nullFlavor)">(Allergyconcernact): Element hl7:statusCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:statusCode)&lt;=1">(Allergyconcernact): Element hl7:statusCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Allergyconcernact): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Allergyconcernact): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']])&gt;=1 and not(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/@nullFlavor)">(Allergyconcernact): Element hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:templateId[@root='1.2.276.0.76.10.4065']
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:templateId[@root='1.2.276.0.76.10.4065']"
         id="tmp-r-0bd2aff7-a039-4d0b-b3d4-e1b1e250386d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4065')">(Allergyconcernact): Der Wert von @root MUSS '1.2.276.0.76.10.4065' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:id
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:id"
         id="tmp-r-483d5516-50ee-4475-943c-1b751e6206e7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]"
         id="tmp-r-f9e02b8d-6540-4fc0-8898-606c77f19a14">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(Allergyconcernact): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:statusCode
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:statusCode"
         id="tmp-r-b699aece-02f8-4994-a724-82fef7c988b6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime"
         id="tmp-r-e43a8d8a-228f-4fb6-9fe6-962552c6918a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:low)&gt;=1 and not(hl7:low/@nullFlavor)">(Allergyconcernact): Element hl7:low ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:low)&lt;=1">(Allergyconcernact): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:high)&lt;=1">(Allergyconcernact): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:low
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:low"
         id="tmp-r-6d215a01-0fad-4ec9-9e28-5efd09f896c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyconcernact): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:high
Item: (Allergyconcernact)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/hl7:high"
         id="tmp-r-d5a1f75d-f786-4d72-93d6-b6fec6326e3d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
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
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@typeCode)=('SUBJ')">(Allergyconcernact): Der Wert von @typeCode MUSS 'SUBJ' sein.</assert>
   </rule>
</pattern>
