<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4040
Name: Problem Observation (Text/CEDIS)
Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptom und ggf. CEDIS-Kode
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4040-2015-03-03T000000">
   <title>Problem Observation (Text/CEDIS)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]"
         id="tmp-r-5118c647-26fa-47de-a570-f55913e151b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])&gt;=1 ">(Problemobservationcedis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])&lt;=1">(Problemobservationcedis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']"
         id="tmp-r-94537af9-fdc5-4913-a04b-5aa54003ac61">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Problemobservationcedis): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Problemobservationcedis): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4040'])&gt;=1 ">(Problemobservationcedis): Element hl7:templateId[@root='1.2.276.0.76.10.4040'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4040'])&lt;=1">(Problemobservationcedis): Element hl7:templateId[@root='1.2.276.0.76.10.4040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Problemobservationcedis): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Problemobservationcedis): Element hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Problemobservationcedis): Element hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Problemobservationcedis): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Problemobservationcedis): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Problemobservationcedis): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Problemobservationcedis): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Problemobservationcedis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Problemobservationcedis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Problemobservationcedis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:templateId[@root='1.2.276.0.76.10.4040']
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:templateId[@root='1.2.276.0.76.10.4040']"
         id="tmp-r-42b9e3ec-0c57-49fb-8fea-aead84f2743a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4040')">(Problemobservationcedis): Der Wert von @root MUSS '1.2.276.0.76.10.4040' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:id
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:id"
         id="tmp-r-0f34e977-9982-44bc-9d5c-c7ee80fcc3c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-0b4927ed-74dd-4217-8532-851d400cb646">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="@nullFlavor or (@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')">(Problemobservationcedis): Der Elementinhalt MUSS einer von 'code '409586006' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text"
         id="tmp-r-5f55bc2a-f25b-4934-affe-c6c5402826a4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Problemobservationcedis): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Problemobservationcedis): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/hl7:reference
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/hl7:reference"
         id="tmp-r-a3220e96-21e2-4604-8741-dc22812e979a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:statusCode[@code='completed']
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:statusCode[@code='completed']"
         id="tmp-r-918a2351-8303-4e9c-b7fb-d387380fe9e2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Problemobservationcedis): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime"
         id="tmp-r-75a96c7a-824d-491c-a500-743053a62d8f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:low)&gt;=1 ">(Problemobservationcedis): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:low)&lt;=1">(Problemobservationcedis): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Problemobservationcedis): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:low
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:low"
         id="tmp-r-9b5652cd-b5c8-4402-b3a5-332ab53afced">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:high
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:high"
         id="tmp-r-adde39d6-aaee-4b5b-a7e2-627fde08f777">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-7185dadb-ed6b-4049-9493-a50475eae9ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Problemobservationcedis): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.43 CEDIS Presenting Complaint List 1.1 (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Problemobservationcedis): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.43 CEDIS Presenting Complaint List 1.1 (DYNAMIC).</assert>
   </rule>
</pattern>