<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4059
Name: Diagnostik Blood gas analysis
Description: Diagnostik Template Blood gas analysis
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4059-2015-03-27T000000">
   <title>Diagnostik Blood gas analysis</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]"
         id="tmp-r-366189a0-c93f-472a-a030-cde9abbdb4a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])&gt;=1 ">(Bloodgasanalysis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])&lt;=1">(Bloodgasanalysis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']"
         id="tmp-r-a4f84928-d057-4974-8941-9dde66e12d08">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Bloodgasanalysis): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Bloodgasanalysis): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4059'])&gt;=1 ">(Bloodgasanalysis): Element hl7:templateId[@root='1.2.276.0.76.10.4059'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4059'])&lt;=1">(Bloodgasanalysis): Element hl7:templateId[@root='1.2.276.0.76.10.4059'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Bloodgasanalysis): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Bloodgasanalysis): Element hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Bloodgasanalysis): Element hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Bloodgasanalysis): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Bloodgasanalysis): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Bloodgasanalysis): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Bloodgasanalysis): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Bloodgasanalysis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Bloodgasanalysis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Bloodgasanalysis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:templateId[@root='1.2.276.0.76.10.4059']
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:templateId[@root='1.2.276.0.76.10.4059']"
         id="tmp-r-5e286925-1a24-45ab-855c-553e9beb98c2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4059')">(Bloodgasanalysis): Der Wert von @root MUSS '1.2.276.0.76.10.4059' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:id
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:id"
         id="tmp-r-9ab7b6ae-dd95-475d-85a0-6d4aba006fd0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-d2301623-23e5-4f65-b8b5-0626bbefa5fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="@nullFlavor or (@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')">(Bloodgasanalysis): Der Elementinhalt MUSS einer von 'code '278297009' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text"
         id="tmp-r-9e2ebb58-603a-4730-a36e-bac76a61e979">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Bloodgasanalysis): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Bloodgasanalysis): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/hl7:reference
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/hl7:reference"
         id="tmp-r-69680796-f282-47fe-a42e-c09e6f6d6c97">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:statusCode[@code='completed']
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:statusCode[@code='completed']"
         id="tmp-r-cbfbbd4c-fd22-414e-9c1a-3136d2316346">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Bloodgasanalysis): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:effectiveTime
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:effectiveTime"
         id="tmp-r-13ba0e64-1713-4392-b2de-05d38c91718f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-7e2a1e66-154c-4dd0-a444-a5c01876909d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Bloodgasanalysis): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Bloodgasanalysis): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
