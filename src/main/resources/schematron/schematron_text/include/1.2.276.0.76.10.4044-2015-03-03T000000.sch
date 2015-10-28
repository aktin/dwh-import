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
         id="tmp-r-5c4f2bd1-44c3-4704-a2f4-326362c48ad7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']"
         id="tmp-r-637f7e31-28bc-41d2-b67e-a7d7a41f5206">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@classCode)=('SBADM')">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'SBADM' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Clostridiumtetaniimmunization): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@negationInd">(Clostridiumtetaniimmunization): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Clostridiumtetaniimmunization): Attribute @negationInd MUSS vom Datentyp 'bl' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@nullFlavor,' ') return if ($code=('NI')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="not(@nullFlavor) or count($theAttValue) = count($theAttCheck)">(Clostridiumtetaniimmunization): Der Wert von nullFlavor MUSS 'Code NI' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4044'])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:templateId[@root='1.2.276.0.76.10.4044'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4044'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:templateId[@root='1.2.276.0.76.10.4044'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:id)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')])&gt;=1 and not(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:consumable)&gt;=1 and not(hl7:consumable/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:consumable ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:consumable)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:consumable kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:templateId[@root='1.2.276.0.76.10.4044']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:templateId[@root='1.2.276.0.76.10.4044']"
         id="tmp-r-6e729ffc-9096-44c4-888b-0ffb247f55c2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
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
         id="tmp-r-3e2cac7a-2fa8-4768-a52a-6a8945e00df2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@nullFlavor or (@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code 'IMMUNIZ' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text"
         id="tmp-r-9a5573b1-9c62-4926-8049-f0104b2f9591">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Clostridiumtetaniimmunization): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/hl7:reference
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/hl7:reference"
         id="tmp-r-e544e645-37a7-46e9-a1e2-77e9689d4c45">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:statusCode[@code='completed']
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:statusCode[@code='completed']"
         id="tmp-r-943b00ee-f8bd-441c-bb08-13a8d6a6491d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:effectiveTime
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:effectiveTime"
         id="tmp-r-a1ae2cb4-c04a-45b5-8562-fe164a0e4ac8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable"
         id="tmp-r-7979ef7f-e9fc-49e1-a3b8-544e3f66edd3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 and not(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]"
         id="tmp-r-d2226568-f42c-4ac0-bc35-4230fadc56e7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@classCode)=('MANU')">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'MANU' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 ">(Clostridiumtetaniimmunization): Element hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]"
         id="tmp-r-8b5048ec-64ec-4a1f-a3dc-f4d9fbb10988">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@classCode)=('MMAT') or not(@classCode)">(Clostridiumtetaniimmunization): Der Wert von @classCode MUSS 'MMAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="string(@determinerCode)=('KIND') or not(@determinerCode)">(Clostridiumtetaniimmunization): Der Wert von @determinerCode MUSS 'KIND' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Clostridiumtetaniimmunization): Element hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="count(hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Clostridiumtetaniimmunization): Element hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Clostridiumtetaniimmunization)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-455ea487-a734-406f-89cb-6eb85c1c618e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Clostridiumtetaniimmunization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4044-2015-03-03T000000.html"
              test="@nullFlavor or (@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')">(Clostridiumtetaniimmunization): Der Elementinhalt MUSS einer von 'code '333621002' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
</pattern>
