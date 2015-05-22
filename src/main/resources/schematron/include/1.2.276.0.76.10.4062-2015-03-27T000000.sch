<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4062
Name: Diagnostik Diagnostic ultrasonography
Description: Diagnostik Template Diagnostic ultrasonography
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4062-2015-03-27T000000">
   <title>Diagnostik Diagnostic ultrasonography</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]"
         id="tmp-r-e8ae0661-47eb-447f-b5ef-e25b5566aa4d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])&gt;=1 ">(Diagnosticultrasonography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])&lt;=1">(Diagnosticultrasonography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']"
         id="tmp-r-9d4b67c1-a804-4840-916f-880660daa254">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Diagnosticultrasonography): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Diagnosticultrasonography): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4062'])&gt;=1 ">(Diagnosticultrasonography): Element hl7:templateId[@root='1.2.276.0.76.10.4062'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4062'])&lt;=1">(Diagnosticultrasonography): Element hl7:templateId[@root='1.2.276.0.76.10.4062'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Diagnosticultrasonography): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Diagnosticultrasonography): Element hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Diagnosticultrasonography): Element hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Diagnosticultrasonography): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Diagnosticultrasonography): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Diagnosticultrasonography): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Diagnosticultrasonography): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Diagnosticultrasonography): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Diagnosticultrasonography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Diagnosticultrasonography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:templateId[@root='1.2.276.0.76.10.4062']
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:templateId[@root='1.2.276.0.76.10.4062']"
         id="tmp-r-ba115583-12ed-4dfa-9fc8-3e8e3a7b1b15">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4062')">(Diagnosticultrasonography): Der Wert von @root MUSS '1.2.276.0.76.10.4062' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:id
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:id"
         id="tmp-r-f7ec7c2a-b7c5-47c7-8758-5cf1d9621d22">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-2899854e-55c2-476e-8872-5ac1e744d40a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="@nullFlavor or (@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')">(Diagnosticultrasonography): Der Elementinhalt MUSS einer von 'code '16310003' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text"
         id="tmp-r-e8fce36f-774f-44dc-a920-cb1e3af14529">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Diagnosticultrasonography): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Diagnosticultrasonography): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/hl7:reference
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/hl7:reference"
         id="tmp-r-35e2bdf2-d8d6-4410-8441-3a99587e34cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:statusCode[@code='completed']
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:statusCode[@code='completed']"
         id="tmp-r-1a2ccaaf-41d7-40a2-a227-feaa87c1300a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Diagnosticultrasonography): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:effectiveTime
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:effectiveTime"
         id="tmp-r-d488377b-3455-4cfe-8ea5-47f4ec89359a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-6079ff12-0df6-4b75-9b49-5a8c925994bd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Diagnosticultrasonography): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4062-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Diagnosticultrasonography): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
