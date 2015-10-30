<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4043
Name: Status Schwangerschaft
Description: Status Schwangerschaft
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4043-2015-03-03T000000">
   <title>Status Schwangerschaft</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]"
         id="tmp-r-7efc0be6-373b-40e5-9755-51098ba8c35c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'])&gt;=1 ">(Pregnancystatus): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'])&lt;=1">(Pregnancystatus): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']"
         id="tmp-r-29f96f4d-bb18-414e-a304-0ad797ea0488">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Pregnancystatus): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Pregnancystatus): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4043'])&gt;=1 ">(Pregnancystatus): Element hl7:templateId[@root='1.2.276.0.76.10.4043'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4043'])&lt;=1">(Pregnancystatus): Element hl7:templateId[@root='1.2.276.0.76.10.4043'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:id)&lt;=1">(Pregnancystatus): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Pregnancystatus): Element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Pregnancystatus): Element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Pregnancystatus): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Pregnancystatus): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Pregnancystatus): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Pregnancystatus): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Pregnancystatus): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Pregnancystatus): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:templateId[@root='1.2.276.0.76.10.4043']
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:templateId[@root='1.2.276.0.76.10.4043']"
         id="tmp-r-82aee2bd-1d3d-4e0b-8340-e68bba26d2a7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pregnancystatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4043')">(Pregnancystatus): Der Wert von @root MUSS '1.2.276.0.76.10.4043' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:id
Item: (Pregnancystatus)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-4962e004-912a-4ea7-b4d3-331f8b6d0821">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pregnancystatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(Pregnancystatus): Der Elementinhalt MUSS einer von 'code '11449-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text"
         id="tmp-r-f2e8fdb4-aba4-4938-83b7-685f94022246">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pregnancystatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Pregnancystatus): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Pregnancystatus): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text/hl7:reference
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text/hl7:reference"
         id="tmp-r-e9754573-0648-4801-a3c5-144a61495ae5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pregnancystatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:statusCode[@code='completed']
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:statusCode[@code='completed']"
         id="tmp-r-9495c9c3-f485-4b12-ad8b-98dadc3cdac8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pregnancystatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Pregnancystatus): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:effectiveTime
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:effectiveTime"
         id="tmp-r-bc03d6c3-9f8c-48a2-a697-d514cd851a77">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pregnancystatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Pregnancystatus)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-255a5461-fa5e-4e5f-8ddd-e91affadaa6b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pregnancystatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Pregnancystatus): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.46 Schwangerschafts-Status (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pregnancystatus): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.46 Schwangerschafts-Status (DYNAMIC).</assert>
   </rule>
</pattern>
