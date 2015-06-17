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
         id="tmp-r-2529fec8-fe4d-40d4-9c5e-2bca05a64764">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])&gt;=1 ">(Problemobservationcedis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])&lt;=1">(Problemobservationcedis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']"
         id="tmp-r-4ffacfa4-2c0a-4c4f-8603-e40b91f592f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Problemobservationcedis): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Problemobservationcedis): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4040'])&gt;=1 ">(Problemobservationcedis): Element hl7:templateId[@root='1.2.276.0.76.10.4040'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4040'])&lt;=1">(Problemobservationcedis): Element hl7:templateId[@root='1.2.276.0.76.10.4040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Problemobservationcedis): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Problemobservationcedis): Element hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Problemobservationcedis): Element hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Problemobservationcedis): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Problemobservationcedis): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Problemobservationcedis): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Problemobservationcedis): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Problemobservationcedis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Problemobservationcedis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Problemobservationcedis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:templateId[@root='1.2.276.0.76.10.4040']
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:templateId[@root='1.2.276.0.76.10.4040']"
         id="tmp-r-85380e9e-6738-484d-80cf-3b0898f69f1a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4040')">(Problemobservationcedis): Der Wert von @root MUSS '1.2.276.0.76.10.4040' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:id
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:id"
         id="tmp-r-953e9d86-204d-4ada-81ad-517f9c809857">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-f82d7cc3-09b5-4447-aea3-95c86584fb52">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="@nullFlavor or (@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')">(Problemobservationcedis): Der Elementinhalt MUSS einer von 'code '409586006' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text"
         id="tmp-r-f82a5b62-30b9-4aca-8d26-f8c2f892a276">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Problemobservationcedis): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Problemobservationcedis): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/hl7:reference
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/hl7:reference"
         id="tmp-r-4607739d-ac80-47b3-b368-40cefb0bde7c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:statusCode[@code='completed']
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:statusCode[@code='completed']"
         id="tmp-r-0571a9c0-fb4a-461c-8dff-ba475923a09c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Problemobservationcedis): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime"
         id="tmp-r-4a2ddaf6-750a-49fa-bd46-d9e847218120">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:low)&gt;=1 ">(Problemobservationcedis): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:low)&lt;=1">(Problemobservationcedis): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Problemobservationcedis): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:low
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:low"
         id="tmp-r-fff0effa-927f-459e-912c-3f1dfd7a65b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:high
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/hl7:high"
         id="tmp-r-91bfe08c-cf7e-4b76-bb0e-c2a0b0c359a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Problemobservationcedis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-c33916c1-6fa5-4de1-9ce5-c76a834c9b1e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemobservationcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Problemobservationcedis): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.43 CEDIS Presenting Complaint List 1.1 (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4040-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Problemobservationcedis): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.43 CEDIS Presenting Complaint List 1.1 (DYNAMIC).</assert>
   </rule>
</pattern>
