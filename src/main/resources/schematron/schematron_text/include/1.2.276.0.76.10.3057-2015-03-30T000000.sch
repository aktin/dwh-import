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
         id="tmp-r-49225a51-0c10-4e57-a0df-f87c12e6b4ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Additionalmodulessection): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3057'])&gt;=1 ">(Additionalmodulessection): Element hl7:templateId[@root='1.2.276.0.76.10.3057'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3057'])&lt;=1">(Additionalmodulessection): Element hl7:templateId[@root='1.2.276.0.76.10.3057'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Additionalmodulessection): Element hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Additionalmodulessection): Element hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Additionalmodulessection): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:title)&lt;=1">(Additionalmodulessection): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Additionalmodulessection): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:text)&lt;=1">(Additionalmodulessection): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])&gt;=1 ">(Additionalmodulessection): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])&lt;=1">(Additionalmodulessection): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:templateId[@root='1.2.276.0.76.10.3057']
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:templateId[@root='1.2.276.0.76.10.3057']"
         id="tmp-r-1db1258a-a165-41a8-8d82-9171a0a83f85">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalmodulessection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3057')">(Additionalmodulessection): Der Wert von @root MUSS '1.2.276.0.76.10.3057' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-e9d11fdf-7fe8-4d89-8640-1898cd2500a3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalmodulessection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="@nullFlavor or (@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')">(Additionalmodulessection): Der Elementinhalt MUSS einer von 'code '11516-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:title
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:title"
         id="tmp-r-c6d955ff-68e2-4237-8058-d9dae4e3b99a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Additionalmodulessection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="text()='Zusatzmodule'">(Additionalmodulessection): Der Elementinhalt von 'hl7:title' MUSS ''Zusatzmodule'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:text
Item: (Additionalmodulessection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:text"
         id="tmp-r-4e0e5680-bbc3-4eb4-9470-328a84ae33e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
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
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@typeCode)=('COMP')">(Additionalmodulessection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Additionalmodulessection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Additionalmodulessection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Additionalmodulessection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
