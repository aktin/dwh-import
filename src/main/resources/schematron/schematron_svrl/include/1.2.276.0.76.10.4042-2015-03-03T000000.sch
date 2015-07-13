<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4042
Name: Triage-Einschätzung
Description: Einschätzung
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4042-2015-03-03T000000">
   <title>Triage-Einschätzung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]"
         id="tmp-r-c4d9b4f4-2ff7-4aa6-b3f1-fcac3af2c5f2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])&gt;=1 ">(Acuityobservation): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])&lt;=1">(Acuityobservation): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']"
         id="tmp-r-d2f6cfdf-5671-4287-930a-4b6131941d55">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Acuityobservation): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Acuityobservation): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4042'])&gt;=1 ">(Acuityobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4042'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4042'])&lt;=1">(Acuityobservation): Element hl7:templateId[@root='1.2.276.0.76.10.4042'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Acuityobservation): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Acuityobservation): Element hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Acuityobservation): Element hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Acuityobservation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Acuityobservation): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Acuityobservation): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Acuityobservation): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Acuityobservation): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount" value="count(hl7:value|hl7:value)"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="$elmcount&lt;=1">(Acuityobservation): Auswahl (hl7:value oder hl7:value) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:value)&lt;=1">(Acuityobservation): Element hl7:value kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:value)&lt;=1">(Acuityobservation): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:templateId[@root='1.2.276.0.76.10.4042']
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:templateId[@root='1.2.276.0.76.10.4042']"
         id="tmp-r-cbaf4b67-fa22-4573-b766-a2b065c34b84">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4042')">(Acuityobservation): Der Wert von @root MUSS '1.2.276.0.76.10.4042' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:id
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:id"
         id="tmp-r-7cd232c8-1df3-4f65-a1ce-11948c3ca402">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-770d1ef0-a45f-449c-a9d8-a1c78add0e0f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="@nullFlavor or (@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')">(Acuityobservation): Der Elementinhalt MUSS einer von 'code '273887006' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text"
         id="tmp-r-540c3f16-a5ec-47ad-b334-cc363451aa00">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Acuityobservation): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Acuityobservation): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/hl7:reference
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/hl7:reference"
         id="tmp-r-d9f40922-02fb-4439-84e3-8533a0b58c86">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:statusCode[@code='completed']
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:statusCode[@code='completed']"
         id="tmp-r-ef7375ab-ccd1-4ef4-ab61-9394653c7794">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Acuityobservation): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime"
         id="tmp-r-bb0da3ad-ff20-43eb-a1b9-ba331d06d889">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:low)&gt;=1 ">(Acuityobservation): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:low)&lt;=1">(Acuityobservation): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Acuityobservation): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:low
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:low"
         id="tmp-r-a9d9b8c6-2e9e-4886-b1fa-dc48c864d111">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:high
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/hl7:high"
         id="tmp-r-26d79b1a-5d4b-4f3f-9ce1-f71763a13280">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value"
         id="tmp-r-421ad05a-3163-422d-bb2d-76f69992f66d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Acuityobservation): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.44 Manchester-Triage-System (DYNAMIC) oder 1.2.276.0.76.11.45 Emergency Severity Index (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008']) or exists(doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Acuityobservation): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.44 Manchester-Triage-System (DYNAMIC) oder 1.2.276.0.76.11.45 Emergency Severity Index (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4042
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value
Item: (Acuityobservation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:value"
         id="tmp-r-caaca5f2-0845-42a2-b59e-73bcd0cd027e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4042-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Acuityobservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
</pattern>