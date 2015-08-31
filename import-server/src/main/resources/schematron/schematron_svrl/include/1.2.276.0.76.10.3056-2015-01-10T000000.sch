<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3056
Name: Weiteres Procedere / Therapieempfehlung / Weiterbehandler
Description: Weiteres Procedere / Therapieempfehlung / Weiterbehandler Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3056-2015-01-10T000000">
   <title>Weiteres Procedere / Therapieempfehlung / Weiterbehandler</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]
Item: (Eddisposition)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']
Item: (Eddisposition)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']"
         id="tmp-r-9444b58c-c054-4ca7-9ec0-5d28820c1219">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Eddisposition): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3056'])&gt;=1 ">(Eddisposition): Element hl7:templateId[@root='1.2.276.0.76.10.3056'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3056'])&lt;=1">(Eddisposition): Element hl7:templateId[@root='1.2.276.0.76.10.3056'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Eddisposition): Element hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Eddisposition): Element hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Eddisposition): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Eddisposition): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Eddisposition): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Eddisposition): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']])&lt;=1">(Eddisposition): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:templateId[@root='1.2.276.0.76.10.3056']
Item: (Eddisposition)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:templateId[@root='1.2.276.0.76.10.3056']"
         id="tmp-r-5d64eb7f-6445-4cde-8017-3c90508dd052">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddisposition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3056')">(Eddisposition): Der Wert von @root MUSS '1.2.276.0.76.10.3056' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Eddisposition)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-b1f23c1d-cf00-4c8c-8703-bc8a540413ec">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddisposition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="@nullFlavor or (@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')">(Eddisposition): Der Elementinhalt MUSS einer von 'code '67661-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:title
Item: (Eddisposition)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:title"
         id="tmp-r-98de178e-f52a-48b8-b8c9-77d7b87f1f77">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddisposition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="text()='Weiteres Procedere / Therapieempfehlung / Weiterbehandler'">(Eddisposition): Der Elementinhalt von 'hl7:title' MUSS ''Weiteres Procedere / Therapieempfehlung / Weiterbehandler'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:text
Item: (Eddisposition)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:text"
         id="tmp-r-7e6e5618-8b20-4e52-ab46-7114ed3a9e90">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eddisposition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]
Item: (Eddisposition)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Eddisposition): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Eddisposition): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Eddisposition): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Eddisposition): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
