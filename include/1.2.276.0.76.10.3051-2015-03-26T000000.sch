<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3051
Name: Allergien und Unverträglichkeiten
Description: Beschreibung der Allergien und Medikamentenunverträglichkeiten
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3051-2015-03-26T000000">
   <title>Allergien und Unverträglichkeiten</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]
Item: (AllergienUnvertraeglichkeiten)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']
Item: (AllergienUnvertraeglichkeiten)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']"
         id="tmp-r-91f44018-c9ec-4a18-b89f-833967b3c64b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(AllergienUnvertraeglichkeiten): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(AllergienUnvertraeglichkeiten): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3051'])&gt;=1 ">(AllergienUnvertraeglichkeiten): Element hl7:templateId[@root='1.2.276.0.76.10.3051'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3051'])&lt;=1">(AllergienUnvertraeglichkeiten): Element hl7:templateId[@root='1.2.276.0.76.10.3051'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(AllergienUnvertraeglichkeiten): Element hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(AllergienUnvertraeglichkeiten): Element hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(AllergienUnvertraeglichkeiten): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:title)&lt;=1">(AllergienUnvertraeglichkeiten): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(AllergienUnvertraeglichkeiten): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:text)&lt;=1">(AllergienUnvertraeglichkeiten): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:templateId[@root='1.2.276.0.76.10.3051']
Item: (AllergienUnvertraeglichkeiten)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:templateId[@root='1.2.276.0.76.10.3051']"
         id="tmp-r-678cb928-22cf-4055-a3e6-5c6ec8ed43f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3051')">(AllergienUnvertraeglichkeiten): Der Wert von @root MUSS '1.2.276.0.76.10.3051' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (AllergienUnvertraeglichkeiten)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-8f45b648-21f3-4e84-84e2-fb8ee568215d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="@nullFlavor or (@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')">(AllergienUnvertraeglichkeiten): Der Elementinhalt MUSS einer von 'code '48765-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:title
Item: (AllergienUnvertraeglichkeiten)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:title"
         id="tmp-r-b2ce7788-c307-432e-b9a9-f7d7cf990c6d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="text()='Allergien und Unverträglichkeiten'">(AllergienUnvertraeglichkeiten): Der Elementinhalt von 'hl7:title' MUSS ''Allergien und Unverträglichkeiten'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:text
Item: (AllergienUnvertraeglichkeiten)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:text"
         id="tmp-r-741c349f-f2bc-43b9-8dab-58d8d9e2583d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]
Item: (AllergienUnvertraeglichkeiten)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@typeCode)=('COMP')">(AllergienUnvertraeglichkeiten): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(AllergienUnvertraeglichkeiten): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(AllergienUnvertraeglichkeiten): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(AllergienUnvertraeglichkeiten): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
