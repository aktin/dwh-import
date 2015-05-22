<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3054
Name: Befunde / Verlauf / durchgeführte Therapie
Description: Befunde / Verlauf / durchgeführte Therapie Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3054-2015-01-10T000000">
   <title>Befunde / Verlauf / durchgeführte Therapie</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]
Item: (Patientcarenarrative)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']"
         id="tmp-r-adee5f70-e278-48eb-9485-e47bad348b39">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Patientcarenarrative): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3054'])&gt;=1 ">(Patientcarenarrative): Element hl7:templateId[@root='1.2.276.0.76.10.3054'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3054'])&lt;=1">(Patientcarenarrative): Element hl7:templateId[@root='1.2.276.0.76.10.3054'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Patientcarenarrative): Element hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Patientcarenarrative): Element hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Patientcarenarrative): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Patientcarenarrative): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Patientcarenarrative): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Patientcarenarrative): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:templateId[@root='1.2.276.0.76.10.3054']
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:templateId[@root='1.2.276.0.76.10.3054']"
         id="tmp-r-479a23fb-abae-4727-a04c-23b47c79ff25">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3054')">(Patientcarenarrative): Der Wert von @root MUSS '1.2.276.0.76.10.3054' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-0673f2a8-c185-4a43-b971-0b39ab7bccd3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="@nullFlavor or (@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')">(Patientcarenarrative): Der Elementinhalt MUSS einer von 'code '67781-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:title
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:title"
         id="tmp-r-a6eb64bf-07d4-46f9-a075-43940734626c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="text()='Befunde / Verlauf / durchgeführte Therapie'">(Patientcarenarrative): Der Elementinhalt von 'hl7:title' MUSS ''Befunde / Verlauf / durchgeführte Therapie'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:text
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:text"
         id="tmp-r-5a68eb88-8b04-4650-872b-5e8aef54c5c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>
</pattern>
