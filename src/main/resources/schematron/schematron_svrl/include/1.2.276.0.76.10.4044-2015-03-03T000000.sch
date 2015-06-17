<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4044
Name: Immunisierung Clostridium tetani
Description: Immunisierung Clostridium tetani
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4044-2015-03-03T000000">
   <title>Immunisierung Clostridium tetani</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]"
         id="tmp-r-73002ac7-7c51-4805-ac82-a0ae91bdd008">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']"
         id="tmp-r-d6e52c35-83c5-4c5d-958e-ef86d5b3a563">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@classCode)=('SBADM')">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'SBADM' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Clostridiumtetaniimmunization): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@negationInd">(Clostridiumtetaniimmunization): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Clostridiumtetaniimmunization): Attribute @negationInd MUSS vom Datentyp 'bl' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@nullFlavor,' ') return if ($code=('NI')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="not(@nullFlavor) or count($theAttValue) = count($theAttCheck)">(Clostridiumtetaniimmunization): Der Wert von nullFlavor MUSS 'Code NI' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4044'])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:templateId[@root='1.2.276.0.76.10.4044'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4044'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:templateId[@root='1.2.276.0.76.10.4044'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:id)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')])&gt;=1 and not(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:consumable)&gt;=1 and not(hl7:consumable/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:consumable ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:consumable)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:consumable kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:templateId[@root='1.2.276.0.76.10.4044']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:templateId[@root='1.2.276.0.76.10.4044']"
         id="tmp-r-70f5acde-4e96-4864-98dc-4086d87e121b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
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
         id="tmp-r-6cfc1bb1-6879-4248-bc03-2093284f8810">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@nullFlavor or (@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code 'IMMUNIZ' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text"
         id="tmp-r-3e3e6f00-d79e-4f0b-ab16-5cf96bb1daad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/hl7:reference
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/hl7:reference"
         id="tmp-r-2bb73dd8-b439-46b1-aec4-8f1d43d43504">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:statusCode[@code='completed']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:statusCode[@code='completed']"
         id="tmp-r-0157b3a1-3084-45ee-9274-d77805ce6dc2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:effectiveTime
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:effectiveTime"
         id="tmp-r-9c85208f-ff30-42f0-9bd9-f3ee412ab06f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable"
         id="tmp-r-d9afd683-53c7-4da3-b13e-0138e3148116">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-e48c58a4-c2ed-4b9c-936a-6bcea5d855b6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@classCode)=('MANU')">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'MANU' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-cab42c17-95af-4bb8-845d-9d04e270cabf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@classCode)=('MMAT') or not(@classCode)">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'MMAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@determinerCode)=('KIND') or not(@determinerCode)">(Clostridiumtetaniimmunization): Der Wert von @determinerCode MUSS 'KIND' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-a9e034ca-ec60-4ce1-bd2f-3e1d14257deb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@nullFlavor or (@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code '333621002' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
