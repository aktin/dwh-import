<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.1015
Name: Emergency medicine Note CDA document
Description: Informationen im Rahmen des AKTIN Basismoduls als CDA Dokument
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.1015-2014-09-18T000000">
   <title>Emergency medicine Note CDA document</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /
Item: (EmergencymedicineNoteCDAdocument)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']"
         id="tmp-r-ad9a3068-cf6c-49b4-a22a-50ff7f94df0a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&gt;=1 and not(hl7:realmCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&gt;=1 and not(hl7:typeId[@root='2.16.840.1.113883.1.3']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.1015']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:title)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&gt;=1 and not(hl7:languageCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&gt;=1 and not(hl7:setId/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:setId ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:setId kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&gt;=1 and not(hl7:versionNumber/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&gt;=1 and not(hl7:recordTarget/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:author)&gt;=1 and not(hl7:author/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:author ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&gt;=1 and not(hl7:custodian/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:custodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:custodian kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&gt;=1 and not(hl7:documentationOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&gt;=1 and not(hl7:componentOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90002
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode"
         id="tmp-r-594f69e8-f1e8-4b6d-ad70-353849ecef27">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArealmCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="@code">(CDArealmCode): Attribut @code MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or (string-length(@code)&gt;0 and not(matches(@code,'\s')))">(CDArealmCode): Attribute @code MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@code,' ') return if ($code=('DE')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or count($theAttValue) = count($theAttCheck)">(CDArealmCode): Der Wert von code MUSS 'Code DE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90003
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']"
         id="tmp-r-9c674500-f299-4c17-ad1b-ba2a1c2cd878">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtypeId): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@extension)=('POCD_HD000040')">(CDAtypeId): Der Wert von @extension MUSS 'POCD_HD000040' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.1.3')">(CDAtypeId): Der Wert von @root MUSS '2.16.840.1.113883.1.3' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']"
         id="tmp-r-7c56e06f-b91f-4288-8f55-f3f6a770a7dd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.1015')">(EmergencymedicineNoteCDAdocument): Der Wert von @root MUSS '1.2.276.0.76.10.1015' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90004
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id"
         id="tmp-r-77d683ba-dc54-49df-9877-8062c8e66484">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90004-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-e1de7b12-24ec-4f2f-88e9-6c044f539ecf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="@nullFlavor or (@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')">(EmergencymedicineNoteCDAdocument): Der Elementinhalt MUSS einer von 'code '68552-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title"
         id="tmp-r-6045d7ac-86a7-4ddf-aaea-243a53ebcc5a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90005-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90006
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime"
         id="tmp-r-20980136-ec1b-4cb2-a62e-1d43e78ee786">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90006-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAeffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90007
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-06e6d089-4c92-4f82-82f0-6cdfd6eca35a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAconfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAconfidentialityCode): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAconfidentialityCode): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90008
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode"
         id="tmp-r-8c32a25e-febd-4e6b-93cb-27163b05e717">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90008-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS.LANG"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId"
         id="tmp-r-08c947ce-3955-44dc-9e05-88bee69c39df">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber"
         id="tmp-r-4945ac10-97e3-407e-a8b0-6b20a31a8cf1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="INT.NONNEG"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1))">(CDAsetIdversionNumber): value MUSS im Bereich [1..] liegen  </assert>
      <let name="digitok" value="matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="$digitok or @nullFlavor">(CDAsetIdversionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget"
         id="tmp-r-8a6295bf-621a-4153-bc5a-d1cd10badd52">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@typeCode)=('RCT') or not(@typeCode)">(CDArecordTargetnnar): Der Wert von @typeCode MUSS 'RCT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@contextControlCode)=('OP') or not(@contextControlCode)">(CDArecordTargetnnar): Der Wert von @contextControlCode MUSS 'OP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&lt;=1">(CDArecordTargetnnar): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole"
         id="tmp-r-74d6e3dc-974f-44e9-b1b7-a8abfd6ffed8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PAT') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDArecordTargetnnar): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDArecordTargetnnar): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDArecordTargetnnar): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patient ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&lt;=1">(CDArecordTargetnnar): Element hl7:patient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90024
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id
Item: (PatientIdentifier)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id"
         id="tmp-r-6470624f-9f87-4202-977c-fc198f633a8a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientIdentifier): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="@extension">(PatientIdentifier): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr"
         id="tmp-r-8d6c7c0c-7e1a-4d01-a562-02d961ba19d4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom"
         id="tmp-r-d1e2c5af-8589-4d5b-8f66-3e166ee9b8c8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient"
         id="tmp-r-55fce7a5-bcec-4174-81c1-4435f48a14a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDArecordTargetnnar): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 ">(CDArecordTargetnnar): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&gt;=1 ">(CDArecordTargetnnar): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&lt;=1">(CDArecordTargetnnar): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name"
         id="tmp-r-d365b6d3-d5b4-4f14-a13b-b370856736a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-2acf9983-b2d0-4de2-8f90-3b43b87db6b8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDArecordTargetnnar): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.1 AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDArecordTargetnnar): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.1 AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime"
         id="tmp-r-c72c74a0-400f-49b2-b2a5-6f606f84963b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author"
         id="tmp-r-dea12209-ff9e-4f4b-8e25-f25457711919">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@typeCode)=('AUT') or not(@typeCode)">(CDAauthor): Der Wert von @typeCode MUSS 'AUT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 and not(hl7:time/@nullFlavor)">(CDAauthor): Element hl7:time ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDAauthor): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&gt;=1 and not(hl7:assignedAuthor/@nullFlavor)">(CDAauthor): Element hl7:assignedAuthor ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&lt;=1">(CDAauthor): Element hl7:assignedAuthor kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time"
         id="tmp-r-66cb0da2-6e16-40fb-8178-02be06f73739">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor"
         id="tmp-r-adae73ab-c8ab-441e-8e9a-64910913bb73">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDAauthor): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDAauthor): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedPerson)&lt;=1">(CDAauthor): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:representedOrganization)&lt;=1">(CDAauthor): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id"
         id="tmp-r-e1ecece7-931f-47d8-b9a8-cebf3714f8ce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson"
         id="tmp-r-06f81474-abf9-4f8c-877a-9c9c00bcb001">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name"
         id="tmp-r-125f7fae-5642-4031-80a4-5a07813b8ec0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization"
         id="tmp-r-d69d152a-d73f-483e-b40b-03a2a66f9e8b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAauthor): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id"
         id="tmp-r-3aafa1d6-c289-4463-b0fc-ebcae3e52ca3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="tmp-r-b2b51890-f095-4201-91be-f39f6a268a69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom"
         id="tmp-r-2cf2519b-03be-4a64-888e-82d8fa5ed8ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="tmp-r-b2a24817-e2fc-45b5-9d3b-2cd13cfee862">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian"
         id="tmp-r-4bcc466e-c395-4f8e-b758-7c318e5adbd7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@typeCode)=('CST') or not(@typeCode)">(CDAcustodian): Der Wert von @typeCode MUSS 'CST' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&gt;=1 and not(hl7:assignedCustodian/@nullFlavor)">(CDAcustodian): Element hl7:assignedCustodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&lt;=1">(CDAcustodian): Element hl7:assignedCustodian kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian"
         id="tmp-r-517e2930-a908-4b7f-8f93-0889f33b98ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:representedCustodianOrganization)&lt;=1">(CDAcustodian): Element hl7:representedCustodianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization"
         id="tmp-r-594db08f-d7c8-4386-b718-a2767761096b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAcustodian): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAcustodian): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAcustodian): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAcustodian): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id"
         id="tmp-r-bc4dbe06-de50-4b2c-b4f0-09e70d02a2ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name"
         id="tmp-r-9822f72c-7c84-4199-80c2-5abc6545d239">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom"
         id="tmp-r-c9fead27-fdc7-45ca-ab67-bdfdaa1e8bef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr"
         id="tmp-r-9e421e4d-ab5e-4e4b-86bf-f76afef91534">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient"
         id="tmp-r-cf005170-fb1c-43a0-9c39-ab31f089f1a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="@typeCode">(HeaderInformationRecipient): Attribut @typeCode MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(HeaderInformationRecipient): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@typeCode,' ') return if ($code=('PRCP','TRC')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or count($theAttValue) = count($theAttCheck)">(HeaderInformationRecipient): Der Wert von typeCode MUSS 'Code PRCP oder Code TRC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&gt;=1 and not(hl7:intendedRecipient/@nullFlavor)">(HeaderInformationRecipient): Element hl7:intendedRecipient ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:intendedRecipient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient"
         id="tmp-r-428063f2-4606-4929-94a2-ac2f8fba50be">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:id)&gt;=1 ">(HeaderInformationRecipient): Element hl7:id ist required [min 1x].</assert>
      <let name="elmcount"
           value="count(hl7:informationRecipient|hl7:receivedOrganization)"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="$elmcount&gt;=1">(HeaderInformationRecipient): Auswahl (hl7:informationRecipient oder hl7:receivedOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:informationRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:informationRecipient kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:receivedOrganization)&lt;=1">(HeaderInformationRecipient): Element hl7:receivedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id"
         id="tmp-r-677e1e5d-1ee7-4b9e-acab-dac3a4267e03">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient"
         id="tmp-r-bbe4ff37-99b0-4d06-910a-f4f7e3a6c18d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name"
         id="tmp-r-11be1074-a0a5-4239-be2b-6c2928762814">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization"
         id="tmp-r-ed1da1ca-51df-4f29-a701-c74963265081">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderInformationRecipient): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id"
         id="tmp-r-3bd1f66e-db4d-48e9-bbd5-114d0c5b70fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name"
         id="tmp-r-e8002163-f841-4ad5-8a25-98758da01a4e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom"
         id="tmp-r-ffbcb7e1-322f-4966-9d71-5fc34af4c894">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr"
         id="tmp-r-10c2bf15-49e0-4e09-a1f8-2503984fcb8c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]"
         id="tmp-r-25fe5801-5736-4d17-ac37-06d95f6255c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@typeCode)=('HLD')">(HeaderParticipantKostentraeger): Der Wert von @typeCode MUSS 'HLD' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.2022'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.2022']/@nullFlavor)">(HeaderParticipantKostentraeger): Element hl7:templateId[@root='1.2.276.0.76.10.2022'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:time)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedEntity)&gt;=1 and not(hl7:associatedEntity/@nullFlavor)">(HeaderParticipantKostentraeger): Element hl7:associatedEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedEntity)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:associatedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:templateId[@root='1.2.276.0.76.10.2022']
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:templateId[@root='1.2.276.0.76.10.2022']"
         id="tmp-r-1872a405-953a-4e30-b3f8-635544808815">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@root)=('1.2.276.0.76.10.2022')">(HeaderParticipantKostentraeger): Der Wert von @root MUSS '1.2.276.0.76.10.2022' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time"
         id="tmp-r-b61bfc64-3176-4bc6-8715-354b2bf8104c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity"
         id="tmp-r-9f1b033e-398a-4ce6-b1a1-0794217fc8d2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode)=('POLHOLD')">(HeaderParticipantKostentraeger): Der Wert von @classCode MUSS 'POLHOLD' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="hl7:code/@code!='FAMDEP' or count(hl7:associatedPerson)=1">(HeaderParticipantKostentraeger): Wenn das Versicherungsverhältnis "familienversichert" ist, dann muss eine associatedPerson angegeben sein</assert>
      <assert role="error"
              test="hl7:code/@code!='FAMDEP' or count(hl7:associatedPerson)=1">(HeaderParticipantKostentraeger): Wenn das Versicherungsverhältnis "familienversichert" ist, dann muss eine associatedPerson angegeben sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:code)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:code kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedPerson)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:associatedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:scopingOrganization)&gt;=1 ">(HeaderParticipantKostentraeger): Element hl7:scopingOrganization ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:scopingOrganization)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:id
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:id"
         id="tmp-r-dbf34bfe-b325-4e25-8e3b-d80d4283dd6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code"
         id="tmp-r-0e64b252-f869-4f5e-984e-35ed9efb93f1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:addr
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:addr"
         id="tmp-r-836f6b32-ff50-42ed-b076-62805e917cdb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:telecom
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:telecom"
         id="tmp-r-80473df7-da53-4199-8c8f-a0b989172171">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson"
         id="tmp-r-b901293b-633b-47cb-a028-05767ed59eba">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(HeaderParticipantKostentraeger): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderParticipantKostentraeger): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson/hl7:name"
         id="tmp-r-e63703af-ebd5-4b43-a6bb-98309965997d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization"
         id="tmp-r-0bbc1f5f-112f-47df-9711-cde90b1a524e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(HeaderParticipantKostentraeger): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderParticipantKostentraeger): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderParticipantKostentraeger): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:id"
         id="tmp-r-ff0e8488-1a1a-413e-a04f-c1f572b749df">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name"
         id="tmp-r-e123f0c2-2cf6-439f-a122-febec70a0ee7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:telecom"
         id="tmp-r-ed0f53a2-ad6c-42df-9ce4-95f0124c8de5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:addr"
         id="tmp-r-a1c54a93-8be6-4994-9d53-7b5993ca8690">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf"
         id="tmp-r-4e307cfc-e8e1-4430-9672-ed43762c56d2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('DOC')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'DOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&gt;=1 ">(CDADocumentationOf): Element hl7:serviceEvent ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&lt;=1">(CDADocumentationOf): Element hl7:serviceEvent kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent"
         id="tmp-r-3b2b8e2c-e79e-4822-846c-cc4b8120f44e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ACT')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@moodCode)=('EVN')">(CDADocumentationOf): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDADocumentationOf): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDADocumentationOf): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&gt;=1 and not(hl7:performer/@nullFlavor)">(CDADocumentationOf): Element hl7:performer ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&lt;=1">(CDADocumentationOf): Element hl7:performer kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime"
         id="tmp-r-23955be5-40e1-400b-a448-bd21c9a10afc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&gt;=1 ">(CDADocumentationOf): Element cda:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&lt;=1">(CDADocumentationOf): Element cda:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&lt;=1">(CDADocumentationOf): Element cda:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low"
         id="tmp-r-47d1757a-f142-4dd8-a84e-9d33f0a98bc3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high"
         id="tmp-r-d7763053-b5ae-43dd-9c9a-85f3c5e0a5d9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer"
         id="tmp-r-3b5d69fa-b058-4169-aec2-60f63c3c7ef0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('PRF')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'PRF' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 ">(CDADocumentationOf): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDADocumentationOf): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&gt;=1 and not(hl7:assignedEntity/@nullFlavor)">(CDADocumentationOf): Element hl7:assignedEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&lt;=1">(CDADocumentationOf): Element hl7:assignedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time"
         id="tmp-r-0cd1225b-250b-43d8-8720-a3ddaff1c3da">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDADocumentationOf): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&lt;=1">(CDADocumentationOf): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&lt;=1">(CDADocumentationOf): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low"
         id="tmp-r-c32027ae-f683-4a7e-bbbb-017801bf4f7e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high"
         id="tmp-r-aac9e1b8-fd47-4d0c-9244-885c2beb7d53">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity"
         id="tmp-r-c64bf13b-48c2-4ad4-9464-0cc6a046c9c0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDADocumentationOf): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDADocumentationOf): Element hl7:id kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id"
         id="tmp-r-3e26351d-7e01-43fe-9435-45a7ca9a20e4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@nullFlavor)=('NA')">(CDADocumentationOf): Der Wert von @nullFlavor MUSS 'NA' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf"
         id="tmp-r-7c7d7ee9-c48d-4224-84dc-6744caac8fde">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(CDAEncompassingEncounter): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:encompassingEncounter)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:encompassingEncounter ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:encompassingEncounter)&lt;=1">(CDAEncompassingEncounter): Element hl7:encompassingEncounter kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter"
         id="tmp-r-78fd7f55-b09c-4f12-b475-1e4c1b453139">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="string(@classCode)=('ENC') or not(@classCode)">(CDAEncompassingEncounter): Der Wert von @classCode MUSS 'ENC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(CDAEncompassingEncounter): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="not(hl7:dischargeDispositionCode and //hl7:act[hl7:templateId/@root = '1.2.276.0.76.10.4067'])">(CDAEncompassingEncounter): Patient entweder verlegt (encompassingEncounter.dischargeDispositionCode) oder entlassen (act Referralto template id 1.2.276.0.76.10.4067)</assert>
      <assert role="error"
              test="not(hl7:dischargeDispositionCode and //hl7:act[hl7:templateId/@root = '1.2.276.0.76.10.4067'])">(CDAEncompassingEncounter): Patient entweder verlegt (encompassingEncounter.dischargeDispositionCode) oder entlassen (act Referralto template id 1.2.276.0.76.10.4067)</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDAEncompassingEncounter): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDAEncompassingEncounter): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:dischargeDispositionCode)&lt;=1">(CDAEncompassingEncounter): Element hl7:dischargeDispositionCode kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime"
         id="tmp-r-4bb5accb-b7cf-4557-b9d3-9eeb671ac541">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:low)&lt;=1">(CDAEncompassingEncounter): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="count(hl7:high)&lt;=1">(CDAEncompassingEncounter): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low"
         id="tmp-r-26fa6e52-f3cc-47b9-9550-02b76b54d8e0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high"
         id="tmp-r-a1e07583-1143-4eae-9318-aa9422f39385">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode"
         id="tmp-r-4b9a1937-018b-42a5-a770-0f760042d98c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAEncompassingEncounter): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAEncompassingEncounter): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component"
         id="tmp-r-ab35a165-7c67-4c87-906f-a93f50c93df7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody"
         id="tmp-r-d8d732a1-2b42-4c15-8aa6-ca66d3b08393">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@classCode)=('DOCBODY') or not(@classCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @classCode MUSS 'DOCBODY' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015'])]"
         id="tmp-r-1ee3cffa-7dca-452a-abe8-b35e13b4c459">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1ee3cffa-7dca-452a-abe8-b35e13b4c459)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/*[not(self::hl7:realmCode|self::hl7:typeId[@root='2.16.840.1.113883.1.3']|self::hl7:templateId[@root='1.2.276.0.76.10.1015']|self::hl7:id|self::hl7:code[(@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:effectiveTime|self::hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:languageCode|self::hl7:setId|self::hl7:versionNumber|self::hl7:recordTarget|self::hl7:author|self::hl7:custodian|self::hl7:informationRecipient|self::hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]|self::hl7:documentationOf|self::hl7:componentOf|self::hl7:component)]"
         id="tmp-r-254b8c93-0d2d-4093-86ab-e616dacb49c3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-254b8c93-0d2d-4093-86ab-e616dacb49c3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/*[not(self::hl7:patientRole)]"
         id="tmp-r-08522764-060b-469c-a34f-565f3107a58d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-08522764-060b-469c-a34f-565f3107a58d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/*[not(self::hl7:id|self::hl7:addr|self::hl7:telecom|self::hl7:patient)]"
         id="tmp-r-164db035-ff5a-4cde-8ae1-740b7cfa1c0c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-164db035-ff5a-4cde-8ae1-740b7cfa1c0c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/*[not(self::hl7:name|self::hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:birthTime)]"
         id="tmp-r-ee47337e-573f-4a20-93ab-9a9bdc73c8a9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ee47337e-573f-4a20-93ab-9a9bdc73c8a9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/*[not(self::hl7:time|self::hl7:assignedAuthor)]"
         id="tmp-r-cbc7e8f1-e899-4d1c-ba89-189e34b787ae">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cbc7e8f1-e899-4d1c-ba89-189e34b787ae)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/*[not(self::hl7:id|self::hl7:assignedPerson|self::hl7:representedOrganization)]"
         id="tmp-r-66b45bae-5482-4ee4-8eb2-cfc8ae6dc1fb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-66b45bae-5482-4ee4-8eb2-cfc8ae6dc1fb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/*[not(self::hl7:name)]"
         id="tmp-r-30b7c82e-c26b-4893-a2ad-a14370a63039">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-30b7c82e-c26b-4893-a2ad-a14370a63039)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-e1d564dd-2e88-4ca8-bc1b-da4907a6366f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e1d564dd-2e88-4ca8-bc1b-da4907a6366f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/*[not(self::hl7:assignedCustodian)]"
         id="tmp-r-a2fc4724-e6d0-4e16-b7e4-38e426c38559">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a2fc4724-e6d0-4e16-b7e4-38e426c38559)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/*[not(self::hl7:representedCustodianOrganization)]"
         id="tmp-r-4d0c86e2-4ae1-4341-ae60-b8059217490c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4d0c86e2-4ae1-4341-ae60-b8059217490c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-1da1c184-d33d-4cd7-9b2d-0ee5269c554d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1da1c184-d33d-4cd7-9b2d-0ee5269c554d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/*[not(self::hl7:intendedRecipient)]"
         id="tmp-r-da58ffd9-6b51-4d8d-b30a-090f27af3dd8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-da58ffd9-6b51-4d8d-b30a-090f27af3dd8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/*[not(self::hl7:id|self::hl7:informationRecipient|self::hl7:receivedOrganization)]"
         id="tmp-r-b444fa79-5ac7-4a43-9e43-51e0668c8968">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b444fa79-5ac7-4a43-9e43-51e0668c8968)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/*[not(self::hl7:name)]"
         id="tmp-r-ccfa1b78-a74f-4c13-a4c7-dbe8cbd31c58">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ccfa1b78-a74f-4c13-a4c7-dbe8cbd31c58)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-2fd1b523-70d5-4bd9-861b-7fbf21f12516">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2fd1b523-70d5-4bd9-861b-7fbf21f12516)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.2022']|self::hl7:time|self::hl7:associatedEntity)]"
         id="tmp-r-1a2c893a-4434-4963-856c-916a24e01748">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1a2c893a-4434-4963-856c-916a24e01748)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/*[not(self::hl7:id|self::hl7:code|self::hl7:addr|self::hl7:telecom|self::hl7:associatedPerson|self::hl7:scopingOrganization)]"
         id="tmp-r-df003ab7-a9a8-4609-a01e-8036fec7193f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-df003ab7-a9a8-4609-a01e-8036fec7193f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson/*[not(self::hl7:name)]"
         id="tmp-r-825f0ae1-eb97-416c-bfc5-7c945930d0b5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-825f0ae1-eb97-416c-bfc5-7c945930d0b5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-fe4881d1-00a5-4620-880f-9d0ca9bbb4c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fe4881d1-00a5-4620-880f-9d0ca9bbb4c9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/*[not(self::hl7:serviceEvent)]"
         id="tmp-r-e43ef0d6-0ab9-4c79-9ff1-ff1a66cbc3aa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e43ef0d6-0ab9-4c79-9ff1-ff1a66cbc3aa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/*[not(self::hl7:effectiveTime|self::hl7:performer)]"
         id="tmp-r-f00adb1f-0c2a-4e6e-a6be-d321cf92cbc8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f00adb1f-0c2a-4e6e-a6be-d321cf92cbc8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/*[not(self::cda:low|self::cda:high)]"
         id="tmp-r-d083cefb-a182-4ade-95f0-b8f1efda724e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d083cefb-a182-4ade-95f0-b8f1efda724e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/*[not(self::hl7:time|self::hl7:assignedEntity)]"
         id="tmp-r-08b997eb-8674-4c75-9c5e-a8c9e28691de">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-08b997eb-8674-4c75-9c5e-a8c9e28691de)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-aac91501-3c64-40a4-acbc-8ba2b0c2ebb7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-aac91501-3c64-40a4-acbc-8ba2b0c2ebb7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/*[not(self::hl7:id)]"
         id="tmp-r-415627ad-872d-495d-b138-6298daf1118e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-415627ad-872d-495d-b138-6298daf1118e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/*[not(self::hl7:encompassingEncounter)]"
         id="tmp-r-1e4b9ed2-f408-4f10-a01e-bc0c81738bc0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1e4b9ed2-f408-4f10-a01e-bc0c81738bc0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/*[not(self::hl7:effectiveTime|self::hl7:dischargeDispositionCode)]"
         id="tmp-r-070bec5c-4081-4aec-bf33-85be0e603fa2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-070bec5c-4081-4aec-bf33-85be0e603fa2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-7f0b4dcf-449e-46f8-9074-5b7795df70ec">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.2036-2015-09-18T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7f0b4dcf-449e-46f8-9074-5b7795df70ec)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/*[not(self::hl7:structuredBody)]"
         id="tmp-r-47f5d4bb-6a84-4b27-8cb1-9f627847a3ae">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-47f5d4bb-6a84-4b27-8cb1-9f627847a3ae)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/*[not(self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])]"
         id="tmp-r-71b90ab7-f333-45b7-b22a-04ae118e1777">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-71b90ab7-f333-45b7-b22a-04ae118e1777)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045'])]"
         id="tmp-r-dbaf7a37-5467-4e84-8f6e-737c096bd1bf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dbaf7a37-5467-4e84-8f6e-737c096bd1bf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3045']|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']])]"
         id="tmp-r-0d02a265-5a1b-4b65-ba77-27db5b55e048">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0d02a265-5a1b-4b65-ba77-27db5b55e048)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'])]"
         id="tmp-r-cbe7e889-c60c-4567-891a-5d821858037b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cbe7e889-c60c-4567-891a-5d821858037b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4037']|self::hl7:id|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-e600ba84-617d-4071-82ed-3a9495e73791">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e600ba84-617d-4071-82ed-3a9495e73791)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-08de8a99-de09-43ae-b82c-22917836c565">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-08de8a99-de09-43ae-b82c-22917836c565)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime/*[not(self::hl7:high)]"
         id="tmp-r-b8d7d0be-8bc3-4f8f-9ff3-009d60292a18">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b8d7d0be-8bc3-4f8f-9ff3-009d60292a18)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046'])]"
         id="tmp-r-7e4aaf70-a3d0-43fb-b985-16ace67dbbbe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7e4aaf70-a3d0-43fb-b985-16ace67dbbbe)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3046']|self::hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']])]"
         id="tmp-r-b2c78fb3-3f10-4d9a-a5ce-c140d8c67135">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b2c78fb3-3f10-4d9a-a5ce-c140d8c67135)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])]"
         id="tmp-r-18634930-622e-4852-95a3-e77fcb9c8093">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-18634930-622e-4852-95a3-e77fcb9c8093)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4038']|self::hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:participant)]"
         id="tmp-r-8094d44b-a1ae-4d7b-b8b6-192c6348d605">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8094d44b-a1ae-4d7b-b8b6-192c6348d605)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-97fd5406-fb1f-4051-a918-6e1f9f6c1615">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-97fd5406-fb1f-4051-a918-6e1f9f6c1615)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-9222468b-e944-4eae-a1be-36ce54b38cf0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9222468b-e944-4eae-a1be-36ce54b38cf0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-1b2658b9-70e7-41fe-9863-406f05e9e506">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1b2658b9-70e7-41fe-9863-406f05e9e506)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant/hl7:participantRole/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/*[not(self::hl7:originalText)]"
         id="tmp-r-25019771-608b-4810-b71d-8816fcd7cab1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-25019771-608b-4810-b71d-8816fcd7cab1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053'])]"
         id="tmp-r-ef7c0998-853a-4ffc-a972-5ebaf737f409">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ef7c0998-853a-4ffc-a972-5ebaf737f409)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3053']|self::hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-44f48560-fdb1-4620-9401-1f31f21e18e0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-44f48560-fdb1-4620-9401-1f31f21e18e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048'])]"
         id="tmp-r-59ae1a71-006c-483d-97c9-9b8f76dbc799">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-59ae1a71-006c-483d-97c9-9b8f76dbc799)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3048']|self::hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']])]"
         id="tmp-r-e709ba67-19fc-4982-b88a-8cb149e6a3dc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e709ba67-19fc-4982-b88a-8cb149e6a3dc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039'])]"
         id="tmp-r-b86395d7-813f-44fc-9465-4c1827ed10ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b86395d7-813f-44fc-9465-4c1827ed10ed)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4039']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']])]"
         id="tmp-r-a56c01d5-524f-4c37-af6e-28b4e242028e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a56c01d5-524f-4c37-af6e-28b4e242028e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-9f50525d-707a-4f3a-82e7-a41f22c27a74">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9f50525d-707a-4f3a-82e7-a41f22c27a74)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])]"
         id="tmp-r-fdb0bdc7-9057-4b66-8ce1-4fd30347d34e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fdb0bdc7-9057-4b66-8ce1-4fd30347d34e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4040']|self::hl7:id|self::hl7:code[(@code='75322-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-53bd2d12-b128-46f5-8aba-3ead8b09712a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-53bd2d12-b128-46f5-8aba-3ead8b09712a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c154dabe-8a4e-4ea7-9cbe-7e4ef0bce7dd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c154dabe-8a4e-4ea7-9cbe-7e4ef0bce7dd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/*[not(self::hl7:width)]"
         id="tmp-r-d3a43d9d-b1cc-41e7-a130-d9a1c29056b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d3a43d9d-b1cc-41e7-a130-d9a1c29056b7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047'])]"
         id="tmp-r-7f498efe-55f8-4261-a9b6-c71c63c2ba6b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7f498efe-55f8-4261-a9b6-c71c63c2ba6b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3047']|self::hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]|self::hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']])]"
         id="tmp-r-2c6a09ca-a93c-4069-97c7-4d10775f6e7c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c6a09ca-a93c-4069-97c7-4d10775f6e7c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'])]"
         id="tmp-r-a59e35f8-46d7-404e-8b45-27432d99c249">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a59e35f8-46d7-404e-8b45-27432d99c249)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4043']|self::hl7:id|self::hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-cafb76ee-dd00-49dc-9524-82c9bc9d9e73">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cafb76ee-dd00-49dc-9524-82c9bc9d9e73)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bb1ff62d-bf9b-4bda-b4aa-67365fa6fffc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bb1ff62d-bf9b-4bda-b4aa-67365fa6fffc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/*[not(self::hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])]"
         id="tmp-r-c23918f4-f26d-40d6-9a98-b2d275df22ca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c23918f4-f26d-40d6-9a98-b2d275df22ca)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4044']|self::hl7:id|self::hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:consumable)]"
         id="tmp-r-3f9f06d3-e73a-43de-a3f9-68e464f3c055">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3f9f06d3-e73a-43de-a3f9-68e464f3c055)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-191b50b9-976b-42df-ab25-39638ff58a1f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-191b50b9-976b-42df-ab25-39638ff58a1f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/*[not(self::hl7:manufacturedProduct)]"
         id="tmp-r-52e1ba6d-996a-402b-b2b9-3a93145e3a89">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-52e1ba6d-996a-402b-b2b9-3a93145e3a89)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct/*[not(self::hl7:manufacturedMaterial)]"
         id="tmp-r-61ed7b06-bd3e-4dec-ab43-c9a13a4baba4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-61ed7b06-bd3e-4dec-ab43-c9a13a4baba4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/*[not(self::hl7:code[(@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')])]"
         id="tmp-r-df2a16dd-48d4-4d61-80a5-5ad909f9fe7f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-df2a16dd-48d4-4d61-80a5-5ad909f9fe7f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])]"
         id="tmp-r-094713c9-2778-4727-b83b-8fb7b12e073b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-094713c9-2778-4727-b83b-8fb7b12e073b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4045']|self::hl7:id|self::hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-f8c624f9-4eac-4942-a826-2bc8d64f1cce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f8c624f9-4eac-4942-a826-2bc8d64f1cce)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-84323800-5fff-4fe0-a890-369d290e5dca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-84323800-5fff-4fe0-a890-369d290e5dca)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072'])]"
         id="tmp-r-3e77c545-dcf7-420e-86ce-efbbc1b4a4af">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3e77c545-dcf7-420e-86ce-efbbc1b4a4af)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4072']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']])]"
         id="tmp-r-2dbee6af-66fc-49d0-8d97-14b4ea5ff8a9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2dbee6af-66fc-49d0-8d97-14b4ea5ff8a9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-6410dd47-86f8-4f92-98da-545e59014476">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6410dd47-86f8-4f92-98da-545e59014476)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'])]"
         id="tmp-r-d98de1b5-7613-4043-ba63-80dcf2f96934">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d98de1b5-7613-4043-ba63-80dcf2f96934)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4073']|self::hl7:id|self::hl7:code[(@code='COND' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-242c7ce1-95bc-409e-a8e1-b5f25a6132e5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-242c7ce1-95bc-409e-a8e1-b5f25a6132e5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-74dbae94-6214-4e8b-88fb-234b17ddfe8f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-74dbae94-6214-4e8b-88fb-234b17ddfe8f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-b220f612-2182-4e76-a824-020bb4bed757">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b220f612-2182-4e76-a824-020bb4bed757)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/*[not(self::hl7:qualifier[hl7:name/@code='IBB']|self::hl7:qualifier[hl7:name/@code='URAG'])]"
         id="tmp-r-085aaaed-a99c-47b3-9a3b-9af5079735af">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-085aaaed-a99c-47b3-9a3b-9af5079735af)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='IBB']/*[not(self::hl7:name[(@code='IBB' and @codeSystem='1.2.276.0.76.3.1.195.5.1')]|self::hl7:value[(@code='BACP' and @codeSystem='1.2.276.0.76.3.1.195.5.1')])]"
         id="tmp-r-deb46cd1-7c33-43d6-b6ef-3f35f66c9444">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-deb46cd1-7c33-43d6-b6ef-3f35f66c9444)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='URAG']/*[not(self::hl7:name[(@code='URAG' and @codeSystem='1.2.276.0.76.3.1.195.5.1')]|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-172f2edb-1e48-4bca-becc-7ebc161afed0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-172f2edb-1e48-4bca-becc-7ebc161afed0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044'])]"
         id="tmp-r-f26e2332-6967-40c2-962c-695ced19da16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f26e2332-6967-40c2-962c-695ced19da16)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3044']|self::hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']])]"
         id="tmp-r-ed580dcf-3c03-43d6-882a-daef504870ae">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ed580dcf-3c03-43d6-882a-daef504870ae)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])]"
         id="tmp-r-057136f3-941d-4c7a-a406-6614f899b080">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-057136f3-941d-4c7a-a406-6614f899b080)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4030']|self::hl7:id|self::hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-71352996-93bf-4bba-ae3f-78016981995b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-71352996-93bf-4bba-ae3f-78016981995b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/*[not(self::hl7:originalText)]"
         id="tmp-r-00e8ac29-a991-442d-905b-dff51495878f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-00e8ac29-a991-442d-905b-dff51495878f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-0560b4eb-1b13-4a00-aff8-8215f567aed7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0560b4eb-1b13-4a00-aff8-8215f567aed7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'])]"
         id="tmp-r-9da45509-bdb1-4c85-be66-0b1b567a7644">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9da45509-bdb1-4c85-be66-0b1b567a7644)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4031']|self::hl7:id|self::hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-5bccd37b-fd08-417a-9bdf-1753202ae914">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5bccd37b-fd08-417a-9bdf-1753202ae914)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bd2bc091-819a-4380-86ab-e65bc889bacb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bd2bc091-819a-4380-86ab-e65bc889bacb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])]"
         id="tmp-r-60c0e9c5-ae4e-4651-87c0-e6683d146574">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-60c0e9c5-ae4e-4651-87c0-e6683d146574)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4032']|self::hl7:id|self::hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-5507e8d9-7d64-4a66-a8f8-22706dad9a3e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5507e8d9-7d64-4a66-a8f8-22706dad9a3e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-6f8adc09-3a98-45e2-8943-d2c83047bfab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6f8adc09-3a98-45e2-8943-d2c83047bfab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])]"
         id="tmp-r-5ec20fe6-313f-40fb-9ec2-1b30ca95ba3b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5ec20fe6-313f-40fb-9ec2-1b30ca95ba3b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4033']|self::hl7:id|self::hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-387bb5ff-0492-4a3c-895a-6d4ca24bef99">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-387bb5ff-0492-4a3c-895a-6d4ca24bef99)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-16ae9722-c7f6-4710-892e-f13ecda5afef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-16ae9722-c7f6-4710-892e-f13ecda5afef)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034'])]"
         id="tmp-r-01b9ed52-3cf3-4a87-b950-76f4a1755884">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-01b9ed52-3cf3-4a87-b950-76f4a1755884)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4034']|self::hl7:id|self::hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:text|self::hl7:effectiveTime|self::hl7:value|self::hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']|self::hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']|self::hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4'])]"
         id="tmp-r-b386f3c0-2baf-476e-a7b0-b0919b831c5c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b386f3c0-2baf-476e-a7b0-b0919b831c5c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b9b7905b-b2f4-46be-8518-e945e9567e86">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b9b7905b-b2f4-46be-8518-e945e9567e86)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/*[not(self::hl7:observation)]"
         id="tmp-r-bf750b8b-6756-46c7-b378-62ebc0667aca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bf750b8b-6756-46c7-b378-62ebc0667aca)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation/*[not(self::hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-b82e0513-0a52-4822-8a99-48f6fb0e390a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b82e0513-0a52-4822-8a99-48f6fb0e390a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/*[not(self::hl7:observation)]"
         id="tmp-r-0c72f71b-9e55-4285-ad31-1bb29fc76d26">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0c72f71b-9e55-4285-ad31-1bb29fc76d26)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation/*[not(self::hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-4e169e77-3349-485b-b32a-df9d0d554f00">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4e169e77-3349-485b-b32a-df9d0d554f00)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/*[not(self::hl7:observation)]"
         id="tmp-r-4e58d7f7-7071-48f9-8749-4cb553d530e6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4e58d7f7-7071-48f9-8749-4cb553d530e6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation/*[not(self::hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-a487fa8d-631f-4751-ae67-73c7782f4faf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a487fa8d-631f-4751-ae67-73c7782f4faf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'])]"
         id="tmp-r-c339db00-c433-42fc-9f69-16d21c1ce952">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c339db00-c433-42fc-9f69-16d21c1ce952)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4046']|self::hl7:id|self::hl7:code[(@code='SPPL' and @codeSystem='1.2.276.0.76.3.1.195.5.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-6cd26722-0bf1-4059-956c-fe9659e7475d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6cd26722-0bf1-4059-956c-fe9659e7475d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-42195885-ad67-46a1-86eb-516621684204">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-42195885-ad67-46a1-86eb-516621684204)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'])]"
         id="tmp-r-5e2ffef7-0a23-4784-8c1f-dca217103e93">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5e2ffef7-0a23-4784-8c1f-dca217103e93)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4047']|self::hl7:id|self::hl7:code[(@code='RPPL' and @codeSystem='1.2.276.0.76.3.1.195.5.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-4a377c73-41cc-4349-a6aa-92d19ee029ba">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4a377c73-41cc-4349-a6aa-92d19ee029ba)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-f29ff48a-3a08-4c57-b9ff-aa2bbd1349f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f29ff48a-3a08-4c57-b9ff-aa2bbd1349f7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])]"
         id="tmp-r-7015baf6-dd3e-416d-86f8-6b73aed28e61">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7015baf6-dd3e-416d-86f8-6b73aed28e61)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4035']|self::hl7:id|self::hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-5227191b-a0c1-4ad7-bc7a-24b21cbc6003">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5227191b-a0c1-4ad7-bc7a-24b21cbc6003)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-fde5d58c-3f78-4f65-88a1-fab36846c8fb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fde5d58c-3f78-4f65-88a1-fab36846c8fb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])]"
         id="tmp-r-afe37772-b826-475d-be7a-530f37ee54d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-afe37772-b826-475d-be7a-530f37ee54d6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4036']|self::hl7:id|self::hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-9ec8ba1b-3121-4dc3-bd52-b830b70c2d6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9ec8ba1b-3121-4dc3-bd52-b830b70c2d6a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-762349a2-b07c-497f-9546-53113130f5e3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-762349a2-b07c-497f-9546-53113130f5e3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050'])]"
         id="tmp-r-b0d07800-d557-4ce5-97fc-40dbb8025c6c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b0d07800-d557-4ce5-97fc-40dbb8025c6c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3050']|self::hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']])]"
         id="tmp-r-a75bac49-9919-4477-bcfc-0a91805b1013">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a75bac49-9919-4477-bcfc-0a91805b1013)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])]"
         id="tmp-r-cdceff0d-457c-4c83-9058-88a2750792e6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cdceff0d-457c-4c83-9058-88a2750792e6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4050']|self::hl7:id|self::hl7:code[(@code='30745-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant)]"
         id="tmp-r-0207ab9d-9e7f-4cde-b6c3-ad02507c314e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0207ab9d-9e7f-4cde-b6c3-ad02507c314e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-3d225508-1845-40a7-9071-aff5872ca91a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3d225508-1845-40a7-9071-aff5872ca91a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-9e027b9b-8a70-4773-a77e-fcd5efb5d189">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9e027b9b-8a70-4773-a77e-fcd5efb5d189)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])]"
         id="tmp-r-f230f58f-7263-432b-98e5-06cdeb9c6f06">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f230f58f-7263-432b-98e5-06cdeb9c6f06)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'])]"
         id="tmp-r-35b39b29-8613-4f32-a6ee-ae174d6fda18">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-35b39b29-8613-4f32-a6ee-ae174d6fda18)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4051']|self::hl7:id|self::hl7:code[(@code='38008-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant)]"
         id="tmp-r-c1922c3d-8b12-467f-9943-4ac8e3baa21f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c1922c3d-8b12-467f-9943-4ac8e3baa21f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-18cbc8c1-fe61-4a3b-9162-bd4dc22e98e6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-18cbc8c1-fe61-4a3b-9162-bd4dc22e98e6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-6837c868-588d-4428-836a-5d1d0b5fde78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6837c868-588d-4428-836a-5d1d0b5fde78)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])]"
         id="tmp-r-56e9679c-1685-447e-beef-7bb56f50f590">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-56e9679c-1685-447e-beef-7bb56f50f590)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])]"
         id="tmp-r-7f0da0aa-ee10-449a-b702-76d105d34691">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7f0da0aa-ee10-449a-b702-76d105d34691)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4052']|self::hl7:id|self::hl7:code[(@code='28561-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant)]"
         id="tmp-r-06c81141-2c92-452e-aa9d-4342bde8444d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-06c81141-2c92-452e-aa9d-4342bde8444d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-679e4a58-7104-4c60-9a0e-54f060ec5d42">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-679e4a58-7104-4c60-9a0e-54f060ec5d42)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-621b0948-26ec-4fd3-95bb-82d4cd6cdf50">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-621b0948-26ec-4fd3-95bb-82d4cd6cdf50)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])]"
         id="tmp-r-e16909d1-578e-4cd6-bf2e-a036febf84a9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e16909d1-578e-4cd6-bf2e-a036febf84a9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])]"
         id="tmp-r-0a3f551d-cef3-4659-85bf-261c00d96df6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0a3f551d-cef3-4659-85bf-261c00d96df6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4053']|self::hl7:id|self::hl7:code[(@code='37637-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant)]"
         id="tmp-r-b72e11ac-fd76-4d8a-ad24-9e757d566cd8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b72e11ac-fd76-4d8a-ad24-9e757d566cd8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-91b5bc31-6f92-4446-9ca0-ff844c58a7f3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-91b5bc31-6f92-4446-9ca0-ff844c58a7f3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-e6dc0b06-bd3b-4aa8-a833-2296aef70f6f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e6dc0b06-bd3b-4aa8-a833-2296aef70f6f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])]"
         id="tmp-r-e66fb373-3ced-4b57-974f-714214e62750">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e66fb373-3ced-4b57-974f-714214e62750)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'])]"
         id="tmp-r-331e05fa-fbf6-487e-891c-b31755dee129">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-331e05fa-fbf6-487e-891c-b31755dee129)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4054']|self::hl7:id|self::hl7:code[(@code='43468-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant)]"
         id="tmp-r-aedc306e-c015-4b96-ac3e-5ae331456f74">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-aedc306e-c015-4b96-ac3e-5ae331456f74)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-10a70b46-aa83-4d12-bd63-02a3f7c9f7bf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-10a70b46-aa83-4d12-bd63-02a3f7c9f7bf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-6c9ff11f-6342-4719-805e-18a7ba2d0665">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6c9ff11f-6342-4719-805e-18a7ba2d0665)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])]"
         id="tmp-r-b8e86d4c-aea8-4148-bf4c-9f9f259e6859">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b8e86d4c-aea8-4148-bf4c-9f9f259e6859)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])]"
         id="tmp-r-b46c6bfd-67a3-410b-bc16-2b7af521d5f9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b46c6bfd-67a3-410b-bc16-2b7af521d5f9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4055']|self::hl7:id|self::hl7:code[(@code='24725-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant)]"
         id="tmp-r-39569b23-b080-4848-921b-caf4f3a2af56">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-39569b23-b080-4848-921b-caf4f3a2af56)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c82139e3-7037-4c9a-96b0-6b72b52837c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c82139e3-7037-4c9a-96b0-6b72b52837c1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-57cfa909-c35a-405d-a968-5b1aad844575">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-57cfa909-c35a-405d-a968-5b1aad844575)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])]"
         id="tmp-r-b86eea7d-31e9-4fae-b64a-4d0c195b7159">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b86eea7d-31e9-4fae-b64a-4d0c195b7159)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])]"
         id="tmp-r-c6a6e68d-65a3-4c47-8a7e-f36e77214ae5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c6a6e68d-65a3-4c47-8a7e-f36e77214ae5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4056']|self::hl7:id|self::hl7:code[(@code='46305-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant)]"
         id="tmp-r-391d99a1-437b-4675-a258-b55966f3267f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-391d99a1-437b-4675-a258-b55966f3267f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-2ce94f1c-5e82-4423-a8e1-a883cf9a6b97">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2ce94f1c-5e82-4423-a8e1-a883cf9a6b97)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-83c29f8f-a5c8-462b-b8fd-9612db699222">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-83c29f8f-a5c8-462b-b8fd-9612db699222)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant/hl7:participantRole/*[not(self::hl7:code[(@code='ER' and @codeSystem='2.16.840.1.113883.5.111')])]"
         id="tmp-r-2ae3ec82-4237-457e-8cea-3822eedbe3f4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2ae3ec82-4237-457e-8cea-3822eedbe3f4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])]"
         id="tmp-r-c168a658-b06c-4741-a0c9-8b1c53ab31f2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c168a658-b06c-4741-a0c9-8b1c53ab31f2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4057']|self::hl7:id|self::hl7:code[(@code='26436-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-0a2d1a86-eaaa-45a9-9fb4-805f89f5eb23">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0a2d1a86-eaaa-45a9-9fb4-805f89f5eb23)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-406c8870-7c8a-47d1-b055-242fce149508">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-406c8870-7c8a-47d1-b055-242fce149508)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])]"
         id="tmp-r-f04b234c-8f9d-434a-918f-b5c7cc62ed5f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f04b234c-8f9d-434a-918f-b5c7cc62ed5f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4058']|self::hl7:id|self::hl7:code[(@code='25056-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-d343f7d0-aff7-4c54-884b-97284ca57fcc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d343f7d0-aff7-4c54-884b-97284ca57fcc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-a1ebd089-380c-4224-a762-27061878bae6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a1ebd089-380c-4224-a762-27061878bae6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])]"
         id="tmp-r-faca8ba0-8dba-44ac-9184-793e4d3f2f02">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-faca8ba0-8dba-44ac-9184-793e4d3f2f02)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4059']|self::hl7:id|self::hl7:code[(@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-1b3fbbd8-f7f1-42aa-a64f-75708116ac8e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1b3fbbd8-f7f1-42aa-a64f-75708116ac8e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-f86cfb41-622d-4e8d-8c8d-5a663426bfa5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f86cfb41-622d-4e8d-8c8d-5a663426bfa5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])]"
         id="tmp-r-fc898772-3875-40a6-84bd-c0d95c7041a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fc898772-3875-40a6-84bd-c0d95c7041a8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4060']|self::hl7:id|self::hl7:code[(@code='50556-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-e5aee51b-b4cf-4288-91c6-1ea09cc7f8c5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e5aee51b-b4cf-4288-91c6-1ea09cc7f8c5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-70ef9805-ef72-49c5-ac78-65d525a7cd2b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-70ef9805-ef72-49c5-ac78-65d525a7cd2b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'])]"
         id="tmp-r-e6965419-9c71-486f-9b0f-bf0919603570">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e6965419-9c71-486f-9b0f-bf0919603570)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4061']|self::hl7:id|self::hl7:code[(@code='34534-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-ace65ad1-652b-4793-a9f3-93f8a991dea1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ace65ad1-652b-4793-a9f3-93f8a991dea1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-182ce632-0cce-4eb1-a32f-a6ccbfe42ceb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-182ce632-0cce-4eb1-a32f-a6ccbfe42ceb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])]"
         id="tmp-r-cac3d295-75df-4409-b49b-929d1c19fc7f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cac3d295-75df-4409-b49b-929d1c19fc7f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4062']|self::hl7:id|self::hl7:code[(@code='25061-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-3063c8fb-d58a-43ae-8123-93ef7bc2f5df">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3063c8fb-d58a-43ae-8123-93ef7bc2f5df)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-be667471-370d-4e51-9b6a-a6671e62dd4b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-be667471-370d-4e51-9b6a-a6671e62dd4b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])]"
         id="tmp-r-b597f624-395f-4a48-8f84-2871683f9dbb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b597f624-395f-4a48-8f84-2871683f9dbb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4063']|self::hl7:id|self::hl7:code[(@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-8774e4ea-91d3-464e-888c-1ebaccf4cf53">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8774e4ea-91d3-464e-888c-1ebaccf4cf53)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-7e7cfb3b-1f0d-4402-800f-23c6c130967c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7e7cfb3b-1f0d-4402-800f-23c6c130967c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'])]"
         id="tmp-r-ddcf6b68-2560-497f-8308-a73513b38ed0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ddcf6b68-2560-497f-8308-a73513b38ed0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4064']|self::hl7:id|self::hl7:code[(@code='42148-7' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-99055e5b-5c32-47b1-b06c-7c7b61948da7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-99055e5b-5c32-47b1-b06c-7c7b61948da7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-85274feb-ed28-4ffa-9954-9938c16f2d8a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-85274feb-ed28-4ffa-9954-9938c16f2d8a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051'])]"
         id="tmp-r-04a847d7-b92c-4f6b-b86e-7ba6aa44fd08">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-04a847d7-b92c-4f6b-b86e-7ba6aa44fd08)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3051']|self::hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']])]"
         id="tmp-r-7b6573b3-8674-4d26-a5ec-2c5c312bbb8b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7b6573b3-8674-4d26-a5ec-2c5c312bbb8b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065'])]"
         id="tmp-r-9b3e4fce-62a0-41c4-9aa1-b01cb645d562">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9b3e4fce-62a0-41c4-9aa1-b01cb645d562)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4065']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']])]"
         id="tmp-r-e35118c8-cfac-4546-aa9e-1b2c46754668">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e35118c8-cfac-4546-aa9e-1b2c46754668)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-ae8b90df-2f51-4cb6-9c57-054c96172d43">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ae8b90df-2f51-4cb6-9c57-054c96172d43)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066'])]"
         id="tmp-r-9cd79a87-06d8-44df-a619-a1e5e9bd6944">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9cd79a87-06d8-44df-a619-a1e5e9bd6944)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4066']|self::hl7:id|self::hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:value[(@code='OINT' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:participant)]"
         id="tmp-r-16e49279-7d93-4397-997a-45caaa4ce9a3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-16e49279-7d93-4397-997a-45caaa4ce9a3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-114373b4-ffab-4e37-8814-49c6fa45f672">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-114373b4-ffab-4e37-8814-49c6fa45f672)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/*[not(self::hl7:participantRole)]"
         id="tmp-r-0cc3a8ab-0516-4ced-813b-c5960eb64dc9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0cc3a8ab-0516-4ced-813b-c5960eb64dc9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole/*[not(self::hl7:playingEntity)]"
         id="tmp-r-536d9727-3e18-4c76-a143-7acf3d0f475e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-536d9727-3e18-4c76-a143-7acf3d0f475e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole/hl7:playingEntity/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-cb53ce10-718c-4781-a613-1cc6d47cdec2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cb53ce10-718c-4781-a613-1cc6d47cdec2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054'])]"
         id="tmp-r-33d6ec10-2826-4760-a086-79ce985a00da">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-33d6ec10-2826-4760-a086-79ce985a00da)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3054']|self::hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']])]"
         id="tmp-r-3aedbd8d-4da0-402c-8dfe-f9437a86fb46">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3aedbd8d-4da0-402c-8dfe-f9437a86fb46)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/*[not(self::hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])]"
         id="tmp-r-705c9475-b322-4928-8bce-1c103dfa24da">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-705c9475-b322-4928-8bce-1c103dfa24da)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4068']|self::hl7:id|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']])]"
         id="tmp-r-bc4905a5-ffe5-412f-ab36-b1f6c53d0dc8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bc4905a5-ffe5-412f-ab36-b1f6c53d0dc8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c2ab8c09-82d6-48d6-be0f-137d3f726a0f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c2ab8c09-82d6-48d6-be0f-137d3f726a0f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069'])]"
         id="tmp-r-81e1cfa2-9a1e-4604-bdd2-7e9ed6730e6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-81e1cfa2-9a1e-4604-bdd2-7e9ed6730e6a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4069']|self::hl7:id|self::hl7:code[(@code='44100-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-f21fb552-1048-4881-a9f0-2de59637dda5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f21fb552-1048-4881-a9f0-2de59637dda5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055'])]"
         id="tmp-r-a674afbd-1bbb-480a-ba42-f64d297299eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a674afbd-1bbb-480a-ba42-f64d297299eb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3055']|self::hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']])]"
         id="tmp-r-dc2b7784-9c72-4766-aca4-8ed106d3f903">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dc2b7784-9c72-4766-aca4-8ed106d3f903)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048'])]"
         id="tmp-r-ce59c19e-9b0f-4bf5-bb7e-7bc63d8a92cb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ce59c19e-9b0f-4bf5-bb7e-7bc63d8a92cb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4048']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']])]"
         id="tmp-r-a3900790-f7da-4cbe-8287-e09eaac31757">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a3900790-f7da-4cbe-8287-e09eaac31757)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-1c26efe6-46fb-433a-845d-c27dd696128d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1c26efe6-46fb-433a-845d-c27dd696128d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/*[not(self::hl7:sequenceNumber|self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])]"
         id="tmp-r-a3d8f144-caa7-4140-b67e-070eda70c0b1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a3d8f144-caa7-4140-b67e-070eda70c0b1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4049']|self::hl7:id|self::hl7:code[(@code='DX' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-910287c3-f8d0-409a-9e1e-5eb422c2e7a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-910287c3-f8d0-409a-9e1e-5eb422c2e7a2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-57a018e4-11d9-44eb-b3fa-9decc16f3d8d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-57a018e4-11d9-44eb-b3fa-9decc16f3d8d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-6859f12a-7677-4f0c-9f8a-e3e56ad4b309">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6859f12a-7677-4f0c-9f8a-e3e56ad4b309)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049'])]"
         id="tmp-r-bb515fc9-a922-4cc6-bca9-baf511766ed1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bb515fc9-a922-4cc6-bca9-baf511766ed1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3049']|self::hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']])]"
         id="tmp-r-07e3c0e1-ebad-4856-adff-c9d93da058e9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-07e3c0e1-ebad-4856-adff-c9d93da058e9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])]"
         id="tmp-r-9e856d06-8b9a-484b-82b9-f1201bc74e41">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9e856d06-8b9a-484b-82b9-f1201bc74e41)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4042']|self::hl7:id|self::hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value|self::hl7:value)]"
         id="tmp-r-f40aac8b-bac3-4c28-a583-6ed1947e9dab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f40aac8b-bac3-4c28-a583-6ed1947e9dab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c5074acd-b0db-4bc5-b6e7-cdbd62b17005">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c5074acd-b0db-4bc5-b6e7-cdbd62b17005)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-a71d146f-459f-4462-b0aa-b6d93b9b72ad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a71d146f-459f-4462-b0aa-b6d93b9b72ad)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056'])]"
         id="tmp-r-8a02a5e3-df09-441f-9191-155d379db11f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8a02a5e3-df09-441f-9191-155d379db11f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3056']|self::hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']])]"
         id="tmp-r-3f8c6b6e-52da-4ad8-a51f-dcdd8fc3d172">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3f8c6b6e-52da-4ad8-a51f-dcdd8fc3d172)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])]"
         id="tmp-r-caef4f7d-3182-4849-8b50-0030e59b0c3f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-caef4f7d-3182-4849-8b50-0030e59b0c3f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4067']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text)]"
         id="tmp-r-93cd3785-bbcc-408d-9198-06e397ed3c13">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-93cd3785-bbcc-408d-9198-06e397ed3c13)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e0664a2e-a687-42ef-9a7a-e94dfc557ea3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e0664a2e-a687-42ef-9a7a-e94dfc557ea3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057'])]"
         id="tmp-r-892fac41-fa0b-4077-b795-1ecc628c44cd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-892fac41-fa0b-4077-b795-1ecc628c44cd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3057']|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])]"
         id="tmp-r-60c2056e-52c9-407f-ac49-5f3025ac6c6b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-60c2056e-52c9-407f-ac49-5f3025ac6c6b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070'])]"
         id="tmp-r-9383f733-296d-4c00-b736-99e391b4e4f5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9383f733-296d-4c00-b736-99e391b4e4f5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4070']|self::hl7:id|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']])]"
         id="tmp-r-73dfe330-996c-401d-b185-8b8699186528">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-73dfe330-996c-401d-b185-8b8699186528)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-01d72261-ed95-40de-8b1c-b75699a99ddd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-01d72261-ed95-40de-8b1c-b75699a99ddd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/*[not(self::hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'])]"
         id="tmp-r-f6742352-2e55-477a-8c95-ce77ced6e61c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f6742352-2e55-477a-8c95-ce77ced6e61c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4071']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text)]"
         id="tmp-r-b6d04c46-ca56-449d-a3df-71f9b7815f3c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b6d04c46-ca56-449d-a3df-71f9b7815f3c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c8f59a05-5e06-401e-8c0c-fc9ffefce5f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c8f59a05-5e06-401e-8c0c-fc9ffefce5f7)</assert>
   </rule>
</pattern>
