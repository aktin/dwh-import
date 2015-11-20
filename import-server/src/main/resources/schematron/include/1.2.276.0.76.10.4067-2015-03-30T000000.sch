<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4067
Name: Weiterbehandlung Verlegung
Description: Weiterbehandlung Verlegung des Patienten
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4067-2015-03-30T000000">
   <title>Weiterbehandlung Verlegung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]"
         id="tmp-r-eba87b3c-ce38-4f94-8be9-86686a7c544a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])&gt;=1 ">(Referralto): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])&lt;=1">(Referralto): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']"
         id="tmp-r-e1938b08-a5ce-4145-a2c3-9df35abbc01f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="string(@classCode)=('ACT')">(Referralto): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="string(@moodCode)=('INT')">(Referralto): Der Wert von @moodCode MUSS 'INT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4067'])&gt;=1 ">(Referralto): Element hl7:templateId[@root='1.2.276.0.76.10.4067'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4067'])&lt;=1">(Referralto): Element hl7:templateId[@root='1.2.276.0.76.10.4067'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(Referralto): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(Referralto): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:text)&lt;=1">(Referralto): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:templateId[@root='1.2.276.0.76.10.4067']
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:templateId[@root='1.2.276.0.76.10.4067']"
         id="tmp-r-c0a222bf-a744-4319-b6ec-7d9ec7a18741">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4067')">(Referralto): Der Wert von @root MUSS '1.2.276.0.76.10.4067' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-3c5f8f4f-5548-4230-b1b5-a535fabc2c56">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Referralto): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.53 Referral actions (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Referralto): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.53 Referral actions (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text"
         id="tmp-r-bd245c92-1180-4902-b857-2add52c84473">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Referralto): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="count(hl7:reference)&lt;=1">(Referralto): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/hl7:reference
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/hl7:reference"
         id="tmp-r-d89ce7bf-3786-4f71-bc13-6fa7f1b9eaf2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
</pattern>
