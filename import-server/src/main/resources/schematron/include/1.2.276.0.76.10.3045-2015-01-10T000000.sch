<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3045
Name: Transportmittel
Description: Transportmittel Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3045-2015-01-10T000000">
   <title>Transportmittel</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]
Item: (Transportmethod)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']
Item: (Transportmethod)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']"
         id="tmp-r-ce31f054-7daf-43da-9c16-f00a1c16df19">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Transportmethod): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3045'])&gt;=1 ">(Transportmethod): Element hl7:templateId[@root='1.2.276.0.76.10.3045'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3045'])&lt;=1">(Transportmethod): Element hl7:templateId[@root='1.2.276.0.76.10.3045'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Transportmethod): Element hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Transportmethod): Element hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Transportmethod): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Transportmethod): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Transportmethod): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Transportmethod): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']])&gt;=1 ">(Transportmethod): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']])&lt;=1">(Transportmethod): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:templateId[@root='1.2.276.0.76.10.3045']
Item: (Transportmethod)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:templateId[@root='1.2.276.0.76.10.3045']"
         id="tmp-r-e8534cc3-58d5-4579-be41-6fe58730185d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3045')">(Transportmethod): Der Wert von @root MUSS '1.2.276.0.76.10.3045' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Transportmethod)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-aaee6e6b-2874-450a-92c3-366962532a57">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="@nullFlavor or (@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')">(Transportmethod): Der Elementinhalt MUSS einer von 'code '11459-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:title
Item: (Transportmethod)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:title"
         id="tmp-r-459cc659-3a53-4921-9772-35736e2eda2c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="text()='Transportmittel'">(Transportmethod): Der Elementinhalt von 'hl7:title' MUSS ''Transportmittel'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:text
Item: (Transportmethod)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:text"
         id="tmp-r-c6a827d2-cdd8-4146-8763-f44227d29bf3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transportmethod): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]
Item: (Transportmethod)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Transportmethod): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Transportmethod): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Transportmethod): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3045-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Transportmethod): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
