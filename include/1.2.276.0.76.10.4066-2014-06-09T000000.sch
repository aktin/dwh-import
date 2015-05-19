<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4066
Name: Allergy / Intolerance Observation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4066-2014-06-09T000000">
   <title>Allergy / Intolerance Observation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]
Item: (Allergyintoleranceobservation)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']"
         id="tmp-r-10c0f51f-c1f8-4dd2-8392-a7300d261331">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@classCode)=('OBS')">(Allergyintoleranceobservation): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@moodCode)=('EVN')">(Allergyintoleranceobservation): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Allergyintoleranceobservation): Attribute @negationInd MUSS vom Datentyp 'bl' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4066'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4066']/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4066'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4066'])&lt;=1">(Allergyintoleranceobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4066'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')])&gt;=1 and not(hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')])&lt;=1">(Allergyintoleranceobservation): Element hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:statusCode)&gt;=1 and not(hl7:statusCode/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:statusCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:statusCode)&lt;=1">(Allergyintoleranceobservation): Element hl7:statusCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 ">(Allergyintoleranceobservation): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Allergyintoleranceobservation): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Allergyintoleranceobservation): Element hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:participant)&lt;=1">(Allergyintoleranceobservation): Element hl7:participant kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:templateId[@root='1.2.276.0.76.10.4066']
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:templateId[@root='1.2.276.0.76.10.4066']"
         id="tmp-r-36867e73-f5a6-46d8-b112-2fb6d37654b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4066')">(Allergyintoleranceobservation): Der Wert von @root MUSS '1.2.276.0.76.10.4066' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:id
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:id"
         id="tmp-r-04b56fbc-41c8-487a-90b4-af519ba47e60">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]"
         id="tmp-r-8eca9c6b-877a-4156-b0da-3838f39a1b61">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="@nullFlavor or (@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')">(Allergyintoleranceobservation): Der Elementinhalt MUSS einer von 'code 'ASSERTION' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:statusCode
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:statusCode"
         id="tmp-r-2c70f42f-3fb7-4048-a58e-f3ed14be4bc3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime"
         id="tmp-r-51dcfc5c-3b07-4c65-b35d-0efc4fde27f6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:low)&lt;=1">(Allergyintoleranceobservation): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:high)&lt;=1">(Allergyintoleranceobservation): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:low
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:low"
         id="tmp-r-7da7bb44-322f-4066-8775-50ea858300ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:high
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:high"
         id="tmp-r-fdca44af-5655-4c90-a887-3d602ff6ae26">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-238a8e01-c260-419a-97f2-936aec356d9f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="@nullFlavor or (@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')">(Allergyintoleranceobservation): Der Elementinhalt MUSS einer von 'code '419199007' codeSystem '2.16.840.1.113883.6.96' oder code '420134006' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant"
         id="tmp-r-ffdefaa8-6e54-4eb5-91a3-8f8ad5a56648">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@typeCode)=('CSM')">(Allergyintoleranceobservation): Der Wert von @typeCode MUSS 'CSM' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])&gt;=1 and not(hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])&lt;=1">(Allergyintoleranceobservation): Element hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]"
         id="tmp-r-82ccd16c-7e51-43f6-bf14-d711082ca90f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@classCode)=('MANU')">(Allergyintoleranceobservation): Der Wert von @classCode MUSS 'MANU' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])&gt;=1 and not(hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])&lt;=1">(Allergyintoleranceobservation): Element hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]"
         id="tmp-r-90011c40-7b2a-44b0-8c92-eb8be1f06059">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@classCode)=('MMAT')">(Allergyintoleranceobservation): Der Wert von @classCode MUSS 'MMAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Allergyintoleranceobservation): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Allergyintoleranceobservation): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-61af143e-bff8-4d66-9f3d-a625acb88bb6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Allergyintoleranceobservation): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.52 Allergy / intolerance substances (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Allergyintoleranceobservation): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.52 Allergy / intolerance substances (DYNAMIC).</assert>
   </rule>
</pattern>
