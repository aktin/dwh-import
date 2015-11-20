<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4067
Name: Weiterbehandlung Verlegung
Description: Weiterbehandlung Verlegung des Patienten
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4067-2015-09-18T000000">
   <title>Weiterbehandlung Verlegung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]"
         id="tmp-r-07457212-6f71-4f47-941e-5a63f295bb4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])&gt;=1 ">(Referralto): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])&lt;=1">(Referralto): Element hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']"
         id="tmp-r-cf4b28a6-2f37-40aa-87ae-d25b48aec28b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="string(@classCode)=('ACT')">(Referralto): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="string(@moodCode)=('INT')">(Referralto): Der Wert von @moodCode MUSS 'INT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4067'])&gt;=1 ">(Referralto): Element hl7:templateId[@root='1.2.276.0.76.10.4067'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4067'])&lt;=1">(Referralto): Element hl7:templateId[@root='1.2.276.0.76.10.4067'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(Referralto): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(Referralto): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Referralto): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:templateId[@root='1.2.276.0.76.10.4067']
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:templateId[@root='1.2.276.0.76.10.4067']"
         id="tmp-r-8ba14e86-5204-4cb6-b04e-fa86c16da2a0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4067')">(Referralto): Der Wert von @root MUSS '1.2.276.0.76.10.4067' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-fc40320f-22e5-4704-9c39-40b69e315631">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Referralto): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.53 Referral actions (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Referralto): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.53 Referral actions (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text"
         id="tmp-r-293ee1e3-b85d-47bc-9448-4a44399fe933">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Referralto): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Referralto): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/hl7:reference
Item: (Referralto)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/hl7:reference"
         id="tmp-r-a9441133-96c5-441b-a125-27212216eebc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4067-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Referralto): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
</pattern>
