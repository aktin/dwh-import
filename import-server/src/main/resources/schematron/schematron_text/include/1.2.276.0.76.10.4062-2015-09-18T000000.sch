<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4062
Name: Diagnostik Diagnostic ultrasonography
Description: Diagnostik Template Diagnostic ultrasonography
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4062-2015-09-18T000000">
   <title>Diagnostik Diagnostic ultrasonography</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]"
         id="tmp-r-f1021521-4ffb-461a-bc5e-746cd8e94602">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])&gt;=1 ">(Diagnosticultrasonography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])&lt;=1">(Diagnosticultrasonography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']"
         id="tmp-r-6817e045-f6c3-4f7f-bd41-a26e31db8eef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Diagnosticultrasonography): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Diagnosticultrasonography): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4062'])&gt;=1 ">(Diagnosticultrasonography): Element hl7:templateId[@root='1.2.276.0.76.10.4062'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4062'])&lt;=1">(Diagnosticultrasonography): Element hl7:templateId[@root='1.2.276.0.76.10.4062'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Diagnosticultrasonography): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Diagnosticultrasonography): Element hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Diagnosticultrasonography): Element hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Diagnosticultrasonography): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Diagnosticultrasonography): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Diagnosticultrasonography): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Diagnosticultrasonography): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Diagnosticultrasonography): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Diagnosticultrasonography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Diagnosticultrasonography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:templateId[@root='1.2.276.0.76.10.4062']
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:templateId[@root='1.2.276.0.76.10.4062']"
         id="tmp-r-06b9e558-7917-40d3-b458-abedb4f58eed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4062')">(Diagnosticultrasonography): Der Wert von @root MUSS '1.2.276.0.76.10.4062' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:id
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:id"
         id="tmp-r-815b37cb-25fd-42fd-ae35-a88e4d3e362e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-cf85c674-5d03-4107-a11e-9fc1f88e6dae">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="@nullFlavor or (@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')">(Diagnosticultrasonography): Der Elementinhalt MUSS einer von 'code '25061-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text"
         id="tmp-r-509bddb2-3c45-4f9c-bd35-a4b2f943d289">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Diagnosticultrasonography): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Diagnosticultrasonography): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/hl7:reference
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/hl7:reference"
         id="tmp-r-cb68363e-eb09-43ca-9118-6c8c34f047ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:statusCode[@code='completed']
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:statusCode[@code='completed']"
         id="tmp-r-299c26d4-2c1f-46cf-9d3c-a6230b9ba7ca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Diagnosticultrasonography): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:effectiveTime
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:effectiveTime"
         id="tmp-r-ab54b568-025d-40bd-bab7-b6b35408b243">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4062
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Diagnosticultrasonography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-f8a43e94-1adb-41b6-85ee-6c1cee14091a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Diagnosticultrasonography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Diagnosticultrasonography): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4062-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Diagnosticultrasonography): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
