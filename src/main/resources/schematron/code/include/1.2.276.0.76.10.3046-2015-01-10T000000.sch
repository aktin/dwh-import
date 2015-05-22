<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3046
Name: Zuweisung
Description: Zuweisung Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3046-2015-01-10T000000">
   <title>Zuweisung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]
Item: (Typeofreferralsource)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']
Item: (Typeofreferralsource)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']"
         id="tmp-r-1e1da2e9-1c47-4e51-9602-9db7e3146d88">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Typeofreferralsource): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3046'])&gt;=1 ">(Typeofreferralsource): Element hl7:templateId[@root='1.2.276.0.76.10.3046'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3046'])&lt;=1">(Typeofreferralsource): Element hl7:templateId[@root='1.2.276.0.76.10.3046'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Typeofreferralsource): Element hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Typeofreferralsource): Element hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Typeofreferralsource): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Typeofreferralsource): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Typeofreferralsource): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Typeofreferralsource): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']])&gt;=1 ">(Typeofreferralsource): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']])&lt;=1">(Typeofreferralsource): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:templateId[@root='1.2.276.0.76.10.3046']
Item: (Typeofreferralsource)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:templateId[@root='1.2.276.0.76.10.3046']"
         id="tmp-r-a2e353e4-f677-4335-923a-bbe5449eeaf3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typeofreferralsource): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3046')">(Typeofreferralsource): Der Wert von @root MUSS '1.2.276.0.76.10.3046' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Typeofreferralsource)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-6bee4dc7-e7c4-4fc5-8777-45bab0879718">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typeofreferralsource): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="@nullFlavor or (@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')">(Typeofreferralsource): Der Elementinhalt MUSS einer von 'code '11293-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:title
Item: (Typeofreferralsource)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:title"
         id="tmp-r-83963829-3478-45b8-acc2-de3eae7ca21a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typeofreferralsource): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="text()='Zuweisung'">(Typeofreferralsource): Der Elementinhalt von 'hl7:title' MUSS ''Zuweisung'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:text
Item: (Typeofreferralsource)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:text"
         id="tmp-r-fcf2ec84-fec6-4412-a888-6f8511a1eafe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typeofreferralsource): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]
Item: (Typeofreferralsource)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Typeofreferralsource): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Typeofreferralsource): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Typeofreferralsource): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Typeofreferralsource): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
