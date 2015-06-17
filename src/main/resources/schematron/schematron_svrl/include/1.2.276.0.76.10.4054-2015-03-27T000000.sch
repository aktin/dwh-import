<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4054
Name: Diagnostik Plain radiography
Description: Diagnostik Template Plain radiography in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4054-2015-03-27T000000">
   <title>Diagnostik Plain radiography</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]"
         id="tmp-r-8e1d1158-6d41-4c78-beb4-bc40669213e0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'])&gt;=1 ">(Plainradiography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'])&lt;=1">(Plainradiography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']"
         id="tmp-r-2e55ccdf-1f66-40cf-9137-58e519953939">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Plainradiography): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Plainradiography): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4054'])&gt;=1 ">(Plainradiography): Element hl7:templateId[@root='1.2.276.0.76.10.4054'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4054'])&lt;=1">(Plainradiography): Element hl7:templateId[@root='1.2.276.0.76.10.4054'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Plainradiography): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainradiography): Element hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainradiography): Element hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Plainradiography): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Plainradiography): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Plainradiography): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Plainradiography): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Plainradiography): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Plainradiography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Plainradiography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Plainradiography): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Plainradiography): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:templateId[@root='1.2.276.0.76.10.4054']
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:templateId[@root='1.2.276.0.76.10.4054']"
         id="tmp-r-1e958d97-a113-4d4a-9549-a853d710a4d5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4054')">(Plainradiography): Der Wert von @root MUSS '1.2.276.0.76.10.4054' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:id
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:id"
         id="tmp-r-04b866bc-44e2-45e2-bf4d-31e1f5b6e415">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-63cf3996-1849-4d27-9968-6c3da1f25c6d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="@nullFlavor or (@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')">(Plainradiography): Der Elementinhalt MUSS einer von 'code '168537006' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text"
         id="tmp-r-c9b7246f-a7a8-4905-81a7-6a30f12dd324">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Plainradiography): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Plainradiography): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text/hl7:reference
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text/hl7:reference"
         id="tmp-r-ad854af1-dc73-49a3-99ca-9cedf6daf011">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:statusCode[@code='completed']
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:statusCode[@code='completed']"
         id="tmp-r-a27dbc40-5f0c-460d-8945-fb99c1932cf0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Plainradiography): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:effectiveTime
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:effectiveTime"
         id="tmp-r-459c34b0-38a7-4ef0-84fc-8d49cb6b760d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-03dae672-eba7-457a-bf28-defe918227eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Plainradiography): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Plainradiography): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-999a6467-120b-4721-ba2d-d2333cd85830">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Plainradiography): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Plainradiography): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Plainradiography): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-bf26d79e-6748-43d6-8a95-6c0966f830ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Plainradiography): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Plainradiography): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Plainradiography): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4054
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Plainradiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-1596a3e9-4274-4b39-a667-f037346e1f98">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Plainradiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4054-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Plainradiography): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
