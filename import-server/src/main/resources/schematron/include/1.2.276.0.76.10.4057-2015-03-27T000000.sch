<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4057
Name: Diagnostik Laboratory test
Description: Diagnostik Template Laboratory test
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4057-2015-03-27T000000">
   <title>Diagnostik Laboratory test</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]"
         id="tmp-r-ff025fe5-2925-46de-ad27-ecdb36ff4e28">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])&gt;=1 ">(Laboratorytest): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])&lt;=1">(Laboratorytest): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']"
         id="tmp-r-0ae1c26d-7e99-4c2a-aaac-dca384475262">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Laboratorytest): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Laboratorytest): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4057'])&gt;=1 ">(Laboratorytest): Element hl7:templateId[@root='1.2.276.0.76.10.4057'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4057'])&lt;=1">(Laboratorytest): Element hl7:templateId[@root='1.2.276.0.76.10.4057'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Laboratorytest): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Laboratorytest): Element hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Laboratorytest): Element hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Laboratorytest): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Laboratorytest): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Laboratorytest): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Laboratorytest): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Laboratorytest): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Laboratorytest): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Laboratorytest): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:templateId[@root='1.2.276.0.76.10.4057']
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:templateId[@root='1.2.276.0.76.10.4057']"
         id="tmp-r-c3939af0-aec4-4a38-8bb1-cfd494998f6d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4057')">(Laboratorytest): Der Wert von @root MUSS '1.2.276.0.76.10.4057' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:id
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:id"
         id="tmp-r-1f753bc3-f296-4e7d-a3b2-6f53e157476a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-fc77d188-ddd9-4d7d-ae40-458a422d0155">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="@nullFlavor or (@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')">(Laboratorytest): Der Elementinhalt MUSS einer von 'code '15220000' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text"
         id="tmp-r-52e8899a-b4d5-4cab-b915-ded16dc22846">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Laboratorytest): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Laboratorytest): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/hl7:reference
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/hl7:reference"
         id="tmp-r-f83614bd-3e6f-47d0-bf2e-2b4437af37ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:statusCode[@code='completed']
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:statusCode[@code='completed']"
         id="tmp-r-fc68c606-af1d-42a4-88da-49b2731baac3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Laboratorytest): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:effectiveTime
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:effectiveTime"
         id="tmp-r-6187f616-5db5-4fa6-85fb-6d9ed2ef4681">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-5bcf42e3-6a4e-4055-87b8-d807f367c10c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Laboratorytest): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Laboratorytest): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
