<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4057
Name: Diagnostik Laboratory test
Description: Diagnostik Template Laboratory test
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4057-2015-03-27T000000">
   <title>Diagnostik Laboratory test</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]"
         id="tmp-r-9646d22c-ce85-4397-b478-791e6f7172e8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])&gt;=1 ">(Laboratorytest): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])&lt;=1">(Laboratorytest): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']"
         id="tmp-r-3d3fa346-0760-4768-bed1-4961feedaf30">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Laboratorytest): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Laboratorytest): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4057'])&gt;=1 ">(Laboratorytest): Element hl7:templateId[@root='1.2.276.0.76.10.4057'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4057'])&lt;=1">(Laboratorytest): Element hl7:templateId[@root='1.2.276.0.76.10.4057'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Laboratorytest): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Laboratorytest): Element hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Laboratorytest): Element hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Laboratorytest): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Laboratorytest): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Laboratorytest): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Laboratorytest): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Laboratorytest): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Laboratorytest): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Laboratorytest): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:templateId[@root='1.2.276.0.76.10.4057']
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:templateId[@root='1.2.276.0.76.10.4057']"
         id="tmp-r-2886e9d7-daad-4906-8af9-4bd296220d08">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4057')">(Laboratorytest): Der Wert von @root MUSS '1.2.276.0.76.10.4057' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:id
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:id"
         id="tmp-r-dad7bf43-ed7d-4e98-ba7e-87cbf9c1f3de">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-3724f10d-f131-4ff4-a413-74e24a92c14d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="@nullFlavor or (@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')">(Laboratorytest): Der Elementinhalt MUSS einer von 'code '15220000' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text"
         id="tmp-r-3f6ec8fc-912b-440b-874a-29bc9ddec157">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Laboratorytest): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Laboratorytest): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/hl7:reference
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/hl7:reference"
         id="tmp-r-dd47d057-f21a-4181-8b96-e326076950ea">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:statusCode[@code='completed']
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:statusCode[@code='completed']"
         id="tmp-r-56c13314-93ac-446a-bf45-e256ffcf766e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Laboratorytest): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:effectiveTime
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:effectiveTime"
         id="tmp-r-993b2bae-aaef-4074-979a-75626a043f20">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4057
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Laboratorytest)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-be67375d-c6f8-44a6-9d8a-aeea73979c4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Laboratorytest): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Laboratorytest): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4057-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Laboratorytest): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
