<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3057
Name: Zusatzmodule (weitere Dokumentation)
Description: Zusatzmodule Section (weitere Dokumentation)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3057-2015-03-30T000000">
   <title>Zusatzmodule (weitere Dokumentation)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]
Item: (Additionalmodulessection)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']"
         id="tmp-r-0f570d40-128a-4bbb-9d1e-4edd4d4337ba">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Additionalmodulessection): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3057'])&gt;=1 ">(Additionalmodulessection): Element hl7:templateId[@root='1.2.276.0.76.10.3057'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3057'])&lt;=1">(Additionalmodulessection): Element hl7:templateId[@root='1.2.276.0.76.10.3057'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Additionalmodulessection): Element hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Additionalmodulessection): Element hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Additionalmodulessection): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:title)&lt;=1">(Additionalmodulessection): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Additionalmodulessection): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:text)&lt;=1">(Additionalmodulessection): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])&gt;=1 ">(Additionalmodulessection): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])&lt;=1">(Additionalmodulessection): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:templateId[@root='1.2.276.0.76.10.3057']
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:templateId[@root='1.2.276.0.76.10.3057']"
         id="tmp-r-ab98ea42-b2bf-4d46-ac36-ba87f1194427">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalmodulessection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3057')">(Additionalmodulessection): Der Wert von @root MUSS '1.2.276.0.76.10.3057' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-112ec61f-f6b4-446d-a869-70bb61ee65b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalmodulessection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="@nullFlavor or (@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')">(Additionalmodulessection): Der Elementinhalt MUSS einer von 'code '11516-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:title
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:title"
         id="tmp-r-157851af-67f1-4077-a437-07a49d64ffe5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalmodulessection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="text()='Zusatzmodule'">(Additionalmodulessection): Der Elementinhalt von 'hl7:title' MUSS ''Zusatzmodule'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:text
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:text"
         id="tmp-r-72003ba1-9d02-4f66-bb69-a2931ab225f4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalmodulessection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]
Item: (Additionalmodulessection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@typeCode)=('COMP')">(Additionalmodulessection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Additionalmodulessection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Additionalmodulessection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Additionalmodulessection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
