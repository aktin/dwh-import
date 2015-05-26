<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4038
Name: Zuweisung mit Zuweiser
Description: Zuweiser
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4038-2015-03-03T000000">
   <title>Zuweisung mit Zuweiser</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]"
         id="tmp-r-cb53dc3f-1c87-41bd-9d1d-28c77f05ee2b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])&gt;=1 ">(Referralfrom): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])&lt;=1">(Referralfrom): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']"
         id="tmp-r-38524563-26a7-4990-b884-225d9784f76f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="string(@classCode)=('PCPR')">(Referralfrom): Der Wert von @classCode MUSS 'PCPR' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="string(@moodCode)=('RQO')">(Referralfrom): Der Wert von @moodCode MUSS 'RQO' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4038'])&gt;=1 ">(Referralfrom): Element hl7:templateId[@root='1.2.276.0.76.10.4038'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4038'])&lt;=1">(Referralfrom): Element hl7:templateId[@root='1.2.276.0.76.10.4038'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Referralfrom): Element hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Referralfrom): Element hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Referralfrom): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/@nullFlavor)">(Referralfrom): Element hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])&lt;=1">(Referralfrom): Element hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:templateId[@root='1.2.276.0.76.10.4038']
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:templateId[@root='1.2.276.0.76.10.4038']"
         id="tmp-r-0c4b8ef4-47f0-450d-9949-ebfcdedc7c7e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4038')">(Referralfrom): Der Wert von @root MUSS '1.2.276.0.76.10.4038' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-dce830c7-1b7a-4e07-a8b4-ba6a0d818e81">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="@nullFlavor or (@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')">(Referralfrom): Der Elementinhalt MUSS einer von 'code '3457005' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text"
         id="tmp-r-05e8c17a-9aa4-4d73-b5d9-c55d17fa0c3a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Referralfrom): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Referralfrom): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/hl7:reference
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/hl7:reference"
         id="tmp-r-b8a14a72-b038-4cbd-a22b-270fbc336247">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]"
         id="tmp-r-0d46cf7c-3e0f-4f98-9344-a8f0f8c5f9dd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="string(@typeCode)=('AUT')">(Referralfrom): Der Wert von @typeCode MUSS 'AUT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])&gt;=1 ">(Referralfrom): Element hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])&lt;=1">(Referralfrom): Element hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]"
         id="tmp-r-aaa184f7-a3a6-4ea2-aa25-348b69bb91d3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="string(@classCode)=('AGNT')">(Referralfrom): Der Wert von @classCode MUSS 'AGNT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Referralfrom): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Referralfrom): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Referralfrom)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-3af9f020-ec27-40ad-8b38-07d529c52589">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralfrom): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Referralfrom): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.42 Zuweiser (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4038-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Referralfrom): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.42 Zuweiser (DYNAMIC).</assert>
   </rule>
</pattern>
