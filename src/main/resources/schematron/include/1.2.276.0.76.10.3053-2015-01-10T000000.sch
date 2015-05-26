<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3053
Name: Notfallanamnese
Description: Notfallanamnese Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3053-2015-01-10T000000">
   <title>Notfallanamnese</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]
Item: (HistoryofPresentIllnessSection)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']
Item: (HistoryofPresentIllnessSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']"
         id="tmp-r-92ae6108-1435-4add-9cc6-9f0abfa9600b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(HistoryofPresentIllnessSection): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3053'])&gt;=1 ">(HistoryofPresentIllnessSection): Element hl7:templateId[@root='1.2.276.0.76.10.3053'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3053'])&lt;=1">(HistoryofPresentIllnessSection): Element hl7:templateId[@root='1.2.276.0.76.10.3053'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(HistoryofPresentIllnessSection): Element hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(HistoryofPresentIllnessSection): Element hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(HistoryofPresentIllnessSection): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(HistoryofPresentIllnessSection): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(HistoryofPresentIllnessSection): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(HistoryofPresentIllnessSection): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:templateId[@root='1.2.276.0.76.10.3053']
Item: (HistoryofPresentIllnessSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:templateId[@root='1.2.276.0.76.10.3053']"
         id="tmp-r-4af7fafd-f811-4c33-a073-ef8ebe2370a7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HistoryofPresentIllnessSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3053')">(HistoryofPresentIllnessSection): Der Wert von @root MUSS '1.2.276.0.76.10.3053' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (HistoryofPresentIllnessSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-6f489219-faa5-4712-8329-a4a3c82bb4d8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HistoryofPresentIllnessSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="@nullFlavor or (@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')">(HistoryofPresentIllnessSection): Der Elementinhalt MUSS einer von 'code '10164-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:title
Item: (HistoryofPresentIllnessSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:title"
         id="tmp-r-a5329cb7-2fb3-49d9-8282-199cefb5a192">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HistoryofPresentIllnessSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="text()='Notfallanamnese'">(HistoryofPresentIllnessSection): Der Elementinhalt von 'hl7:title' MUSS ''Notfallanamnese'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:text
Item: (HistoryofPresentIllnessSection)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/hl7:text"
         id="tmp-r-48afa696-bf0a-49db-a852-395908f29649">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.3053-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HistoryofPresentIllnessSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>
</pattern>
