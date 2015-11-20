<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4037
Name: Transportmethode
Description: Transportmethode
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4037-2015-03-03T000000">
   <title>Transportmethode</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]"
         id="tmp-r-eb72d5d7-47a9-41b4-a426-ca04facb43e9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'])&gt;=1 ">(Transportmethod): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'])&lt;=1">(Transportmethod): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']"
         id="tmp-r-7f3138d4-8103-49cb-bd51-918783d6a4b8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Transportmethod): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Transportmethod): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4037'])&gt;=1 ">(Transportmethod): Element hl7:templateId[@root='1.2.276.0.76.10.4037'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4037'])&lt;=1">(Transportmethod): Element hl7:templateId[@root='1.2.276.0.76.10.4037'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:id)&lt;=1">(Transportmethod): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Transportmethod): Element hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Transportmethod): Element hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Transportmethod): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Transportmethod): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Transportmethod): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Transportmethod): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Transportmethod): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Transportmethod): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:templateId[@root='1.2.276.0.76.10.4037']
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:templateId[@root='1.2.276.0.76.10.4037']"
         id="tmp-r-f5311461-3f21-4cb7-9731-d0bcba4bf1e4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4037')">(Transportmethod): Der Wert von @root MUSS '1.2.276.0.76.10.4037' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:id
Item: (Transportmethod)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-04397628-2f31-4368-8fa9-bdc40a7b0dd5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="@nullFlavor or (@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')">(Transportmethod): Der Elementinhalt MUSS einer von 'code '11459-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text"
         id="tmp-r-50f9602e-9f05-4b36-813e-530af94ff529">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Transportmethod): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Transportmethod): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text/hl7:reference
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text/hl7:reference"
         id="tmp-r-ccda5441-9aeb-4066-b13e-56482632bc57">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:statusCode[@code='completed']
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:statusCode[@code='completed']"
         id="tmp-r-90b73a2c-456d-413a-bdf6-e4a9a4153707">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Transportmethod): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime"
         id="tmp-r-bcb3a251-d2b0-4af0-afe9-d64f04ea583b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:high)&gt;=1 ">(Transportmethod): Element hl7:high ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Transportmethod): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime/hl7:high
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime/hl7:high"
         id="tmp-r-a968ccf9-6725-44ed-aa50-390f121d35ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Transportmethod)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-7f34f1f5-4d6a-4de5-a01f-369434e0e261">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Transportmethod): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.41 Transportmethode (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Transportmethod): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.41 Transportmethode (DYNAMIC).</assert>
   </rule>
</pattern>
