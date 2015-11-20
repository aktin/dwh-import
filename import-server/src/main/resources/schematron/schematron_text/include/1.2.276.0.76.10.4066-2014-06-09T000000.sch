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
         id="tmp-r-b9122ea4-3166-4364-8490-5f048e505f73">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@classCode)=('OBS')">(Allergyintoleranceobservation): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@moodCode)=('EVN')">(Allergyintoleranceobservation): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Allergyintoleranceobservation): Attribute @negationInd MUSS vom Datentyp 'bl' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4066'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4066']/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4066'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4066'])&lt;=1">(Allergyintoleranceobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4066'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')])&gt;=1 and not(hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')])&lt;=1">(Allergyintoleranceobservation): Element hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:statusCode)&gt;=1 and not(hl7:statusCode/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:statusCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:statusCode)&lt;=1">(Allergyintoleranceobservation): Element hl7:statusCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 ">(Allergyintoleranceobservation): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Allergyintoleranceobservation): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:value[(@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:value[(@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:value[(@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:value[(@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Allergyintoleranceobservation): Element hl7:value[(@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:participant)&lt;=1">(Allergyintoleranceobservation): Element hl7:participant kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:templateId[@root='1.2.276.0.76.10.4066']
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:templateId[@root='1.2.276.0.76.10.4066']"
         id="tmp-r-f1e032a9-f9e2-49d3-a437-00928664e7c4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4066')">(Allergyintoleranceobservation): Der Wert von @root MUSS '1.2.276.0.76.10.4066' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:id
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:id"
         id="tmp-r-a853fff3-8636-4712-af83-bd4fe4e37478">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]"
         id="tmp-r-f7a1427e-1b5f-407b-8a7e-30338bc112b4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="@nullFlavor or (@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')">(Allergyintoleranceobservation): Der Elementinhalt MUSS einer von 'code 'ASSERTION' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:statusCode
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:statusCode"
         id="tmp-r-ec736c9c-ae66-4e3d-a338-d134689fe744">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime"
         id="tmp-r-a233cb8f-3a3d-43e8-84bc-8aec951b3a25">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:low)&lt;=1">(Allergyintoleranceobservation): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:high)&lt;=1">(Allergyintoleranceobservation): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:low
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:low"
         id="tmp-r-a5555bc0-f461-4241-ac46-830f3301e367">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:high
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/hl7:high"
         id="tmp-r-883b0f79-0e12-4cf9-8045-841f1844223c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:value[(@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:value[(@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-2bf1b3e6-a350-4d3b-a829-adad5d58cf78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="@nullFlavor or (@code='281647001' and @codeSystem='2.16.840.1.113883.6.96')">(Allergyintoleranceobservation): Der Elementinhalt MUSS einer von 'code '281647001' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant"
         id="tmp-r-964761b4-6104-498d-a980-eb81ce434b9b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@typeCode)=('CSM')">(Allergyintoleranceobservation): Der Wert von @typeCode MUSS 'CSM' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:participantRole)&gt;=1 and not(hl7:participantRole/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:participantRole ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:participantRole)&lt;=1">(Allergyintoleranceobservation): Element hl7:participantRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole"
         id="tmp-r-ac40c242-4b96-48db-9793-bdeb762765fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@classCode)=('MANU')">(Allergyintoleranceobservation): Der Wert von @classCode MUSS 'MANU' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:playingEntity)&gt;=1 and not(hl7:playingEntity/@nullFlavor)">(Allergyintoleranceobservation): Element hl7:playingEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:playingEntity)&lt;=1">(Allergyintoleranceobservation): Element hl7:playingEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole/hl7:playingEntity
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole/hl7:playingEntity"
         id="tmp-r-947e58ce-4a82-4a73-9bae-d4cfe0ed4542">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="string(@classCode)=('MMAT')">(Allergyintoleranceobservation): Der Wert von @classCode MUSS 'MMAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Allergyintoleranceobservation): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Allergyintoleranceobservation): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole/hl7:playingEntity/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Allergyintoleranceobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole/hl7:playingEntity/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-a01fbbd5-8e54-42e9-ae9b-853cf7c9b577">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Allergyintoleranceobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Allergyintoleranceobservation): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.52 Allergy / intolerance substances (2015-03-26T00:00:00)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.52-2015-03-26T000000.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4066-2014-06-09T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Allergyintoleranceobservation): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.52 Allergy / intolerance substances (2015-03-26T00:00:00).</assert>
   </rule>
</pattern>
