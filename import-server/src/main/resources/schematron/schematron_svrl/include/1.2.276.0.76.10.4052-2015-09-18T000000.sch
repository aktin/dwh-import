<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4052
Name: Diagnostik Pelvis X-ray
Description: Diagnostik Template Pelvis X-ray in Emergency Department in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4052-2015-09-18T000000">
   <title>Diagnostik Pelvis X-ray</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]"
         id="tmp-r-37485b4f-6589-4fda-b585-47beefd635b3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])&gt;=1 ">(Pelvisxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])&lt;=1">(Pelvisxray): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']"
         id="tmp-r-44b9da81-28fd-448c-b0b3-74e375038ac7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Pelvisxray): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Pelvisxray): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4052'])&gt;=1 ">(Pelvisxray): Element hl7:templateId[@root='1.2.276.0.76.10.4052'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4052'])&lt;=1">(Pelvisxray): Element hl7:templateId[@root='1.2.276.0.76.10.4052'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Pelvisxray): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Pelvisxray): Element hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Pelvisxray): Element hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Pelvisxray): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Pelvisxray): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Pelvisxray): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Pelvisxray): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Pelvisxray): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Pelvisxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Pelvisxray): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:participant)&gt;=1 and not(hl7:participant/@nullFlavor)">(Pelvisxray): Element hl7:participant ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:participant)&lt;=1">(Pelvisxray): Element hl7:participant kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:templateId[@root='1.2.276.0.76.10.4052']
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:templateId[@root='1.2.276.0.76.10.4052']"
         id="tmp-r-20915acc-54f9-43d4-afb9-5b2048145959">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4052')">(Pelvisxray): Der Wert von @root MUSS '1.2.276.0.76.10.4052' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:id
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:id"
         id="tmp-r-7c1999ff-1fd9-40a3-acea-73748473e6ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-ffca6304-77cb-4e00-83f7-493929ebd6f9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="@nullFlavor or (@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')">(Pelvisxray): Der Elementinhalt MUSS einer von 'code '28561-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text"
         id="tmp-r-7db4fc0e-5dd5-4e08-ba4f-b585db735a69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Pelvisxray): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Pelvisxray): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/hl7:reference
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/hl7:reference"
         id="tmp-r-da076c3b-8197-453d-9863-928bac78aeef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:statusCode[@code='completed']
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:statusCode[@code='completed']"
         id="tmp-r-0edca89a-5fae-41f1-b63e-485c6cf01d47">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Pelvisxray): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:effectiveTime
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:effectiveTime"
         id="tmp-r-c71230ce-c75e-4160-999a-383285029d8e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-f18ae401-44b4-427c-97b3-2dbca64a9c6c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Pelvisxray): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pelvisxray): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant"
         id="tmp-r-5246a001-fb82-4a52-8d78-fe8d5b2115e3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="string(@typeCode)=('LOC')">(Pelvisxray): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:participantRole)&gt;=1 and not(hl7:participantRole/@nullFlavor)">(Pelvisxray): Element hl7:participantRole ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:participantRole)&lt;=1">(Pelvisxray): Element hl7:participantRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant/hl7:participantRole
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant/hl7:participantRole"
         id="tmp-r-84d775c7-9ce7-4a97-a338-7a1c39ca19ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="string(@classCode)=('SDLOC')">(Pelvisxray): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1 and not(hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')]/@nullFlavor)">(Pelvisxray): Element hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="count(hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1">(Pelvisxray): Element hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4052
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant/hl7:participantRole/hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (Pelvisxray)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant/hl7:participantRole/hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')]"
         id="tmp-r-f485ac70-f676-4b83-9b36-bc09942828fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pelvisxray): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4052-2015-09-18T000000.html"
              test="@nullFlavor or (@code='ER' and @codeSystem='2.16.840.1.113883.5.111')">(Pelvisxray): Der Elementinhalt MUSS einer von 'code 'ER' codeSystem '2.16.840.1.113883.5.111'' sein.</assert>
   </rule>
</pattern>
