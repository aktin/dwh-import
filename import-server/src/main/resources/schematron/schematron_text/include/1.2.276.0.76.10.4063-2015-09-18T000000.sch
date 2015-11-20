<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4063
Name: Diagnostik Computerized axial tomography
Description: Diagnostik Template Computerized axial tomography
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4063-2015-09-18T000000">
   <title>Diagnostik Computerized axial tomography</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]"
         id="tmp-r-fa3ec37b-0307-45c5-a29d-b95b4d69f389">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])&gt;=1 ">(Computerizedaxialtomography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])&lt;=1">(Computerizedaxialtomography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']"
         id="tmp-r-9be1d705-ee83-40e1-9428-118643cb0f45">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Computerizedaxialtomography): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Computerizedaxialtomography): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4063'])&gt;=1 ">(Computerizedaxialtomography): Element hl7:templateId[@root='1.2.276.0.76.10.4063'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4063'])&lt;=1">(Computerizedaxialtomography): Element hl7:templateId[@root='1.2.276.0.76.10.4063'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Computerizedaxialtomography): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Computerizedaxialtomography): Element hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Computerizedaxialtomography): Element hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Computerizedaxialtomography): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Computerizedaxialtomography): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Computerizedaxialtomography): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Computerizedaxialtomography): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Computerizedaxialtomography): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Computerizedaxialtomography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Computerizedaxialtomography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:templateId[@root='1.2.276.0.76.10.4063']
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:templateId[@root='1.2.276.0.76.10.4063']"
         id="tmp-r-8cc131b3-03b2-4b9d-a3f3-79d7334d891e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4063')">(Computerizedaxialtomography): Der Wert von @root MUSS '1.2.276.0.76.10.4063' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:id
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:id"
         id="tmp-r-e114690e-e60f-41fe-9237-86a4ebf03f99">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-fd4cec20-1f38-4854-a6a0-4055d12a6bb9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="@nullFlavor or (@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')">(Computerizedaxialtomography): Der Elementinhalt MUSS einer von 'code '25045-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text"
         id="tmp-r-6db8504c-4895-4ccf-8d59-86196d476a4d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Computerizedaxialtomography): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Computerizedaxialtomography): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/hl7:reference
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/hl7:reference"
         id="tmp-r-9a068d7a-1278-4524-a139-0f9517222b6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:statusCode[@code='completed']
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:statusCode[@code='completed']"
         id="tmp-r-9d00cf19-0be7-4790-81cc-4c7189e5c02d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Computerizedaxialtomography): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:effectiveTime
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:effectiveTime"
         id="tmp-r-fd066631-fe4a-4a06-abe0-60492d81ab27">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-f54e6fa0-b327-4f79-a14c-5ea7627cd2f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Computerizedaxialtomography): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Computerizedaxialtomography): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
