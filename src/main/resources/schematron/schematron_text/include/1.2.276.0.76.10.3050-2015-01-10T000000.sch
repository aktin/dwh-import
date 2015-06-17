<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3050
Name: Diagnostik
Description: Diagnostik Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3050-2015-01-10T000000">
   <title>Diagnostik</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']
Item: (Relevantdiagnostictestsorlaboratorydata)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']"
         id="tmp-r-c90b87ac-f124-4944-9a7c-9cf1eb09d739">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3050'])&gt;=1 ">(Relevantdiagnostictestsorlaboratorydata): Element hl7:templateId[@root='1.2.276.0.76.10.3050'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3050'])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:templateId[@root='1.2.276.0.76.10.3050'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Relevantdiagnostictestsorlaboratorydata): Element hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Relevantdiagnostictestsorlaboratorydata): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Relevantdiagnostictestsorlaboratorydata): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']])&lt;=1">(Relevantdiagnostictestsorlaboratorydata): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:templateId[@root='1.2.276.0.76.10.3050']
Item: (Relevantdiagnostictestsorlaboratorydata)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:templateId[@root='1.2.276.0.76.10.3050']"
         id="tmp-r-e9d04698-4623-4b38-b09a-204c9d28f87a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Relevantdiagnostictestsorlaboratorydata): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3050')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @root MUSS '1.2.276.0.76.10.3050' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-89667158-f272-4169-9b29-a46d7f7ab344">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Relevantdiagnostictestsorlaboratorydata): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="@nullFlavor or (@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')">(Relevantdiagnostictestsorlaboratorydata): Der Elementinhalt MUSS einer von 'code '30954-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:title
Item: (Relevantdiagnostictestsorlaboratorydata)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:title"
         id="tmp-r-ac61206e-9c2b-46e7-b7bc-1cee2badf719">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Relevantdiagnostictestsorlaboratorydata): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="text()='Diagnostik'">(Relevantdiagnostictestsorlaboratorydata): Der Elementinhalt von 'hl7:title' MUSS ''Diagnostik'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:text
Item: (Relevantdiagnostictestsorlaboratorydata)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:text"
         id="tmp-r-4b780905-8a08-4201-8028-a95a8a4ff6cd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Relevantdiagnostictestsorlaboratorydata): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]
Item: (Relevantdiagnostictestsorlaboratorydata)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Relevantdiagnostictestsorlaboratorydata): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Relevantdiagnostictestsorlaboratorydata): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3050-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Relevantdiagnostictestsorlaboratorydata): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
