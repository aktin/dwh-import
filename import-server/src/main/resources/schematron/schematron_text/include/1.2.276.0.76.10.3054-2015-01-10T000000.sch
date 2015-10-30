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
         id="tmp-r-c48522dd-bd51-45bf-b659-e790edbbd8b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(Patientcarenarrative): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3054'])&gt;=1 ">(Patientcarenarrative): Element hl7:templateId[@root='1.2.276.0.76.10.3054'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3054'])&lt;=1">(Patientcarenarrative): Element hl7:templateId[@root='1.2.276.0.76.10.3054'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Patientcarenarrative): Element hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Patientcarenarrative): Element hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(Patientcarenarrative): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(Patientcarenarrative): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(Patientcarenarrative): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(Patientcarenarrative): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']])&lt;=1">(Patientcarenarrative): Element hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:templateId[@root='1.2.276.0.76.10.3054']
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:templateId[@root='1.2.276.0.76.10.3054']"
         id="tmp-r-d8054454-6e6d-4c3c-9439-3f4e168582d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3054')">(Patientcarenarrative): Der Wert von @root MUSS '1.2.276.0.76.10.3054' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-0f7e283f-2494-4e33-bf22-24ca5a5d634e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="@nullFlavor or (@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')">(Patientcarenarrative): Der Elementinhalt MUSS einer von 'code '67781-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:title
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:title"
         id="tmp-r-08e29902-82b6-4999-8add-ad4ee0516942">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="text()='Befunde / Verlauf / durchgeführte Therapie'">(Patientcarenarrative): Der Elementinhalt von 'hl7:title' MUSS ''Befunde / Verlauf / durchgeführte Therapie'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:text
Item: (Patientcarenarrative)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:text"
         id="tmp-r-2a91a8d4-9f00-4c8a-9966-bab4d6ea366a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Patientcarenarrative): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]
Item: (Patientcarenarrative)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(Patientcarenarrative): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(Patientcarenarrative): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(Patientcarenarrative): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.3054-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Patientcarenarrative): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
