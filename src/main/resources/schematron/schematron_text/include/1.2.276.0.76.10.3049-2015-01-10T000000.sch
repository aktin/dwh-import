<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3049
Name: Ersteinschätzung
Description: Ersteinschätzung Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3049-2015-01-10T000000">
   <title>Ersteinschätzung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3049
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]
Item: (Initialacuityassessment)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3049
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']
Item: (Initialacuityassessment)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']"
         id="tmp-r-dff206ca-504d-42ab-b404-653a8c09a257">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Initialacuityassessment): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3049'])&gt;=1 ">(Initialacuityassessment): Element hl7:templateId[@root='1.2.276.0.76.10.3049'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3049'])&lt;=1">(Initialacuityassessment): Element hl7:templateId[@root='1.2.276.0.76.10.3049'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Initialacuityassessment): Element hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Initialacuityassessment): Element hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Initialacuityassessment): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Initialacuityassessment): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Initialacuityassessment): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Initialacuityassessment): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']])&gt;=1 ">(Initialacuityassessment): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']])&lt;=1">(Initialacuityassessment): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3049
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:templateId[@root='1.2.276.0.76.10.3049']
Item: (Initialacuityassessment)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:templateId[@root='1.2.276.0.76.10.3049']"
         id="tmp-r-fc77ec3b-e178-456d-b008-2dbf93600824">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Initialacuityassessment): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3049')">(Initialacuityassessment): Der Wert von @root MUSS '1.2.276.0.76.10.3049' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3049
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Initialacuityassessment)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-a417decf-7a01-44e7-bead-2782afe00f38">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Initialacuityassessment): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="@nullFlavor or (@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')">(Initialacuityassessment): Der Elementinhalt MUSS einer von 'code '11283-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3049
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:title
Item: (Initialacuityassessment)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:title"
         id="tmp-r-1d7fea40-5efb-4eea-9944-3f2943532039">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Initialacuityassessment): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="text()='Ersteinschätzung'">(Initialacuityassessment): Der Elementinhalt von 'hl7:title' MUSS ''Ersteinschätzung'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3049
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:text
Item: (Initialacuityassessment)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:text"
         id="tmp-r-09bfd20f-33e6-4d3e-b468-2a8598c85c15">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Initialacuityassessment): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3049
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]
Item: (Initialacuityassessment)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Initialacuityassessment): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Initialacuityassessment): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Initialacuityassessment): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3049-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Initialacuityassessment): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
