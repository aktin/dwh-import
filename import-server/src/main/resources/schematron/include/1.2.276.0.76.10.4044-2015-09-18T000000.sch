<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4044
Name: Immunisierung Clostridium tetani
Description: Immunisierung Clostridium tetani
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4044-2015-09-18T000000">
   <title>Immunisierung Clostridium tetani</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]"
         id="tmp-r-d43d3398-609e-4b1b-a751-7b78f4ef6689">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']"
         id="tmp-r-5e4cfd34-6007-46b3-993c-b3d875b62663">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@classCode)=('SBADM')">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'SBADM' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Clostridiumtetaniimmunization): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@negationInd">(Clostridiumtetaniimmunization): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Clostridiumtetaniimmunization): Attribute @negationInd MUSS vom Datentyp 'bl' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@nullFlavor,' ') return if ($code=('NI')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="not(@nullFlavor) or count($theAttValue) = count($theAttCheck)">(Clostridiumtetaniimmunization): Der Wert von nullFlavor MUSS 'Code NI' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4044'])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:templateId[@root='1.2.276.0.76.10.4044'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4044'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:templateId[@root='1.2.276.0.76.10.4044'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:id)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')])&gt;=1 and not(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:consumable)&gt;=1 and not(hl7:consumable/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:consumable ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:consumable)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:consumable kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:templateId[@root='1.2.276.0.76.10.4044']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:templateId[@root='1.2.276.0.76.10.4044']"
         id="tmp-r-17a3c5fe-1448-4270-8343-3b96ca01430b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4044')">(Clostridiumtetaniimmunization): Der Wert von @root MUSS '1.2.276.0.76.10.4044' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:id
Item: (Clostridiumtetaniimmunization)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]"
         id="tmp-r-7851de54-4f9a-4caf-9047-863bc9efdcbe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@nullFlavor or (@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code 'IMMUNIZ' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text"
         id="tmp-r-5f280247-e419-47be-98da-115becdc2e34">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/hl7:reference
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/hl7:reference"
         id="tmp-r-d5d0ac0b-6ffc-4dd9-ad5a-4a381c55ef48">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:statusCode[@code='completed']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:statusCode[@code='completed']"
         id="tmp-r-e2b96982-968b-406e-a499-3cd91f23f472">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:effectiveTime
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:effectiveTime"
         id="tmp-r-f7a09744-87fa-4895-9a50-9e59fad324b2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable"
         id="tmp-r-7f4d29bd-efa8-4441-af91-f1ad6ff68766">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedProduct)&gt;=1 and not(hl7:manufacturedProduct/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:manufacturedProduct ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedProduct)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:manufacturedProduct kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct"
         id="tmp-r-9f798434-2b77-4244-abc9-b089bb84a1c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@classCode)=('MANU')">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'MANU' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedMaterial)&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:manufacturedMaterial ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedMaterial)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:manufacturedMaterial kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial"
         id="tmp-r-3397b3df-15f2-4a5c-b746-d55d6ebd36ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@classCode)=('MMAT') or not(@classCode)">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'MMAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@determinerCode)=('KIND') or not(@determinerCode)">(Clostridiumtetaniimmunization): Der Wert von @determinerCode MUSS 'KIND' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')])&gt;=1 and not(hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')]"
         id="tmp-r-931f1af3-d48e-46b6-8fae-479ea7091479">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@nullFlavor or (@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code 'CTVACC' codeSystem '1.2.276.0.76.3.1.195.5.3'' sein.</assert>
   </rule>
</pattern>
