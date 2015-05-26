<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4064
Name: Diagnostik Echocardiography
Description: Diagnostik Template Echocardiography
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4064-2015-03-27T000000">
   <title>Diagnostik Echocardiography</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]"
         id="tmp-r-39499dca-bd4e-4e8e-9ce6-e44e58934809">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'])&gt;=1 ">(Echocardiography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'])&lt;=1">(Echocardiography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']"
         id="tmp-r-55235aa7-158b-492d-a6b2-543436d4e950">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Echocardiography): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Echocardiography): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4064'])&gt;=1 ">(Echocardiography): Element hl7:templateId[@root='1.2.276.0.76.10.4064'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4064'])&lt;=1">(Echocardiography): Element hl7:templateId[@root='1.2.276.0.76.10.4064'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Echocardiography): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Echocardiography): Element hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Echocardiography): Element hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Echocardiography): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Echocardiography): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Echocardiography): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Echocardiography): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Echocardiography): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Echocardiography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Echocardiography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:templateId[@root='1.2.276.0.76.10.4064']
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:templateId[@root='1.2.276.0.76.10.4064']"
         id="tmp-r-90688511-8fd5-4677-82c3-81ee3149387c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4064')">(Echocardiography): Der Wert von @root MUSS '1.2.276.0.76.10.4064' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:id
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:id"
         id="tmp-r-2fff4730-54fb-464a-9217-19cfd97683fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-4c072fb2-4f96-48b9-ae52-51c28f57aba6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="@nullFlavor or (@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')">(Echocardiography): Der Elementinhalt MUSS einer von 'code '40701008' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text"
         id="tmp-r-7ccfc215-9e14-48b9-8768-a8da3d5f0af8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Echocardiography): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Echocardiography): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text/hl7:reference
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text/hl7:reference"
         id="tmp-r-31197c96-34df-41a5-9e2e-975b9a573c1e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:statusCode[@code='completed']
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:statusCode[@code='completed']"
         id="tmp-r-32d833a7-17fd-476f-80a6-1a4a9ab7a66d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Echocardiography): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:effectiveTime
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:effectiveTime"
         id="tmp-r-f65dd48c-a5e3-4b86-9dae-bb42107ef2ca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4064
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Echocardiography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-0b471f38-9aef-42b3-b882-8341be524022">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Echocardiography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Echocardiography): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4064-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Echocardiography): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
