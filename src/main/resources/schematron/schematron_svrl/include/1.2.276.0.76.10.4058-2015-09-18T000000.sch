<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4058
Name: Diagnostik Magnetic resonance imaging
Description: Diagnostik Template Magnetic resonance imaging
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4058-2015-09-18T000000">
   <title>Diagnostik Magnetic resonance imaging</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]"
         id="tmp-r-8a8bc469-020c-4c29-8854-995ef66b0f63">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])&gt;=1 ">(Magneticresonanceimaging): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])&lt;=1">(Magneticresonanceimaging): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']"
         id="tmp-r-ae3dc292-32e7-4b73-8ad0-617724d6abbd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Magneticresonanceimaging): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Magneticresonanceimaging): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4058'])&gt;=1 ">(Magneticresonanceimaging): Element hl7:templateId[@root='1.2.276.0.76.10.4058'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4058'])&lt;=1">(Magneticresonanceimaging): Element hl7:templateId[@root='1.2.276.0.76.10.4058'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Magneticresonanceimaging): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Magneticresonanceimaging): Element hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Magneticresonanceimaging): Element hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Magneticresonanceimaging): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Magneticresonanceimaging): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Magneticresonanceimaging): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Magneticresonanceimaging): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Magneticresonanceimaging): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Magneticresonanceimaging): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Magneticresonanceimaging): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:templateId[@root='1.2.276.0.76.10.4058']
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:templateId[@root='1.2.276.0.76.10.4058']"
         id="tmp-r-43ab2688-fbf2-4140-9a1b-37746d6991bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4058')">(Magneticresonanceimaging): Der Wert von @root MUSS '1.2.276.0.76.10.4058' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:id
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:id"
         id="tmp-r-08c26a59-3c63-4513-ab2c-2ca6ab1629ce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-72f19abf-feb1-46e2-a0a6-f4cc2c04e05c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="@nullFlavor or (@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')">(Magneticresonanceimaging): Der Elementinhalt MUSS einer von 'code '25056-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text"
         id="tmp-r-187028fe-85ec-4f90-88ca-d77039ff95f2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Magneticresonanceimaging): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Magneticresonanceimaging): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/hl7:reference
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/hl7:reference"
         id="tmp-r-4c946c47-b07f-4095-a4d3-139f0494a0ca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:statusCode[@code='completed']
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:statusCode[@code='completed']"
         id="tmp-r-baa1faf7-eace-4ba0-84fe-d14c8adcfd14">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Magneticresonanceimaging): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:effectiveTime
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:effectiveTime"
         id="tmp-r-37b95bcc-a131-4c5b-a72e-db76763b15ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4058
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Magneticresonanceimaging)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-950cd956-42bc-4130-baa6-282d4e4615f9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Magneticresonanceimaging): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Magneticresonanceimaging): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4058-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Magneticresonanceimaging): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
