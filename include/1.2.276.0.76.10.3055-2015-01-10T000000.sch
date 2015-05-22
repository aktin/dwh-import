<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3055
Name: Abschlussdiagnosen
Description: Abschlussdiagnosen Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3055-2015-01-10T000000">
   <title>Abschlussdiagnosen</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]
Item: (Eddiagnosis)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']
Item: (Eddiagnosis)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']"
         id="tmp-r-a1a2444a-3109-4c2a-a76b-d6b1afd47784">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Eddiagnosis): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3055'])&gt;=1 ">(Eddiagnosis): Element hl7:templateId[@root='1.2.276.0.76.10.3055'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3055'])&lt;=1">(Eddiagnosis): Element hl7:templateId[@root='1.2.276.0.76.10.3055'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Eddiagnosis): Element hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Eddiagnosis): Element hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Eddiagnosis): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Eddiagnosis): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Eddiagnosis): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Eddiagnosis): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']])&lt;=1">(Eddiagnosis): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:templateId[@root='1.2.276.0.76.10.3055']
Item: (Eddiagnosis)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:templateId[@root='1.2.276.0.76.10.3055']"
         id="tmp-r-d800673d-a414-4e8c-ab07-bebac2c61fc7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3055')">(Eddiagnosis): Der Wert von @root MUSS '1.2.276.0.76.10.3055' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Eddiagnosis)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-4575c37b-d8d1-4058-8824-be873fa81763">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="@nullFlavor or (@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')">(Eddiagnosis): Der Elementinhalt MUSS einer von 'code '11301-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:title
Item: (Eddiagnosis)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:title"
         id="tmp-r-08b46d18-5dce-4eab-a860-4dabb8f6031f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="text()='Abschlussdiagnosen'">(Eddiagnosis): Der Elementinhalt von 'hl7:title' MUSS ''Abschlussdiagnosen'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:text
Item: (Eddiagnosis)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:text"
         id="tmp-r-7aca47b0-27be-48c4-b000-cb7cabbdb567">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddiagnosis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]
Item: (Eddiagnosis)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Eddiagnosis): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Eddiagnosis): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Eddiagnosis): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3055-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Eddiagnosis): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
