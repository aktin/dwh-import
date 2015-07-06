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
         id="tmp-r-b3be5e91-d2eb-4942-8e7e-7bce67241a95">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&gt;=1 and not(hl7:realmCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&gt;=1 and not(hl7:typeId[@root='2.16.840.1.113883.1.3']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.1015']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:title)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&gt;=1 and not(hl7:languageCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&gt;=1 and not(hl7:setId/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:setId ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:setId kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&gt;=1 and not(hl7:versionNumber/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&gt;=1 and not(hl7:recordTarget/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:author)&gt;=1 and not(hl7:author/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:author ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&gt;=1 and not(hl7:custodian/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:custodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:custodian kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&gt;=1 and not(hl7:documentationOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&gt;=1 and not(hl7:componentOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90002
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode"
         id="tmp-r-389129b1-010f-4032-b5e2-ba3dc5310bdc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArealmCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="@code">(CDArealmCode): Attribut @code MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or (string-length(@code)&gt;0 and not(matches(@code,'\s')))">(CDArealmCode): Attribute @code MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@code,' ') return if ($code=('DE')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or count($theAttValue) = count($theAttCheck)">(CDArealmCode): Der Wert von code MUSS 'Code DE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90003
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']"
         id="tmp-r-07de0026-489b-4c8e-86cd-45169e393e16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtypeId): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@extension)=('POCD_HD000040')">(CDAtypeId): Der Wert von @extension MUSS 'POCD_HD000040' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.1.3')">(CDAtypeId): Der Wert von @root MUSS '2.16.840.1.113883.1.3' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']"
         id="tmp-r-d282b967-d493-4175-b648-98aba24ac485">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.1015')">(EmergencymedicineNoteCDAdocument): Der Wert von @root MUSS '1.2.276.0.76.10.1015' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90004
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id"
         id="tmp-r-414e8549-3afd-42bf-a98e-bb3a635eb835">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90004-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-b7625bd0-d5ed-40b6-87ab-0303ca51870b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="@nullFlavor or (@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')">(EmergencymedicineNoteCDAdocument): Der Elementinhalt MUSS einer von 'code '34878-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title"
         id="tmp-r-d645c84a-06eb-4e6c-aa1e-b18f73d76643">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90005-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90006
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime"
         id="tmp-r-8f73ddf4-ccfb-4460-95f3-b95bb7845228">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90006-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAeffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90007
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-f481432b-f755-4930-89be-9c10541f2517">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAconfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAconfidentialityCode): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAconfidentialityCode): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90008
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode"
         id="tmp-r-f897213c-957c-4d11-8277-94ca2358febc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90008-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS.LANG"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId"
         id="tmp-r-bec6fa59-ddc0-4d66-9b0a-ee1614bed3c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber"
         id="tmp-r-10ed23ef-9781-40a7-9b35-261e5cf12aee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="INT.NONNEG"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1))">(CDAsetIdversionNumber): value MUSS im Bereich [1..] liegen  </assert>
      <let name="digitok" value="matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="$digitok or @nullFlavor">(CDAsetIdversionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget"
         id="tmp-r-f0a747ba-4871-4de1-91c6-5fb0b7ef0660">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@typeCode)=('RCT') or not(@typeCode)">(CDArecordTargetnnar): Der Wert von @typeCode MUSS 'RCT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@contextControlCode)=('OP') or not(@contextControlCode)">(CDArecordTargetnnar): Der Wert von @contextControlCode MUSS 'OP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&lt;=1">(CDArecordTargetnnar): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole"
         id="tmp-r-365c40b6-75ee-4d45-a9c8-dc9d7c93245b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PAT') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDArecordTargetnnar): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDArecordTargetnnar): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDArecordTargetnnar): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patient ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&lt;=1">(CDArecordTargetnnar): Element hl7:patient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90024
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id
Item: (PatientIdentifier)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id"
         id="tmp-r-c2b21559-e64d-4b47-a49b-a3367c355c3a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientIdentifier): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="@extension">(PatientIdentifier): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr"
         id="tmp-r-9c022061-4100-4453-a954-36f9cf544b3f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom"
         id="tmp-r-e9cb32cf-0711-45a8-97db-0debf9192c93">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient"
         id="tmp-r-ba607f3f-29ff-4e9d-b4ca-6694ec423a16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDArecordTargetnnar): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 ">(CDArecordTargetnnar): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&gt;=1 ">(CDArecordTargetnnar): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&lt;=1">(CDArecordTargetnnar): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name"
         id="tmp-r-72559d78-0a86-4de4-aa14-f7892612ec91">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-3a9c4804-b5ea-4f07-941a-008b887128aa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDArecordTargetnnar): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.1 AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDArecordTargetnnar): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.1 AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime"
         id="tmp-r-80fddf49-4b4e-48c0-a756-b71409b1573b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author"
         id="tmp-r-e33e5837-1476-4859-be5e-233eeec52dbc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@typeCode)=('AUT') or not(@typeCode)">(CDAauthor): Der Wert von @typeCode MUSS 'AUT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 and not(hl7:time/@nullFlavor)">(CDAauthor): Element hl7:time ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDAauthor): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&gt;=1 and not(hl7:assignedAuthor/@nullFlavor)">(CDAauthor): Element hl7:assignedAuthor ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&lt;=1">(CDAauthor): Element hl7:assignedAuthor kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time"
         id="tmp-r-402643fc-8d97-47d3-a3dd-45cfc488219d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor"
         id="tmp-r-1e295d96-b268-4522-b317-e8486c99797f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDAauthor): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDAauthor): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedPerson)&lt;=1">(CDAauthor): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:representedOrganization)&lt;=1">(CDAauthor): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id"
         id="tmp-r-3173f393-4271-436a-9cde-ea1ee0d1b325">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson"
         id="tmp-r-9e3b8f0b-96df-494f-8651-9f890693d7ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name"
         id="tmp-r-2423bd2e-092b-419d-ade7-08a550f38093">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization"
         id="tmp-r-1f3f7d6f-2346-4ae5-938a-909915838e60">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAauthor): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id"
         id="tmp-r-96f98960-9b62-4364-a170-4d3062308f53">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="tmp-r-f9b5c253-62e5-4cc2-8816-e048b8054c5b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom"
         id="tmp-r-bc3243ef-6392-4a48-8608-e021a40b8e9b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="tmp-r-e59cc4dd-dc1b-475e-a863-16999cc8dcc0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian"
         id="tmp-r-8eb77c58-76e6-4cbb-8db0-539a79363e17">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@typeCode)=('CST') or not(@typeCode)">(CDAcustodian): Der Wert von @typeCode MUSS 'CST' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&gt;=1 and not(hl7:assignedCustodian/@nullFlavor)">(CDAcustodian): Element hl7:assignedCustodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&lt;=1">(CDAcustodian): Element hl7:assignedCustodian kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian"
         id="tmp-r-a39780bf-7017-46b2-ada8-ac79e80d52bf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:representedCustodianOrganization)&lt;=1">(CDAcustodian): Element hl7:representedCustodianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization"
         id="tmp-r-564ea9a2-63eb-4689-9bc0-af3e64061602">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAcustodian): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAcustodian): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAcustodian): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAcustodian): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id"
         id="tmp-r-513e733e-5303-4967-9a75-199e3e53dc37">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name"
         id="tmp-r-10d4a0f4-a235-4ef5-b9f4-75061b68b600">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom"
         id="tmp-r-df56d7af-094c-4fd1-8c5f-1b8083e1e683">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr"
         id="tmp-r-510ac6e2-475c-4235-8db0-09d900c5eb5c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf"
         id="tmp-r-3ff290d2-8b59-42d8-8340-e293cbf943b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('DOC')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'DOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&gt;=1 ">(CDADocumentationOf): Element hl7:serviceEvent ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&lt;=1">(CDADocumentationOf): Element hl7:serviceEvent kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent"
         id="tmp-r-19c4988a-2777-4e44-b932-ee35af0b2b10">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ACT')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@moodCode)=('EVN')">(CDADocumentationOf): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDADocumentationOf): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDADocumentationOf): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&gt;=1 and not(hl7:performer/@nullFlavor)">(CDADocumentationOf): Element hl7:performer ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&lt;=1">(CDADocumentationOf): Element hl7:performer kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime"
         id="tmp-r-ee2a7781-4753-4b5f-9726-af01083dcbd4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&gt;=1 and not(cda:low/@nullFlavor)">(CDADocumentationOf): Element cda:low ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&lt;=1">(CDADocumentationOf): Element cda:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&gt;=1 and not(cda:high/@nullFlavor)">(CDADocumentationOf): Element cda:high ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&lt;=1">(CDADocumentationOf): Element cda:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low"
         id="tmp-r-9882c037-6b7f-45f3-9b4c-3dfc33d0ea41">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high"
         id="tmp-r-686efd5b-3bc4-45c1-b214-7d94a36a878d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer"
         id="tmp-r-0fc9c51c-d103-4173-9cf2-7e66b4765a69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('PRF')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'PRF' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 ">(CDADocumentationOf): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDADocumentationOf): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&gt;=1 and not(hl7:assignedEntity/@nullFlavor)">(CDADocumentationOf): Element hl7:assignedEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&lt;=1">(CDADocumentationOf): Element hl7:assignedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time"
         id="tmp-r-2aa7d7b5-ce4c-44a2-92d4-6c100fbc53f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDADocumentationOf): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&lt;=1">(CDADocumentationOf): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&gt;=1 ">(CDADocumentationOf): Element hl7:high ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&lt;=1">(CDADocumentationOf): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low"
         id="tmp-r-d2147726-7d98-4269-b92d-dfadf3badd75">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high"
         id="tmp-r-61fdcfb5-a393-4908-b6da-0c81b12fe36a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity"
         id="tmp-r-04d26298-d81a-4948-bd68-2fb1dec8f17b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDADocumentationOf): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDADocumentationOf): Element hl7:id kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id"
         id="tmp-r-10c1abcc-789f-446f-a699-e92e0e963e8f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@nullFlavor)=('NA')">(CDADocumentationOf): Der Wert von @nullFlavor MUSS 'NA' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf"
         id="tmp-r-15e1e779-5468-4886-a0f2-e25bf9a34311">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(CDAEncompassingEncounter): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:encompassingEncounter ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&lt;=1">(CDAEncompassingEncounter): Element hl7:encompassingEncounter kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter"
         id="tmp-r-7395ea9b-d731-4d6d-869d-482735c9badd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@classCode)=('ENC') or not(@classCode)">(CDAEncompassingEncounter): Der Wert von @classCode MUSS 'ENC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(CDAEncompassingEncounter): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDAEncompassingEncounter): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDAEncompassingEncounter): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:dischargeDispositionCode)&lt;=1">(CDAEncompassingEncounter): Element hl7:dischargeDispositionCode kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime"
         id="tmp-r-2a208140-d295-48c3-b27a-f800b35fc045">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&lt;=1">(CDAEncompassingEncounter): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:high)&lt;=1">(CDAEncompassingEncounter): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low"
         id="tmp-r-9119b3b2-afd0-4492-8010-4fb03f11e940">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high"
         id="tmp-r-cc770a4b-6ce3-4432-9d61-8b1132d4394c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode"
         id="tmp-r-ba8a9620-ae88-43b4-a1a2-c987038aec89">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAEncompassingEncounter): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAEncompassingEncounter): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient"
         id="tmp-r-bb4eb862-75a7-4ad3-a7b7-42a6cd5f02ec">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="@typeCode">(HeaderInformationRecipient): Attribut @typeCode MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(HeaderInformationRecipient): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@typeCode,' ') return if ($code=('PRCP','TRC')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or count($theAttValue) = count($theAttCheck)">(HeaderInformationRecipient): Der Wert von typeCode MUSS 'Code PRCP oder Code TRC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&gt;=1 and not(hl7:intendedRecipient/@nullFlavor)">(HeaderInformationRecipient): Element hl7:intendedRecipient ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:intendedRecipient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient"
         id="tmp-r-fddd3e03-5176-44ef-aee8-b81a2a4361f3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:id)&gt;=1 ">(HeaderInformationRecipient): Element hl7:id ist required [min 1x].</assert>
      <let name="elmcount"
           value="count(hl7:informationRecipient|hl7:receivedOrganization)"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="$elmcount&gt;=1">(HeaderInformationRecipient): Auswahl (hl7:informationRecipient oder hl7:receivedOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:informationRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:informationRecipient kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:receivedOrganization)&lt;=1">(HeaderInformationRecipient): Element hl7:receivedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id"
         id="tmp-r-8cf03aff-19de-4cd9-bb96-9be45acfa0b3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient"
         id="tmp-r-2abe3c6b-95e0-4c7c-a52d-fe53e966aebb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name"
         id="tmp-r-a100f54e-a808-492c-8dba-6acaf7547383">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization"
         id="tmp-r-a99184db-3916-4018-af47-f0193eecdb4d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderInformationRecipient): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id"
         id="tmp-r-5fb50e61-d1e0-48c3-81e3-0782239ea38d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name"
         id="tmp-r-48db6419-9437-4af7-ac77-beeabd9512a9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom"
         id="tmp-r-67247b43-5106-4273-bc37-eb7fbeb52769">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr"
         id="tmp-r-8f68dbe3-c0ec-4845-9c97-6401dd085ece">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component"
         id="tmp-r-a3828f89-cf9d-40c3-9c26-714e719ed970">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody"
         id="tmp-r-dea4acea-143f-4053-957a-58ec110ede18">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@classCode)=('DOCBODY') or not(@classCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @classCode MUSS 'DOCBODY' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015'])]"
         id="tmp-r-b1727d21-4396-4512-a800-d57cbfd50026">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b1727d21-4396-4512-a800-d57cbfd50026)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/*[not(self::hl7:realmCode|self::hl7:typeId[@root='2.16.840.1.113883.1.3']|self::hl7:templateId[@root='1.2.276.0.76.10.1015']|self::hl7:id|self::hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:effectiveTime|self::hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:languageCode|self::hl7:setId|self::hl7:versionNumber|self::hl7:recordTarget|self::hl7:author|self::hl7:custodian|self::hl7:documentationOf|self::hl7:componentOf|self::hl7:informationRecipient|self::hl7:component)]"
         id="tmp-r-bd41cb95-7515-4e10-aeeb-ee257473fe78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bd41cb95-7515-4e10-aeeb-ee257473fe78)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/*[not(self::hl7:patientRole)]"
         id="tmp-r-72bedfb4-d6f1-4a83-8a5e-075a0dabc6d9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-72bedfb4-d6f1-4a83-8a5e-075a0dabc6d9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/*[not(self::hl7:id|self::hl7:addr|self::hl7:telecom|self::hl7:patient)]"
         id="tmp-r-8c2a7838-92c2-4bab-95d8-68e8299e7e80">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8c2a7838-92c2-4bab-95d8-68e8299e7e80)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/*[not(self::hl7:name|self::hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:birthTime)]"
         id="tmp-r-881e00f9-144d-4fd2-bdb6-ee9b5968bc94">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-881e00f9-144d-4fd2-bdb6-ee9b5968bc94)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/*[not(self::hl7:time|self::hl7:assignedAuthor)]"
         id="tmp-r-9be74458-6840-4464-8680-7ad0f35f8015">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9be74458-6840-4464-8680-7ad0f35f8015)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/*[not(self::hl7:id|self::hl7:assignedPerson|self::hl7:representedOrganization)]"
         id="tmp-r-7cbb571f-be7d-4bca-9c27-b1ece50273c0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7cbb571f-be7d-4bca-9c27-b1ece50273c0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/*[not(self::hl7:name)]"
         id="tmp-r-a0379ebd-49b3-4b3c-9ff1-e9b1dd973429">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a0379ebd-49b3-4b3c-9ff1-e9b1dd973429)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-436839f7-f3a9-4ef1-993f-b2ea0c8d14a1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-436839f7-f3a9-4ef1-993f-b2ea0c8d14a1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/*[not(self::hl7:assignedCustodian)]"
         id="tmp-r-8db3a6f4-0273-4cda-ae87-0564b95b9411">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8db3a6f4-0273-4cda-ae87-0564b95b9411)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/*[not(self::hl7:representedCustodianOrganization)]"
         id="tmp-r-15e9b854-14d7-47b7-88d6-99e25d76276c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-15e9b854-14d7-47b7-88d6-99e25d76276c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-6fdb015a-712b-42f5-bea0-da85815b4faf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6fdb015a-712b-42f5-bea0-da85815b4faf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/*[not(self::hl7:serviceEvent)]"
         id="tmp-r-5b1d5836-18c3-4910-b419-0b17264151c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5b1d5836-18c3-4910-b419-0b17264151c1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/*[not(self::hl7:effectiveTime|self::hl7:performer)]"
         id="tmp-r-9641d91c-5376-4ac9-98b6-bb0f2971867e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9641d91c-5376-4ac9-98b6-bb0f2971867e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/*[not(self::cda:low|self::cda:high)]"
         id="tmp-r-4c800cb2-b0a5-4fb7-9308-bfd71c17272a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4c800cb2-b0a5-4fb7-9308-bfd71c17272a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/*[not(self::hl7:time|self::hl7:assignedEntity)]"
         id="tmp-r-116ce49a-24b7-46fb-acf0-629378d7a2e9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-116ce49a-24b7-46fb-acf0-629378d7a2e9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-08afcb97-8f6b-4385-a825-7c1f7a45444b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-08afcb97-8f6b-4385-a825-7c1f7a45444b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/*[not(self::hl7:id)]"
         id="tmp-r-0b1d1e94-a74c-4d49-beb8-06d8275840d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0b1d1e94-a74c-4d49-beb8-06d8275840d6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/*[not(self::hl7:encompassingEncounter)]"
         id="tmp-r-71b0f951-5fc2-4505-993e-09d0f2c2e7f5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-71b0f951-5fc2-4505-993e-09d0f2c2e7f5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/*[not(self::hl7:effectiveTime|self::hl7:dischargeDispositionCode)]"
         id="tmp-r-6b17bccf-5dc5-4f42-9367-266f1cf6c7ae">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6b17bccf-5dc5-4f42-9367-266f1cf6c7ae)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-4614a1fb-8ad5-4aa2-bfd8-be45792571f0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4614a1fb-8ad5-4aa2-bfd8-be45792571f0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/*[not(self::hl7:intendedRecipient)]"
         id="tmp-r-04933885-9d82-4789-aa29-006bd3e4c802">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-04933885-9d82-4789-aa29-006bd3e4c802)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/*[not(self::hl7:id|self::hl7:informationRecipient|self::hl7:receivedOrganization)]"
         id="tmp-r-7628a0ff-19a9-402a-8e15-eafd76e5e010">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7628a0ff-19a9-402a-8e15-eafd76e5e010)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/*[not(self::hl7:name)]"
         id="tmp-r-fce58565-8eb7-429f-817c-4ff97293f2c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fce58565-8eb7-429f-817c-4ff97293f2c7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-b83e9400-0ee5-4361-8cb1-44b7dfff2608">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b83e9400-0ee5-4361-8cb1-44b7dfff2608)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/*[not(self::hl7:structuredBody)]"
         id="tmp-r-2c44674e-b33c-4358-b695-081b2f074f69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c44674e-b33c-4358-b695-081b2f074f69)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/*[not(self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])]"
         id="tmp-r-bd3ac85b-ca3d-407c-be96-e32615806aa7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bd3ac85b-ca3d-407c-be96-e32615806aa7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045'])]"
         id="tmp-r-1aea0d5f-36ac-4799-9d11-7b41816af24f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1aea0d5f-36ac-4799-9d11-7b41816af24f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3045']|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']])]"
         id="tmp-r-961014ff-6544-4ee0-a793-df66c90530c5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-961014ff-6544-4ee0-a793-df66c90530c5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'])]"
         id="tmp-r-19e9e43f-da18-42f9-bc85-bc223e01bc66">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-19e9e43f-da18-42f9-bc85-bc223e01bc66)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4037']|self::hl7:id|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-b7343023-5aa2-47bb-a50d-fd0ef4bccab7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b7343023-5aa2-47bb-a50d-fd0ef4bccab7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-04050c27-630d-409d-9328-1583c68fa286">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-04050c27-630d-409d-9328-1583c68fa286)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime/*[not(self::hl7:high)]"
         id="tmp-r-02243700-67b5-4543-a991-0a93d52daefb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-02243700-67b5-4543-a991-0a93d52daefb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046'])]"
         id="tmp-r-562532a4-7882-462f-a63c-ee99067f5582">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-562532a4-7882-462f-a63c-ee99067f5582)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3046']|self::hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']])]"
         id="tmp-r-cfe7d4f1-f60e-402a-93db-b04921c611ba">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cfe7d4f1-f60e-402a-93db-b04921c611ba)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])]"
         id="tmp-r-3d13864a-c229-461c-a663-7077aead453b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3d13864a-c229-461c-a663-7077aead453b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4038']|self::hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-e1cb27b6-e6ca-402b-8725-505e2df8d230">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e1cb27b6-e6ca-402b-8725-505e2df8d230)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-58c1ab46-3368-4164-834c-f4d534756707">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-58c1ab46-3368-4164-834c-f4d534756707)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-3f56d48c-fd5c-4805-a721-5cf6b4b6f0e3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3f56d48c-fd5c-4805-a721-5cf6b4b6f0e3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-1a54a012-7231-4bc1-be82-4a519063481c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1a54a012-7231-4bc1-be82-4a519063481c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053'])]"
         id="tmp-r-66c5d26a-f00d-4e9d-98cd-f2bb683ff031">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-66c5d26a-f00d-4e9d-98cd-f2bb683ff031)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3053']|self::hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-32714275-0cda-4a0b-8bec-0da486a1fa1a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-32714275-0cda-4a0b-8bec-0da486a1fa1a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048'])]"
         id="tmp-r-6864a6ee-2634-4ce6-b337-2cc28c0afa5d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6864a6ee-2634-4ce6-b337-2cc28c0afa5d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3048']|self::hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']])]"
         id="tmp-r-5bb1f2a0-bc5c-477e-bebe-5f38abcc12ce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5bb1f2a0-bc5c-477e-bebe-5f38abcc12ce)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039'])]"
         id="tmp-r-1fd89669-7647-4e2e-bd9a-883d3147b03f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1fd89669-7647-4e2e-bd9a-883d3147b03f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4039']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']])]"
         id="tmp-r-5d8cb0da-5528-4373-bebe-175e407acacd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5d8cb0da-5528-4373-bebe-175e407acacd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-c41c22d6-8911-4d3f-9477-456666ed5c6b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c41c22d6-8911-4d3f-9477-456666ed5c6b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])]"
         id="tmp-r-b7ef8fd8-fe88-4f9a-be2b-effac6b3e938">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b7ef8fd8-fe88-4f9a-be2b-effac6b3e938)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4040']|self::hl7:id|self::hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-4667d90f-0ca6-43b2-b0c9-c3bbece00c9f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4667d90f-0ca6-43b2-b0c9-c3bbece00c9f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-a6b455be-ba06-4254-b20a-a633a1c8d692">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a6b455be-ba06-4254-b20a-a633a1c8d692)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-16315aab-b10e-4e02-ab13-7bc0bf74c1ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-16315aab-b10e-4e02-ab13-7bc0bf74c1ef)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047'])]"
         id="tmp-r-2cce22eb-a00e-4377-8b4e-18dd180db1c5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2cce22eb-a00e-4377-8b4e-18dd180db1c5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3047']|self::hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]|self::hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']])]"
         id="tmp-r-9cd529a8-fce7-4a68-a0e2-67149cb50b59">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9cd529a8-fce7-4a68-a0e2-67149cb50b59)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'])]"
         id="tmp-r-c78bbaff-23f8-4ef9-bc62-d8b8999165fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c78bbaff-23f8-4ef9-bc62-d8b8999165fd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4043']|self::hl7:id|self::hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-f2f2c1ef-078d-4eef-a98d-d8fad55440c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f2f2c1ef-078d-4eef-a98d-d8fad55440c9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-913b99ae-717f-48cf-a6d5-db3985ece6a3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-913b99ae-717f-48cf-a6d5-db3985ece6a3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/*[not(self::hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])]"
         id="tmp-r-9db6f63c-3dd0-47f8-aabf-a06a970e8f52">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9db6f63c-3dd0-47f8-aabf-a06a970e8f52)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4044']|self::hl7:id|self::hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:consumable)]"
         id="tmp-r-fb3bffd6-e161-4436-9855-c7b13aabf2d2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fb3bffd6-e161-4436-9855-c7b13aabf2d2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-049d3256-4e2d-44f8-8221-0e34a52e5346">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-049d3256-4e2d-44f8-8221-0e34a52e5346)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/*[not(self::hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-7e69ea40-1da6-480a-bd55-3cdc99d4f8a7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7e69ea40-1da6-480a-bd55-3cdc99d4f8a7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-1b57a5ad-c0f2-4356-b6c2-39b1125de5f9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1b57a5ad-c0f2-4356-b6c2-39b1125de5f9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-129b68e5-0be3-4248-8ff6-2483ee042f01">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-129b68e5-0be3-4248-8ff6-2483ee042f01)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])]"
         id="tmp-r-6bc8696a-19ec-4eb4-a28f-f5f36b945b67">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6bc8696a-19ec-4eb4-a28f-f5f36b945b67)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4045']|self::hl7:id|self::hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-43cccbde-3b15-4d0f-ad8f-b1e2dd9d5100">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-43cccbde-3b15-4d0f-ad8f-b1e2dd9d5100)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bd911161-3aa5-49fc-86ea-91cf9398a210">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bd911161-3aa5-49fc-86ea-91cf9398a210)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072'])]"
         id="tmp-r-b0cfb19c-d7de-4937-a7bf-5c5376232b34">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b0cfb19c-d7de-4937-a7bf-5c5376232b34)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4072']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']])]"
         id="tmp-r-149adb5c-7bd8-46f0-90ce-66fe64836aff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-149adb5c-7bd8-46f0-90ce-66fe64836aff)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-64b0b3d1-9763-4c47-8c22-d9ddf1572037">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-64b0b3d1-9763-4c47-8c22-d9ddf1572037)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'])]"
         id="tmp-r-54c0f83d-0f31-45a5-943a-394ff5f363df">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-54c0f83d-0f31-45a5-943a-394ff5f363df)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4073']|self::hl7:id|self::hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-ec9cbc72-a0e2-41bb-9d13-e545091fb2e3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ec9cbc72-a0e2-41bb-9d13-e545091fb2e3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-57c55f18-54cb-4d71-9684-8a1a497ff1d5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-57c55f18-54cb-4d71-9684-8a1a497ff1d5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-7b94fb7b-2667-4f7a-b383-425b4544ea62">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7b94fb7b-2667-4f7a-b383-425b4544ea62)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/*[not(self::hl7:qualifier|self::hl7:qualifier)]"
         id="tmp-r-0c8e7be6-47ab-49fb-8714-126361dcf90a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0c8e7be6-47ab-49fb-8714-126361dcf90a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/*[not(self::hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-7fe33b4b-8c56-4f99-85af-66536fd245fa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7fe33b4b-8c56-4f99-85af-66536fd245fa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier/*[not(self::hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-3b174e2f-153d-4c85-a11a-1528665c0303">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3b174e2f-153d-4c85-a11a-1528665c0303)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044'])]"
         id="tmp-r-1a69d025-7686-4c3a-bc21-68eb9b456a0c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1a69d025-7686-4c3a-bc21-68eb9b456a0c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3044']|self::hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']])]"
         id="tmp-r-8ec0720e-1a9b-4144-94e7-c2d803025f2b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8ec0720e-1a9b-4144-94e7-c2d803025f2b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])]"
         id="tmp-r-8a3320d5-644c-4865-952e-2cde0490d1cf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8a3320d5-644c-4865-952e-2cde0490d1cf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4030']|self::hl7:id|self::hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-c4dc53dc-1c04-4abf-b4c4-442d9103a5f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c4dc53dc-1c04-4abf-b4c4-442d9103a5f7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/*[not(self::hl7:originalText)]"
         id="tmp-r-ca7dc65a-d865-4345-bf7e-1e8aa930c9fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ca7dc65a-d865-4345-bf7e-1e8aa930c9fe)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bfe7a51c-d55c-4985-8b1f-8359fc353b37">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bfe7a51c-d55c-4985-8b1f-8359fc353b37)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'])]"
         id="tmp-r-5d3c1623-2abe-4bd3-bab1-0442db70ef09">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5d3c1623-2abe-4bd3-bab1-0442db70ef09)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4031']|self::hl7:id|self::hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-3c7c54b3-1499-4a7f-841e-3dd4744dc293">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3c7c54b3-1499-4a7f-841e-3dd4744dc293)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-63accd59-21d8-45e3-9275-9b5861c1b467">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-63accd59-21d8-45e3-9275-9b5861c1b467)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])]"
         id="tmp-r-d4b67e96-4e60-416a-98a1-d0b0bcf20002">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d4b67e96-4e60-416a-98a1-d0b0bcf20002)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4032']|self::hl7:id|self::hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-8eb97b22-941c-4784-b977-9fd2de0003fa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8eb97b22-941c-4784-b977-9fd2de0003fa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e9b71b62-759b-42f9-8917-255637a9c7b6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e9b71b62-759b-42f9-8917-255637a9c7b6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])]"
         id="tmp-r-0d3fd65f-1f51-47e5-9898-5482eeed3884">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0d3fd65f-1f51-47e5-9898-5482eeed3884)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4033']|self::hl7:id|self::hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-d7cc2d45-88a7-42ed-9879-504a8b6a9d19">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d7cc2d45-88a7-42ed-9879-504a8b6a9d19)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-122df772-ea3f-444a-9b5b-e290c82b9fdb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-122df772-ea3f-444a-9b5b-e290c82b9fdb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034'])]"
         id="tmp-r-65b27e17-93a0-40a7-9bc6-2e59b38300df">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-65b27e17-93a0-40a7-9bc6-2e59b38300df)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4034']|self::hl7:id|self::hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:text|self::hl7:effectiveTime|self::hl7:value|self::hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]])]"
         id="tmp-r-a3c94419-4b40-4c19-ba03-af0892ed3d6f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a3c94419-4b40-4c19-ba03-af0892ed3d6f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-55b71aed-a6ae-4339-acfd-ca56853b78e9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-55b71aed-a6ae-4339-acfd-ca56853b78e9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-a170b09c-3c2a-40a4-93aa-d63e82f2b0ba">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a170b09c-3c2a-40a4-93aa-d63e82f2b0ba)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-105f339b-2543-449a-a18c-b06dbc54278a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-105f339b-2543-449a-a18c-b06dbc54278a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-d9daafd7-598a-461d-8e26-51c20b02f057">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d9daafd7-598a-461d-8e26-51c20b02f057)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-14c341a6-5d50-4221-918d-5482ee7372f4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-14c341a6-5d50-4221-918d-5482ee7372f4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-6cc39d73-fef4-4b65-a542-87db28d413a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6cc39d73-fef4-4b65-a542-87db28d413a2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-8ea78315-d00e-44ac-83c2-eabefdc399ad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8ea78315-d00e-44ac-83c2-eabefdc399ad)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'])]"
         id="tmp-r-21b637c9-34ee-4a85-97a5-582bc0979b7f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-21b637c9-34ee-4a85-97a5-582bc0979b7f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4046']|self::hl7:id|self::hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-0b2226cd-fe32-4aa0-be71-250257e2cad0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0b2226cd-fe32-4aa0-be71-250257e2cad0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-d00928ae-cc60-4abc-b51d-3b58f593e7f6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d00928ae-cc60-4abc-b51d-3b58f593e7f6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'])]"
         id="tmp-r-6867c8cc-2256-4f34-a35c-9167e49d3931">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6867c8cc-2256-4f34-a35c-9167e49d3931)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4047']|self::hl7:id|self::hl7:code[(@code='271733001' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-cdd70cf4-e55a-4c89-a906-9286fcdf01bc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cdd70cf4-e55a-4c89-a906-9286fcdf01bc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-9d30018c-8927-4c56-b256-107ac3b6d89d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9d30018c-8927-4c56-b256-107ac3b6d89d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])]"
         id="tmp-r-92ecdb43-a47e-4552-8632-4c7e2b11f217">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-92ecdb43-a47e-4552-8632-4c7e2b11f217)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4035']|self::hl7:id|self::hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-2c53e68b-2c10-4104-b3cd-d0c6646a3254">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c53e68b-2c10-4104-b3cd-d0c6646a3254)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c6253587-9603-4045-840b-4d2ec913698d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c6253587-9603-4045-840b-4d2ec913698d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])]"
         id="tmp-r-28ce1fd2-f2be-4cec-9fa4-d2e82d2e3949">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-28ce1fd2-f2be-4cec-9fa4-d2e82d2e3949)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4036']|self::hl7:id|self::hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-9c6d8db4-61ac-4e4e-8538-822408cf066d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9c6d8db4-61ac-4e4e-8538-822408cf066d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-def31039-859a-4ab9-9f32-fe53975c2dc4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-def31039-859a-4ab9-9f32-fe53975c2dc4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050'])]"
         id="tmp-r-0b69c2ca-7211-4479-a41a-0db82d6f05e8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0b69c2ca-7211-4479-a41a-0db82d6f05e8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3050']|self::hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']])]"
         id="tmp-r-a1547a53-d07e-4be7-8d65-18df9fb03379">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a1547a53-d07e-4be7-8d65-18df9fb03379)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])]"
         id="tmp-r-2c20e0e2-236d-4739-9891-066bfdc04c3a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c20e0e2-236d-4739-9891-066bfdc04c3a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4050']|self::hl7:id|self::hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-826996bd-6f5a-4299-9fac-9f08cbf75cde">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-826996bd-6f5a-4299-9fac-9f08cbf75cde)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b1b74b41-3833-4a91-9559-bbe0e0636597">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b1b74b41-3833-4a91-9559-bbe0e0636597)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-4965645a-3dcc-4953-9893-69ec747386fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4965645a-3dcc-4953-9893-69ec747386fe)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-23419eee-55c2-4358-8ec0-ac2251118217">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-23419eee-55c2-4358-8ec0-ac2251118217)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'])]"
         id="tmp-r-04855686-d19a-4f51-b6e9-f6f55e3ee16f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-04855686-d19a-4f51-b6e9-f6f55e3ee16f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4051']|self::hl7:id|self::hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-108a8303-e32e-4ee1-932e-0d23db56a4a7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-108a8303-e32e-4ee1-932e-0d23db56a4a7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-3cfcceba-69d9-4a78-a1f0-80382a732fa9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3cfcceba-69d9-4a78-a1f0-80382a732fa9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-b5b6ad28-725d-4e6e-9f0f-6197360efa12">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b5b6ad28-725d-4e6e-9f0f-6197360efa12)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-54e92a8e-0da7-4190-a1c0-b3e71b363d92">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-54e92a8e-0da7-4190-a1c0-b3e71b363d92)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])]"
         id="tmp-r-5d1208fe-7d16-4ab4-90f9-dbfcc3d98676">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5d1208fe-7d16-4ab4-90f9-dbfcc3d98676)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4052']|self::hl7:id|self::hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-7fbf356c-481d-4ff2-9113-7dbe14269faf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7fbf356c-481d-4ff2-9113-7dbe14269faf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-20d54b03-af3d-4333-9b9d-a79a27581bbb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-20d54b03-af3d-4333-9b9d-a79a27581bbb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-80e1a5d4-08db-4f93-a151-4ae727022c91">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-80e1a5d4-08db-4f93-a151-4ae727022c91)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-3d7bcc60-0a20-4913-899a-285c82e85a4d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3d7bcc60-0a20-4913-899a-285c82e85a4d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])]"
         id="tmp-r-fe1aabd3-5d17-45c0-9d63-644f9d166694">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fe1aabd3-5d17-45c0-9d63-644f9d166694)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4053']|self::hl7:id|self::hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-5ffb814d-8abe-4dd9-994f-2b9d332dce00">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5ffb814d-8abe-4dd9-994f-2b9d332dce00)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-edbc193c-f65e-4ac8-a905-585ee908b30b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-edbc193c-f65e-4ac8-a905-585ee908b30b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-a73d608d-52d3-45e3-9fd4-258025e9307e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a73d608d-52d3-45e3-9fd4-258025e9307e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-f0a00ea3-1954-4528-bb57-3172700e85de">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f0a00ea3-1954-4528-bb57-3172700e85de)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'])]"
         id="tmp-r-c7f3e5f6-170f-41da-a81a-8a145c743f3f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c7f3e5f6-170f-41da-a81a-8a145c743f3f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4054']|self::hl7:id|self::hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-0dc2533b-7395-46e7-bae8-8fa38c53bd4e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0dc2533b-7395-46e7-bae8-8fa38c53bd4e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b6c958fd-ce0b-4d16-a184-bfdb1acb29b2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b6c958fd-ce0b-4d16-a184-bfdb1acb29b2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-1b607a23-93f0-4aeb-ba6a-d6e53fae8fb6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1b607a23-93f0-4aeb-ba6a-d6e53fae8fb6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-34ed5cb7-dfaf-4af4-930e-4288cc17dfc6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-34ed5cb7-dfaf-4af4-930e-4288cc17dfc6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])]"
         id="tmp-r-223e0082-e681-4568-a38d-531bb01c8e84">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-223e0082-e681-4568-a38d-531bb01c8e84)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4055']|self::hl7:id|self::hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-49f2df25-c431-49fc-91ac-848c6d05fc04">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-49f2df25-c431-49fc-91ac-848c6d05fc04)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-4184fcca-0b26-4b39-9621-368a4e6f450a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4184fcca-0b26-4b39-9621-368a4e6f450a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-1e985fc8-b62a-4c40-bc23-7eb6b63d23dc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1e985fc8-b62a-4c40-bc23-7eb6b63d23dc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-5208e924-bf76-4d62-a6d2-e5c9fd0950de">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5208e924-bf76-4d62-a6d2-e5c9fd0950de)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])]"
         id="tmp-r-177a0973-5834-45b1-ab86-a9f94a943380">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-177a0973-5834-45b1-ab86-a9f94a943380)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4056']|self::hl7:id|self::hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-107d8a63-6bf1-4fc8-a08f-9426746c5dd0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-107d8a63-6bf1-4fc8-a08f-9426746c5dd0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-513924af-3903-40ce-ab29-f20a168da38f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-513924af-3903-40ce-ab29-f20a168da38f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-73fb2e07-d0d3-479f-878f-bd346c7f8921">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-73fb2e07-d0d3-479f-878f-bd346c7f8921)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-3d992185-5ab3-45b5-84c4-c70a8814e3fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3d992185-5ab3-45b5-84c4-c70a8814e3fd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])]"
         id="tmp-r-16706bba-fe4d-4f8c-9e00-ccae4db3c0d4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-16706bba-fe4d-4f8c-9e00-ccae4db3c0d4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4057']|self::hl7:id|self::hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-56fef212-c25e-4881-8b51-6054ecbb2732">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-56fef212-c25e-4881-8b51-6054ecbb2732)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b5c50a96-1ace-4d78-bcb7-bf4b0f696dc2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b5c50a96-1ace-4d78-bcb7-bf4b0f696dc2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])]"
         id="tmp-r-824da341-43c2-4766-995e-1653d0c50856">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-824da341-43c2-4766-995e-1653d0c50856)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4058']|self::hl7:id|self::hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-4681dda8-cd8d-4ce6-9bdf-7f127b01069f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4681dda8-cd8d-4ce6-9bdf-7f127b01069f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-af952e08-8894-432f-9c27-d27f1b644568">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-af952e08-8894-432f-9c27-d27f1b644568)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])]"
         id="tmp-r-90e1ec3a-dd95-4264-bbc9-c2edeaf8faa7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-90e1ec3a-dd95-4264-bbc9-c2edeaf8faa7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4059']|self::hl7:id|self::hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-05b07e96-f6f1-4a92-85e4-edc02e406f5b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-05b07e96-f6f1-4a92-85e4-edc02e406f5b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-0391ad01-7de3-4783-8f97-1b69eea0fd4b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0391ad01-7de3-4783-8f97-1b69eea0fd4b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])]"
         id="tmp-r-de1f71fd-e8a7-44d1-8daa-9efe8c9614d5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-de1f71fd-e8a7-44d1-8daa-9efe8c9614d5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4060']|self::hl7:id|self::hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-afb7bf75-8d35-495c-b1d7-945c01ee6d85">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-afb7bf75-8d35-495c-b1d7-945c01ee6d85)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-952b83e2-f16b-4106-b8ff-84795d59dc54">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-952b83e2-f16b-4106-b8ff-84795d59dc54)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'])]"
         id="tmp-r-1501206c-f002-4cd5-ac84-ea285da0aefa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1501206c-f002-4cd5-ac84-ea285da0aefa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4061']|self::hl7:id|self::hl7:code[(@code='268400002' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-a47eb2f8-bf7b-42bf-8bec-6398d5d5c5e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a47eb2f8-bf7b-42bf-8bec-6398d5d5c5e1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-5ba7ce45-01d3-4100-afb9-233c778e7bf3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5ba7ce45-01d3-4100-afb9-233c778e7bf3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])]"
         id="tmp-r-b0497b81-5dd8-4c30-892a-21a9745121b8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b0497b81-5dd8-4c30-892a-21a9745121b8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4062']|self::hl7:id|self::hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-e464b0a0-1798-4c2c-b777-3a0f7fa2d5ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e464b0a0-1798-4c2c-b777-3a0f7fa2d5ee)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-f442c029-bb83-4085-a568-389f24db114f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f442c029-bb83-4085-a568-389f24db114f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])]"
         id="tmp-r-2c63a866-a4a9-445a-9e81-a0dc131f8e58">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c63a866-a4a9-445a-9e81-a0dc131f8e58)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4063']|self::hl7:id|self::hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-46526b0c-c618-4262-bdbb-174443271cea">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-46526b0c-c618-4262-bdbb-174443271cea)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-cf86f385-0b16-4e90-91c5-4a4efe3bd667">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cf86f385-0b16-4e90-91c5-4a4efe3bd667)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'])]"
         id="tmp-r-779e608a-e36a-401d-b4ea-7125d758a3e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-779e608a-e36a-401d-b4ea-7125d758a3e1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4064']|self::hl7:id|self::hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-8da00c3a-d024-4e4f-83f3-b82062e58115">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8da00c3a-d024-4e4f-83f3-b82062e58115)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-9dac2630-04c7-4748-b10a-e8b52c685ac1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9dac2630-04c7-4748-b10a-e8b52c685ac1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051'])]"
         id="tmp-r-a9f33758-3811-493e-b51c-45ff47a2d82f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a9f33758-3811-493e-b51c-45ff47a2d82f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3051']|self::hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']])]"
         id="tmp-r-fe85a1b7-a9a3-4576-a70a-fc0bba7e9663">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fe85a1b7-a9a3-4576-a70a-fc0bba7e9663)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065'])]"
         id="tmp-r-27943bfb-7701-4783-b65e-bb5795950eea">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-27943bfb-7701-4783-b65e-bb5795950eea)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4065']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']])]"
         id="tmp-r-2c1806b0-5a5e-4907-8179-1e3bd60750a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c1806b0-5a5e-4907-8179-1e3bd60750a2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-f9ab0bb7-2077-400f-824d-5e1eb62cbb60">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f9ab0bb7-2077-400f-824d-5e1eb62cbb60)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066'])]"
         id="tmp-r-bbf5eaac-b172-4f3a-8b1d-1d290f454f45">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bbf5eaac-b172-4f3a-8b1d-1d290f454f45)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4066']|self::hl7:id|self::hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:participant)]"
         id="tmp-r-c738ddb8-1cc7-4872-a463-de092c9b3f84">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c738ddb8-1cc7-4872-a463-de092c9b3f84)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-209ef670-f7b1-4b3c-ac01-b6e59e69c43e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-209ef670-f7b1-4b3c-ac01-b6e59e69c43e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/*[not(self::hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-549d77d7-23df-43c9-b0d0-b804b472149f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-549d77d7-23df-43c9-b0d0-b804b472149f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-ef0d4708-f1d8-4780-b84b-24f239a57850">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ef0d4708-f1d8-4780-b84b-24f239a57850)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-056b199a-c9d6-4710-937a-9c25ed3b5528">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-056b199a-c9d6-4710-937a-9c25ed3b5528)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054'])]"
         id="tmp-r-1aad74ec-20cf-4c7a-8c8c-48a1f0f57253">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1aad74ec-20cf-4c7a-8c8c-48a1f0f57253)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3054']|self::hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']])]"
         id="tmp-r-c0c9e8cb-4423-450a-8ab8-2eefea2a6b57">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c0c9e8cb-4423-450a-8ab8-2eefea2a6b57)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/*[not(self::hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])]"
         id="tmp-r-6fe75f6c-e686-4346-be64-e35a5199044f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6fe75f6c-e686-4346-be64-e35a5199044f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4068']|self::hl7:id|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']])]"
         id="tmp-r-88768f7f-d72b-4088-989c-2b68bc10d4c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-88768f7f-d72b-4088-989c-2b68bc10d4c1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-90e1301f-7153-4593-a7da-df6c6bc98f88">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-90e1301f-7153-4593-a7da-df6c6bc98f88)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069'])]"
         id="tmp-r-846fcd2c-7128-4196-9a54-533f971e3df4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-846fcd2c-7128-4196-9a54-533f971e3df4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4069']|self::hl7:id|self::hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:statusCode[@code='completed']|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-52914a26-a865-48e3-9bc7-8be9a0497859">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-52914a26-a865-48e3-9bc7-8be9a0497859)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055'])]"
         id="tmp-r-d5c7c1d0-59ca-43ce-b47f-c09af3f78b8e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d5c7c1d0-59ca-43ce-b47f-c09af3f78b8e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3055']|self::hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']])]"
         id="tmp-r-3bbb107d-49d7-4447-8b94-d35280e38477">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3bbb107d-49d7-4447-8b94-d35280e38477)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048'])]"
         id="tmp-r-b4ffa6a3-13ab-4883-ae65-ade0e0140478">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b4ffa6a3-13ab-4883-ae65-ade0e0140478)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4048']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']])]"
         id="tmp-r-e5a7f5e8-dcea-4cbd-9e58-9cb39b0da7ff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e5a7f5e8-dcea-4cbd-9e58-9cb39b0da7ff)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-0ea7293e-86df-4759-a29d-3c239578dcf7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0ea7293e-86df-4759-a29d-3c239578dcf7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])]"
         id="tmp-r-82e6603e-eee5-4557-b3e4-80f0cf2bea69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-82e6603e-eee5-4557-b3e4-80f0cf2bea69)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4049']|self::hl7:id|self::hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-cd585e14-0b54-4f03-a1de-8b028537550b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cd585e14-0b54-4f03-a1de-8b028537550b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-96dfb49a-c4f4-4f15-bb06-dbd4ea4ebc71">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-96dfb49a-c4f4-4f15-bb06-dbd4ea4ebc71)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-e2dfe322-b1fe-426a-805d-c05e1a5dc298">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e2dfe322-b1fe-426a-805d-c05e1a5dc298)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049'])]"
         id="tmp-r-dd024361-28d0-4ae9-b433-71bb041951a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dd024361-28d0-4ae9-b433-71bb041951a2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3049']|self::hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']])]"
         id="tmp-r-42e59cfb-65aa-480b-9c13-5765e08273a3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-42e59cfb-65aa-480b-9c13-5765e08273a3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])]"
         id="tmp-r-f8862d2e-0d70-49c9-9f28-5fe33a7894b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f8862d2e-0d70-49c9-9f28-5fe33a7894b7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4042']|self::hl7:id|self::hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value|self::hl7:value)]"
         id="tmp-r-6fcc205f-ce4a-4010-8de8-cc26e12fde16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6fcc205f-ce4a-4010-8de8-cc26e12fde16)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-8ef98626-0d93-46d8-9c69-85779a738d17">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8ef98626-0d93-46d8-9c69-85779a738d17)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-e7e913ea-9ce7-4954-88fb-d2e66a95cdd6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e7e913ea-9ce7-4954-88fb-d2e66a95cdd6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056'])]"
         id="tmp-r-265b1f33-178c-4b64-b96f-1e172345b633">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-265b1f33-178c-4b64-b96f-1e172345b633)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3056']|self::hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']])]"
         id="tmp-r-55d1008c-0d03-4782-b771-0b5f57fefccd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-55d1008c-0d03-4782-b771-0b5f57fefccd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])]"
         id="tmp-r-851857cf-f09b-402b-a91f-062f7beab765">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-851857cf-f09b-402b-a91f-062f7beab765)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4067']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:text)]"
         id="tmp-r-80f425af-be8b-43d5-898a-653ce022e087">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-80f425af-be8b-43d5-898a-653ce022e087)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-62a4e774-2379-4463-9a8d-cb223ab2f490">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-62a4e774-2379-4463-9a8d-cb223ab2f490)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057'])]"
         id="tmp-r-261de926-7fbd-4f87-92c8-b887a91644fc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-261de926-7fbd-4f87-92c8-b887a91644fc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3057']|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])]"
         id="tmp-r-463be6ef-5a4b-4eea-a70e-44d4de164977">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-463be6ef-5a4b-4eea-a70e-44d4de164977)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070'])]"
         id="tmp-r-4474fe1f-4f6b-497e-9776-e97a0a0e3b8d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4474fe1f-4f6b-497e-9776-e97a0a0e3b8d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4070']|self::hl7:id|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']])]"
         id="tmp-r-b9a960c2-e6da-401b-af9b-099d1fc0717d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b9a960c2-e6da-401b-af9b-099d1fc0717d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-0615f661-a1da-4c2a-afc8-61c615195b7b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0615f661-a1da-4c2a-afc8-61c615195b7b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/*[not(self::hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'])]"
         id="tmp-r-f15a1104-fde5-4625-877e-d7595a34f197">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f15a1104-fde5-4625-877e-d7595a34f197)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4071']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text)]"
         id="tmp-r-6e6b3c5f-3619-4caf-b5dc-96e0151680c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6e6b3c5f-3619-4caf-b5dc-96e0151680c1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-945937f1-4ba7-433a-a63e-9b2956ad53fb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-945937f1-4ba7-433a-a63e-9b2956ad53fb)</assert>
   </rule>
</pattern>
