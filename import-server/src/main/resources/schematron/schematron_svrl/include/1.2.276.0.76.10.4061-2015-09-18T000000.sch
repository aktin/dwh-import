<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4061
Name: Diagnostik 12 lead electrocardiogram
Description: Diagnostik Template 12 lead electrocardiogram
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4061-2015-09-18T000000">
   <title>Diagnostik 12 lead electrocardiogram</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]"
         id="tmp-r-ed2b74c9-9f52-49ea-a3d2-5218352a6826">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'])&gt;=1 ">(Twelveleadelectrocardiogram): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'])&lt;=1">(Twelveleadelectrocardiogram): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']"
         id="tmp-r-4191c454-cb84-4cdc-a903-165306898864">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Twelveleadelectrocardiogram): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Twelveleadelectrocardiogram): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4061'])&gt;=1 ">(Twelveleadelectrocardiogram): Element hl7:templateId[@root='1.2.276.0.76.10.4061'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4061'])&lt;=1">(Twelveleadelectrocardiogram): Element hl7:templateId[@root='1.2.276.0.76.10.4061'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Twelveleadelectrocardiogram): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Twelveleadelectrocardiogram): Element hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Twelveleadelectrocardiogram): Element hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Twelveleadelectrocardiogram): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Twelveleadelectrocardiogram): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Twelveleadelectrocardiogram): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Twelveleadelectrocardiogram): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Twelveleadelectrocardiogram): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Twelveleadelectrocardiogram): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Twelveleadelectrocardiogram): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:templateId[@root='1.2.276.0.76.10.4061']
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:templateId[@root='1.2.276.0.76.10.4061']"
         id="tmp-r-b99cba16-c307-4ac0-bd3b-0ce980abd9a0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4061')">(Twelveleadelectrocardiogram): Der Wert von @root MUSS '1.2.276.0.76.10.4061' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:id
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:id"
         id="tmp-r-8cdceec7-be14-4c61-938f-e9c1b7776c17">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-1f6207c8-8ab8-48f5-a5cc-287bd6f7b0c8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="@nullFlavor or (@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')">(Twelveleadelectrocardiogram): Der Elementinhalt MUSS einer von 'code '34534-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text"
         id="tmp-r-d7d99af3-987a-4370-baf5-884e281f8353">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Twelveleadelectrocardiogram): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Twelveleadelectrocardiogram): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text/hl7:reference
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text/hl7:reference"
         id="tmp-r-d1e00f2f-2718-4ccd-8a60-204604ea64a7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:statusCode[@code='completed']
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:statusCode[@code='completed']"
         id="tmp-r-8878bfa4-5577-4834-ac82-6bd2a1dda489">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Twelveleadelectrocardiogram): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:effectiveTime
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:effectiveTime"
         id="tmp-r-a108482c-6c3b-4e26-bba2-704d9bcc22a9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4061
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Twelveleadelectrocardiogram)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-3d00b2cc-9f20-4fc9-8a79-d5b4b9082dde">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Twelveleadelectrocardiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Twelveleadelectrocardiogram): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4061-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Twelveleadelectrocardiogram): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
