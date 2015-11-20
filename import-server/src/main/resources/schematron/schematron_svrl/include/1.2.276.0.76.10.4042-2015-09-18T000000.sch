<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4042
Name: Ersteinschätzung
Description: Ersteinschätzung
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4042-2015-09-18T000000">
   <title>Ersteinschätzung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]"
         id="tmp-r-352ac9d8-b537-4e60-8cc5-4a9595c2eae2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])&gt;=1 ">(Acuityobservation): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])&lt;=1">(Acuityobservation): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']"
         id="tmp-r-1896e04c-6cd2-43e4-bf1f-a43cb8e7c9bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Acuityobservation): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Acuityobservation): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4042'])&gt;=1 ">(Acuityobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4042'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4042'])&lt;=1">(Acuityobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4042'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Acuityobservation): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Acuityobservation): Element hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Acuityobservation): Element hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Acuityobservation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Acuityobservation): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Acuityobservation): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Acuityobservation): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Acuityobservation): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount" value="count(hl7:value|hl7:value)"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="$elmcount&lt;=1">(Acuityobservation): Auswahl (hl7:value oder hl7:value) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:value)&lt;=1">(Acuityobservation): Element hl7:value kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:value)&lt;=1">(Acuityobservation): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:templateId[@root='1.2.276.0.76.10.4042']
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:templateId[@root='1.2.276.0.76.10.4042']"
         id="tmp-r-1674d5a8-0425-45e9-a2b7-77bdc6b52bb2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4042')">(Acuityobservation): Der Wert von @root MUSS '1.2.276.0.76.10.4042' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:id
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:id"
         id="tmp-r-0f4d7c5e-d245-4dff-8a12-6fee97708e52">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-19e92f29-608f-4fc8-98aa-b7733b80d0ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="@nullFlavor or (@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')">(Acuityobservation): Der Elementinhalt MUSS einer von 'code '11283-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text"
         id="tmp-r-8afa6dfd-044d-463d-bb12-bda8308702f8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Acuityobservation): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Acuityobservation): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/hl7:reference
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/hl7:reference"
         id="tmp-r-37d8735f-73b9-4fab-9e85-663c97d5f347">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:statusCode[@code='completed']
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:statusCode[@code='completed']"
         id="tmp-r-3745129f-f819-40f3-9b23-798f7b558ff1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Acuityobservation): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime"
         id="tmp-r-aebc0669-7bee-4fe2-b3b9-82fa81644b9a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:low)&gt;=1 ">(Acuityobservation): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:low)&lt;=1">(Acuityobservation): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="count(hl7:high)&lt;=1">(Acuityobservation): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:low
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:low"
         id="tmp-r-dbc2c462-19f4-4c2a-abb1-0296ff7c79cb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:high
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:high"
         id="tmp-r-db8227c4-8a64-49e6-a40c-2db6de8cc92f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value"
         id="tmp-r-a00b64fa-0337-4e58-ab1b-4fc7e6a9b536">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Acuityobservation): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.44 Manchester-Triage-System (DYNAMIC) oder 1.2.276.0.76.11.45 Emergency Severity Index (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008']) or exists(doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Acuityobservation): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.44 Manchester-Triage-System (DYNAMIC) oder 1.2.276.0.76.11.45 Emergency Severity Index (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value"
         id="tmp-r-1fd81b87-93a1-4f79-846d-3cd6d01f537e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4042-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
</pattern>
