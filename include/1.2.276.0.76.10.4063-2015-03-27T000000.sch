<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4063
Name: Diagnostik Computerized axial tomography
Description: Diagnostik Template Computerized axial tomography
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4063-2015-03-27T000000">
   <title>Diagnostik Computerized axial tomography</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]"
         id="tmp-r-46fc40a6-cebc-433c-b40b-b84ca1a8d76f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])&gt;=1 ">(Computerizedaxialtomography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])&lt;=1">(Computerizedaxialtomography): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']"
         id="tmp-r-116b4865-8be8-4d7d-a075-f414f98442f2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="string(@classCode)=('OBS')">(Computerizedaxialtomography): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="string(@moodCode)=('EVN')">(Computerizedaxialtomography): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4063'])&gt;=1 ">(Computerizedaxialtomography): Element hl7:templateId[@root='1.2.276.0.76.10.4063'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4063'])&lt;=1">(Computerizedaxialtomography): Element hl7:templateId[@root='1.2.276.0.76.10.4063'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Computerizedaxialtomography): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Computerizedaxialtomography): Element hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Computerizedaxialtomography): Element hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:text)&lt;=1">(Computerizedaxialtomography): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Computerizedaxialtomography): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Computerizedaxialtomography): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Computerizedaxialtomography): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Computerizedaxialtomography): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Computerizedaxialtomography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Computerizedaxialtomography): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:templateId[@root='1.2.276.0.76.10.4063']
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:templateId[@root='1.2.276.0.76.10.4063']"
         id="tmp-r-b378a38c-81dd-4a02-9148-9515642d3d6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4063')">(Computerizedaxialtomography): Der Wert von @root MUSS '1.2.276.0.76.10.4063' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:id
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:id"
         id="tmp-r-e233c443-6975-4f0c-99ae-103cf68af31b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-8ca1e622-d169-4578-955a-d5df8c6ac637">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="@nullFlavor or (@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')">(Computerizedaxialtomography): Der Elementinhalt MUSS einer von 'code '77477000' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text"
         id="tmp-r-4ff3c231-6936-492f-8dcf-1137cfdcfbbf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Computerizedaxialtomography): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="count(hl7:reference)&lt;=1">(Computerizedaxialtomography): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/hl7:reference
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/hl7:reference"
         id="tmp-r-5ec2e588-8bcf-4721-be27-0d8110ff0adf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:statusCode[@code='completed']
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:statusCode[@code='completed']"
         id="tmp-r-0f35ac36-8afc-4ca9-99c4-8de4496104cd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="@nullFlavor or (@code='completed')">(Computerizedaxialtomography): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:effectiveTime
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:effectiveTime"
         id="tmp-r-52382bea-fb54-4739-8f35-d52a208a66a4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Computerizedaxialtomography)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-a1cd3bea-1186-409e-b052-3f9915e8f117">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Computerizedaxialtomography): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Computerizedaxialtomography): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4063-2015-03-27T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Computerizedaxialtomography): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
