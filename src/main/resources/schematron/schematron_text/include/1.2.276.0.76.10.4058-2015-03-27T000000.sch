<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4058
Name: Diagnostik Magnetic resonance imaging
Description: Diagnostik Template Magnetic resonance imaging
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4058-2015-03-27T000000">
   <title>Diagnostik Magnetic resonance imaging</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]"
         id="tmp-r-b0546be2-1210-4c8a-b187-ae24b319a131">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])&gt;=1 ">(Magneticresonanceimaging): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])&lt;=1">(Magneticresonanceimaging): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']"
         id="tmp-r-dab1a2d3-2b9e-4cb9-a1ec-2a64c90206c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Magneticresonanceimaging): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Magneticresonanceimaging): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4058'])&gt;=1 ">(Magneticresonanceimaging): Element hl7:templateId[@root='1.2.276.0.76.10.4058'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4058'])&lt;=1">(Magneticresonanceimaging): Element hl7:templateId[@root='1.2.276.0.76.10.4058'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Magneticresonanceimaging): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Magneticresonanceimaging): Element hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Magneticresonanceimaging): Element hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Magneticresonanceimaging): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Magneticresonanceimaging): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Magneticresonanceimaging): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Magneticresonanceimaging): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Magneticresonanceimaging): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Magneticresonanceimaging): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Magneticresonanceimaging): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:templateId[@root='1.2.276.0.76.10.4058']
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:templateId[@root='1.2.276.0.76.10.4058']"
         id="tmp-r-deef9479-258d-42a1-9597-e538da3902d7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4058')">(Magneticresonanceimaging): Der Wert von @root MUSS '1.2.276.0.76.10.4058' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:id
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:id"
         id="tmp-r-1afb955d-240e-40e6-95dd-ae2c5e0b3fca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-dfbaa167-2f25-415a-b886-6192e8e69a3d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="@nullFlavor or (@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')">(Magneticresonanceimaging): Der Elementinhalt MUSS einer von 'code '113091000' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text"
         id="tmp-r-5e1e8dad-f9f9-4a50-b265-e87bee848ca5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Magneticresonanceimaging): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Magneticresonanceimaging): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/hl7:reference
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/hl7:reference"
         id="tmp-r-f524ab6b-2a5b-49a7-a9c0-dee52c3c48ba">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:statusCode[@code='completed']
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:statusCode[@code='completed']"
         id="tmp-r-56c853d5-f893-4f90-8fbc-9edea7170514">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Magneticresonanceimaging): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:effectiveTime
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:effectiveTime"
         id="tmp-r-de57f187-1fd1-4036-93eb-209c4051d615">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-9ae88285-59e8-452b-a99d-7808abc7e304">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Magneticresonanceimaging): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4058-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Magneticresonanceimaging): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
