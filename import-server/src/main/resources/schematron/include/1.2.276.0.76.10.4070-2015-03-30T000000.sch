<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4070
Name: Zusätzliche externe Dokumentation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4070-2015-03-30T000000">
   <title>Zusätzliche externe Dokumentation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]
Item: (Additionalexternalocuments)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']
Item: (Additionalexternalocuments)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']"
         id="tmp-r-9bd00b48-e9db-405a-8fae-094b5d142454">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="string(@classCode)=('ACT')">(Additionalexternalocuments): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="string(@moodCode)=('EVN')">(Additionalexternalocuments): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4070'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4070']/@nullFlavor)">(Additionalexternalocuments): Element hl7:templateId[@root='1.2.276.0.76.10.4070'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4070'])&lt;=1">(Additionalexternalocuments): Element hl7:templateId[@root='1.2.276.0.76.10.4070'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Additionalexternalocuments): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Additionalexternalocuments): Element hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Additionalexternalocuments): Element hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:text)&lt;=1">(Additionalexternalocuments): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:templateId[@root='1.2.276.0.76.10.4070']
Item: (Additionalexternalocuments)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:templateId[@root='1.2.276.0.76.10.4070']"
         id="tmp-r-ba6ef85a-ff88-48ae-8758-dfc3a6a9b4ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalexternalocuments): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4070')">(Additionalexternalocuments): Der Wert von @root MUSS '1.2.276.0.76.10.4070' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:id
Item: (Additionalexternalocuments)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:id"
         id="tmp-r-c9c13c11-d38c-4e9a-8091-e3f0cf788fe1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalexternalocuments): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Additionalexternalocuments)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-cfaa1d6e-ff6a-426d-aa80-5ae2a5d8e960">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalexternalocuments): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="@nullFlavor or (@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')">(Additionalexternalocuments): Der Elementinhalt MUSS einer von 'code '11516-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text
Item: (Additionalexternalocuments)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text"
         id="tmp-r-497cacf1-a3c4-4403-98df-92f2e7819c78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalexternalocuments): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Additionalexternalocuments): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:reference)&lt;=1">(Additionalexternalocuments): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text/hl7:reference
Item: (Additionalexternalocuments)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text/hl7:reference"
         id="tmp-r-a0a252a7-1bbf-42d5-9857-dbb78e89fb4a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalexternalocuments): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]
Item: (Additionalexternalocuments)
--></pattern>
