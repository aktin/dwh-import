<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4047
Name: Pupillenreaktion
Description: Pupillenreaktion (rechts/links)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4047-2015-09-18T000000">
   <title>Pupillenreaktion</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]"
         id="tmp-r-ad691dae-6810-4d85-87c8-213657129a64">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'])&gt;=1 ">(Pupilreaction): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'])&lt;=1">(Pupilreaction): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']"
         id="tmp-r-d93d60c8-4c48-4324-8395-4bea00439059">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="string(@classCode)=('OBS')">(Pupilreaction): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Pupilreaction): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4047'])&gt;=1 ">(Pupilreaction): Element hl7:templateId[@root='1.2.276.0.76.10.4047'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4047'])&lt;=1">(Pupilreaction): Element hl7:templateId[@root='1.2.276.0.76.10.4047'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 ">(Pupilreaction): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:id)&lt;=1">(Pupilreaction): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:code[(@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')])&gt;=1 and not(hl7:code[(@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')]/@nullFlavor)">(Pupilreaction): Element hl7:code[(@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:code[(@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')])&lt;=1">(Pupilreaction): Element hl7:code[(@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Pupilreaction): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Pupilreaction): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Pupilreaction): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Pupilreaction): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Pupilreaction): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Pupilreaction): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(Pupilreaction): Element hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(Pupilreaction): Element hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:templateId[@root='1.2.276.0.76.10.4047']
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:templateId[@root='1.2.276.0.76.10.4047']"
         id="tmp-r-6fd5732c-f7ed-43ef-8d9c-48bc76661d99">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4047')">(Pupilreaction): Der Wert von @root MUSS '1.2.276.0.76.10.4047' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:id
Item: (Pupilreaction)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:code[(@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')]
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:code[(@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')]"
         id="tmp-r-0e219abd-a959-4934-b812-2cfe426d1de8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or (@code='RPPL' and @codeSystem='2.16.840.1.113883.2.60.3.5.1')">(Pupilreaction): Der Elementinhalt MUSS einer von 'code 'RPPL' codeSystem '2.16.840.1.113883.2.60.3.5.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text"
         id="tmp-r-c2d0e03c-8a1c-4355-bc8b-15b632adddb1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Pupilreaction): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Pupilreaction): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text/hl7:reference
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text/hl7:reference"
         id="tmp-r-eb09eb88-68fa-49aa-855d-096e87ff2f7f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:statusCode[@code='completed']
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:statusCode[@code='completed']"
         id="tmp-r-9a936074-e4b5-4663-839c-8949c3ca345e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Pupilreaction): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:effectiveTime
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:effectiveTime"
         id="tmp-r-d89ed80d-3c83-48da-8381-f6afe92ce2ea">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-6041ea56-aa38-4c84-a33d-d3be6428a5bd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Pupilreaction): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.50 Pupillenreaktion (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pupilreaction): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.50 Pupillenreaktion (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (Pupilreaction)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-05ff2b8a-6469-4772-a98f-9100fa48da69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pupilreaction): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Pupilreaction): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.48 Auge links/rechts (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pupilreaction): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.48 Auge links/rechts (DYNAMIC).</assert>
   </rule>
</pattern>
