<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3048
Name: Beschwerden bei Vorstellung
Description: Beschwerden bei Vorstellung / Grund der Vorstellung
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3048-2015-01-10T000000">
   <title>Beschwerden bei Vorstellung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]
Item: (Chiefcomplaintreasonforvisit)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']
Item: (Chiefcomplaintreasonforvisit)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']"
         id="tmp-r-acec9bae-a0cf-4dbe-9be1-13210d0b04bc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Chiefcomplaintreasonforvisit): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3048'])&gt;=1 ">(Chiefcomplaintreasonforvisit): Element hl7:templateId[@root='1.2.276.0.76.10.3048'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3048'])&lt;=1">(Chiefcomplaintreasonforvisit): Element hl7:templateId[@root='1.2.276.0.76.10.3048'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Chiefcomplaintreasonforvisit): Element hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Chiefcomplaintreasonforvisit): Element hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Chiefcomplaintreasonforvisit): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Chiefcomplaintreasonforvisit): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Chiefcomplaintreasonforvisit): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Chiefcomplaintreasonforvisit): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']])&gt;=1 ">(Chiefcomplaintreasonforvisit): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']])&lt;=1">(Chiefcomplaintreasonforvisit): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:templateId[@root='1.2.276.0.76.10.3048']
Item: (Chiefcomplaintreasonforvisit)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:templateId[@root='1.2.276.0.76.10.3048']"
         id="tmp-r-249545ab-97fe-4011-b0c2-8631859a6379">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Chiefcomplaintreasonforvisit): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3048')">(Chiefcomplaintreasonforvisit): Der Wert von @root MUSS '1.2.276.0.76.10.3048' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Chiefcomplaintreasonforvisit)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-cff02b50-93fd-4135-950a-fedac5841dc1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Chiefcomplaintreasonforvisit): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="@nullFlavor or (@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')">(Chiefcomplaintreasonforvisit): Der Elementinhalt MUSS einer von 'code '46239-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:title
Item: (Chiefcomplaintreasonforvisit)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:title"
         id="tmp-r-9fbbadd3-3d87-4a93-ac74-57ac4577bee8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Chiefcomplaintreasonforvisit): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="text()='Beschwerden bei Vorstellung'">(Chiefcomplaintreasonforvisit): Der Elementinhalt von 'hl7:title' MUSS ''Beschwerden bei Vorstellung'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:text
Item: (Chiefcomplaintreasonforvisit)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:text"
         id="tmp-r-3465f4d8-a0b5-49af-98aa-cfa1ac156c12">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Chiefcomplaintreasonforvisit): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]
Item: (Chiefcomplaintreasonforvisit)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Chiefcomplaintreasonforvisit): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Chiefcomplaintreasonforvisit): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Chiefcomplaintreasonforvisit): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Chiefcomplaintreasonforvisit): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
