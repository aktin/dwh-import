<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3044
Name: Vitalparameter
Description: Vitalparameter und Scores Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3044-2015-09-18T000000">
   <title>Vitalparameter</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]
Item: (VitalSignsSection)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']
Item: (VitalSignsSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']"
         id="tmp-r-80fdea7d-d701-4400-8fd5-374bf8a3e21f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(VitalSignsSection): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4046']][hl7:targetSiteCode[@code = 'L']])&lt;=1 and count(hl7:entry/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4046']][hl7:targetSiteCode[@code = 'R']])&lt;=1">(VitalSignsSection): Pupillenweite max 1x link und 1x rechts angeben</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry/hl7:observation [hl7:templateId[@root='1.2.276.0.76.10.4047']][hl7:targetSiteCode[@code = 'L']])&lt;=1 and count(hl7:entry/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4047']][hl7:targetSiteCode[@code = 'R']])&lt;=1">(VitalSignsSection): Pupillenreaktion max 1x link und 1x rechts angeben</assert>
      <assert role="error"
              test="count(hl7:entry/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4046']][hl7:targetSiteCode[@code = 'L']])&lt;=1 and count(hl7:entry/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4046']][hl7:targetSiteCode[@code = 'R']])&lt;=1">(VitalSignsSection): Pupillenweite max 1x link und 1x rechts angeben</assert>
      <assert role="error"
              test="count(hl7:entry/hl7:observation [hl7:templateId[@root='1.2.276.0.76.10.4047']][hl7:targetSiteCode[@code = 'L']])&lt;=1 and count(hl7:entry/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4047']][hl7:targetSiteCode[@code = 'R']])&lt;=1">(VitalSignsSection): Pupillenreaktion max 1x link und 1x rechts angeben</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3044'])&gt;=1 ">(VitalSignsSection): Element hl7:templateId[@root='1.2.276.0.76.10.3044'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3044'])&lt;=1">(VitalSignsSection): Element hl7:templateId[@root='1.2.276.0.76.10.3044'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(VitalSignsSection): Element hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(VitalSignsSection): Element hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(VitalSignsSection): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:title)&lt;=1">(VitalSignsSection): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(VitalSignsSection): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(VitalSignsSection): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']])&lt;=1">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']])&lt;=1">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']])&lt;=1">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']])&lt;=1">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']])&lt;=1">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']])&lt;=2">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']] kommt zu häufig vor [max 2x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']])&lt;=2">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']] kommt zu häufig vor [max 2x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']])&lt;=1">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']])&lt;=1">(VitalSignsSection): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:templateId[@root='1.2.276.0.76.10.3044']
Item: (VitalSignsSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:templateId[@root='1.2.276.0.76.10.3044']"
         id="tmp-r-f63b7639-87c0-4451-8f4e-d5ad6bf15a68">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalSignsSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3044')">(VitalSignsSection): Der Wert von @root MUSS '1.2.276.0.76.10.3044' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (VitalSignsSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-68886712-41de-4b76-a1f0-37c4508516d5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalSignsSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="@nullFlavor or (@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')">(VitalSignsSection): Der Elementinhalt MUSS einer von 'code '8716-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:title
Item: (VitalSignsSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:title"
         id="tmp-r-24ffa2a2-a364-4527-bb75-1dbe8fbe1c31">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalSignsSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:text
Item: (VitalSignsSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:text"
         id="tmp-r-1d99b07a-39fa-47ec-98f9-c4dcd0e1d8ac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalSignsSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3044
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]
Item: (VitalSignsSection)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(VitalSignsSection): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(VitalSignsSection): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(VitalSignsSection): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3044-2015-09-18T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(VitalSignsSection): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
