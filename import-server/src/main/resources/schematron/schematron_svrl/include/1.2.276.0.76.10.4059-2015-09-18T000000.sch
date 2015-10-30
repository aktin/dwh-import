<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4059
Name: Diagnostik Blood gas analysis
Description: Diagnostik Template Blood gas analysis
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4059-2015-09-18T000000">
   <title>Diagnostik Blood gas analysis</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]"
         id="tmp-r-bfd3ce1c-d37c-4801-b049-8f1b0b45dfb2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])&gt;=1 ">(Bloodgasanalysis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])&lt;=1">(Bloodgasanalysis): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']"
         id="tmp-r-1dc6cc20-2077-4466-8425-fbcca4fe121b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Bloodgasanalysis): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Bloodgasanalysis): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4059'])&gt;=1 ">(Bloodgasanalysis): Element hl7:templateId[@root='1.2.276.0.76.10.4059'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4059'])&lt;=1">(Bloodgasanalysis): Element hl7:templateId[@root='1.2.276.0.76.10.4059'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Bloodgasanalysis): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Bloodgasanalysis): Element hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Bloodgasanalysis): Element hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Bloodgasanalysis): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Bloodgasanalysis): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Bloodgasanalysis): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Bloodgasanalysis): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Bloodgasanalysis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Bloodgasanalysis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Bloodgasanalysis): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:templateId[@root='1.2.276.0.76.10.4059']
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:templateId[@root='1.2.276.0.76.10.4059']"
         id="tmp-r-02090835-3638-4a46-86da-4e43c62e582d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4059')">(Bloodgasanalysis): Der Wert von @root MUSS '1.2.276.0.76.10.4059' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:id
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:id"
         id="tmp-r-601c6dd5-aee5-4efd-b42f-4c5eda47c69a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-6317a48b-746f-43b6-b2f3-567baa53d9ec">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="@nullFlavor or (@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')">(Bloodgasanalysis): Der Elementinhalt MUSS einer von 'code '18767-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text"
         id="tmp-r-37ce4a0d-d2f3-4ec4-9fb1-bb1991f6d1b4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Bloodgasanalysis): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Bloodgasanalysis): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/hl7:reference
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/hl7:reference"
         id="tmp-r-b7190b2a-b718-40e3-ae27-390aaec9d162">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:statusCode[@code='completed']
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:statusCode[@code='completed']"
         id="tmp-r-418147d7-269c-44e4-aa5d-a77f473085a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Bloodgasanalysis): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:effectiveTime
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:effectiveTime"
         id="tmp-r-9a0b4578-acb7-4769-ac8f-949e65b13c6e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Bloodgasanalysis)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-e40aca43-b480-4385-9943-ba3b42f5a44e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloodgasanalysis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Bloodgasanalysis): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Bloodgasanalysis): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
