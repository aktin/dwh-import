<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4051
Name: Diagnostik Radiography of spine
Description: Diagnostik Template Radiography of spine in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4051-2015-03-27T000000">
   <title>Diagnostik Radiography of spine</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]"
         id="tmp-r-6cf70136-7151-4501-974c-e6a2f0a71433">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'])&gt;=1 ">(Radiographyofspine): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'])&lt;=1">(Radiographyofspine): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']"
         id="tmp-r-ee2b6561-eef4-410c-b493-63aaa5e5f078">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Radiographyofspine): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Radiographyofspine): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4051'])&gt;=1 ">(Radiographyofspine): Element hl7:templateId[@root='1.2.276.0.76.10.4051'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4051'])&lt;=1">(Radiographyofspine): Element hl7:templateId[@root='1.2.276.0.76.10.4051'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Radiographyofspine): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Radiographyofspine): Element hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Radiographyofspine): Element hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Radiographyofspine): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Radiographyofspine): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Radiographyofspine): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Radiographyofspine): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Radiographyofspine): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Radiographyofspine): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Radiographyofspine): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Radiographyofspine): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Radiographyofspine): Element hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:templateId[@root='1.2.276.0.76.10.4051']
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:templateId[@root='1.2.276.0.76.10.4051']"
         id="tmp-r-27e2eb56-53ca-4086-938d-3326fd010d63">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4051')">(Radiographyofspine): Der Wert von @root MUSS '1.2.276.0.76.10.4051' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:id
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:id"
         id="tmp-r-6e0fd7a7-ddcb-405c-9674-60c2a86f269d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-09eccc48-ca02-460b-860b-51da58eafc8d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="@nullFlavor or (@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')">(Radiographyofspine): Der Elementinhalt MUSS einer von 'code '79760008' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text"
         id="tmp-r-fcb7fbca-7314-47f5-a1bb-01c8dc112b04">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Radiographyofspine): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Radiographyofspine): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text/hl7:reference
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text/hl7:reference"
         id="tmp-r-69c3adfa-4241-4d77-b9fc-8b0cd2bd9ffb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:statusCode[@code='completed']
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:statusCode[@code='completed']"
         id="tmp-r-337ae1e0-4758-420a-abcc-15cc9247e2a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Radiographyofspine): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:effectiveTime
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:effectiveTime"
         id="tmp-r-9c1c5730-8938-41b0-9d6e-9cac1f18026a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-23520274-7c46-4cf9-84b7-05d066a43add">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Radiographyofspine): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Radiographyofspine): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-17bf4417-af2f-43e0-a159-16d88f1c8438">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="string(@typeCode)=('LOC')">(Radiographyofspine): Der Wert von @typeCode MUSS 'LOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 and not(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/@nullFlavor)">(Radiographyofspine): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Radiographyofspine): Element hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-70fee7c7-4f2f-4859-90e3-3dc446d5e63b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="string(@classCode)=('SDLOC')">(Radiographyofspine): Der Wert von @classCode MUSS 'SDLOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Radiographyofspine): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="count(hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Radiographyofspine): Element hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4051
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Radiographyofspine)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-4c1021e8-f34f-4999-9d42-58579055b052">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Radiographyofspine): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4051-2015-03-27T000000.html"
              test="@nullFlavor or (@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')">(Radiographyofspine): Der Elementinhalt MUSS einer von 'code '225728007' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>