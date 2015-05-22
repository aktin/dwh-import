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
         id="tmp-r-ecfb32a6-6657-4701-b62a-c0fb74a628f6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&gt;=1 and not(hl7:realmCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&gt;=1 and not(hl7:typeId[@root='2.16.840.1.113883.1.3']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.1015']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:title)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&gt;=1 and not(hl7:languageCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&gt;=1 and not(hl7:setId/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:setId ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:setId kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&gt;=1 and not(hl7:versionNumber/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&gt;=1 and not(hl7:recordTarget/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:author)&gt;=1 and not(hl7:author/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:author ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&gt;=1 and not(hl7:custodian/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:custodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:custodian kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&gt;=1 and not(hl7:documentationOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&gt;=1 and not(hl7:componentOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90002
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode"
         id="tmp-r-9633edcb-ae90-4fe3-ab73-c2009c70996a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArealmCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="@code">(CDArealmCode): Attribut @code MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or (string-length(@code)&gt;0 and not(matches(@code,'\s')))">(CDArealmCode): Attribute @code MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@code,' ') return if ($code=('DE')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or count($theAttValue) = count($theAttCheck)">(CDArealmCode): Der Wert von code MUSS 'Code DE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90003
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']"
         id="tmp-r-577f296b-25a8-493c-8f46-bbd390053d6c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtypeId): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@extension)=('POCD_HD000040')">(CDAtypeId): Der Wert von @extension MUSS 'POCD_HD000040' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.1.3')">(CDAtypeId): Der Wert von @root MUSS '2.16.840.1.113883.1.3' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']"
         id="tmp-r-f595d9ec-25cb-47cc-af6b-1c4d2074bec6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.1015')">(EmergencymedicineNoteCDAdocument): Der Wert von @root MUSS '1.2.276.0.76.10.1015' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90004
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id"
         id="tmp-r-7ee4739d-1ae3-4880-9c44-54b38bb88f0b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90004-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-3377118d-8f5c-4e28-bcc5-07317771c10c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="@nullFlavor or (@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')">(EmergencymedicineNoteCDAdocument): Der Elementinhalt MUSS einer von 'code '34878-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title"
         id="tmp-r-7f009fe8-b3b4-4d5b-8fb8-936faabc9ab2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90005-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90006
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime"
         id="tmp-r-a6a0cb51-cbc4-4580-9113-c58cd5e962a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90006-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAeffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90007
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-f4739f13-7eb1-4385-817c-421e342664cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAconfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAconfidentialityCode): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAconfidentialityCode): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90008
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode"
         id="tmp-r-4718304a-3339-4c93-9fdb-15fb446bfadb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90008-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS.LANG"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId"
         id="tmp-r-dbfdfc6e-5ea6-4454-a671-b779cf595125">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber"
         id="tmp-r-2efafdd2-54c6-487c-8ec5-3a6d31a5e26c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="INT.NONNEG"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1))">(CDAsetIdversionNumber): value MUSS im Bereich [1..] liegen  </assert>
      <let name="digitok" value="matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="$digitok or @nullFlavor">(CDAsetIdversionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget"
         id="tmp-r-03eafc02-1edf-42d0-8ed0-c6f3957ce0b1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@typeCode)=('RCT') or not(@typeCode)">(CDArecordTargetnnar): Der Wert von @typeCode MUSS 'RCT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@contextControlCode)=('OP') or not(@contextControlCode)">(CDArecordTargetnnar): Der Wert von @contextControlCode MUSS 'OP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&lt;=1">(CDArecordTargetnnar): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole"
         id="tmp-r-aa6b5720-c986-40bf-85c9-9c8c3103bc2d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PAT') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDArecordTargetnnar): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDArecordTargetnnar): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDArecordTargetnnar): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patient ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&lt;=1">(CDArecordTargetnnar): Element hl7:patient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90024
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id
Item: (PatientIdentifier)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id"
         id="tmp-r-5d3073d1-9362-4e10-b867-b4f08412fdf7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientIdentifier): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="@extension">(PatientIdentifier): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr"
         id="tmp-r-17f7a8dd-0645-4934-a252-1fa314c7d498">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom"
         id="tmp-r-916839af-d067-492b-a67c-3d6df3a4b600">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient"
         id="tmp-r-76ecd491-4ae1-4d17-a887-ba551f92d529">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDArecordTargetnnar): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 ">(CDArecordTargetnnar): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&gt;=1 ">(CDArecordTargetnnar): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&lt;=1">(CDArecordTargetnnar): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name"
         id="tmp-r-73a67f3a-23a1-48d2-a2ac-d8bc3be13d7c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-62237fdd-0192-4762-b7f6-dd3f77095a2f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDArecordTargetnnar): Der Elementinhalt MUSS einer von 'AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDArecordTargetnnar): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime"
         id="tmp-r-060f9d50-7cf4-455c-b0cb-65adef8e6c60">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author"
         id="tmp-r-43ba95e7-dbb8-4bac-aeff-c6847b689b32">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@typeCode)=('AUT') or not(@typeCode)">(CDAauthor): Der Wert von @typeCode MUSS 'AUT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 and not(hl7:time/@nullFlavor)">(CDAauthor): Element hl7:time ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDAauthor): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&gt;=1 and not(hl7:assignedAuthor/@nullFlavor)">(CDAauthor): Element hl7:assignedAuthor ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&lt;=1">(CDAauthor): Element hl7:assignedAuthor kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time"
         id="tmp-r-40447c62-2516-4e0c-9e56-f3f9bf77b742">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor"
         id="tmp-r-b3873ea6-28cb-4be4-8208-71e08597497f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDAauthor): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDAauthor): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedPerson)&lt;=1">(CDAauthor): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:representedOrganization)&lt;=1">(CDAauthor): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id"
         id="tmp-r-d89217c4-b4ed-48a1-af38-d91ba718d87d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson"
         id="tmp-r-0016989f-bf12-4ca8-a828-545faf52be3f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name"
         id="tmp-r-eacc8c2e-2a90-42df-8c41-1f70d901d792">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization"
         id="tmp-r-0bbfe428-bc29-4c3e-8c00-4953c7aff24c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAauthor): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id"
         id="tmp-r-357fbe16-2f01-441b-bd23-120418c50208">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="tmp-r-f0e86ad3-c6da-41f7-bd9d-0159f9c7c1a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom"
         id="tmp-r-8d3408bb-b3da-4a7e-bfda-f9b574d3a9c5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="tmp-r-aa674eab-541e-4a40-9d59-8302a472489f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian"
         id="tmp-r-8e33b4fa-d46f-471e-8de8-49411c7c1ec5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@typeCode)=('CST') or not(@typeCode)">(CDAcustodian): Der Wert von @typeCode MUSS 'CST' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&gt;=1 and not(hl7:assignedCustodian/@nullFlavor)">(CDAcustodian): Element hl7:assignedCustodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&lt;=1">(CDAcustodian): Element hl7:assignedCustodian kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian"
         id="tmp-r-5a3316fe-baaf-42a6-b77f-9636f582a245">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:representedCustodianOrganization)&lt;=1">(CDAcustodian): Element hl7:representedCustodianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization"
         id="tmp-r-dfa8c56c-a869-4c21-b431-c35cc85b96da">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAcustodian): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAcustodian): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAcustodian): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAcustodian): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id"
         id="tmp-r-87734754-57d8-4d81-a0f4-35a20d61efda">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name"
         id="tmp-r-b7363306-88c0-43cb-8fbe-d59c05faa06f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom"
         id="tmp-r-de194b45-49c3-4b18-aa03-43d5d794bb9a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr"
         id="tmp-r-a5a875d8-a17f-45eb-9394-cb01747eb25f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf"
         id="tmp-r-1dc059ee-4f52-4a27-8b28-6be9c74e190f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('DOC')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'DOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&gt;=1 ">(CDADocumentationOf): Element hl7:serviceEvent ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&lt;=1">(CDADocumentationOf): Element hl7:serviceEvent kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent"
         id="tmp-r-d836ab90-2002-40e8-b7bd-bcd1d1d66368">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ACT')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@moodCode)=('EVN')">(CDADocumentationOf): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDADocumentationOf): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDADocumentationOf): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&gt;=1 and not(hl7:performer/@nullFlavor)">(CDADocumentationOf): Element hl7:performer ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&lt;=1">(CDADocumentationOf): Element hl7:performer kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime"
         id="tmp-r-f255fe00-d733-47cd-b5d0-40e95b5c6df3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&gt;=1 and not(cda:low/@nullFlavor)">(CDADocumentationOf): Element cda:low ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&lt;=1">(CDADocumentationOf): Element cda:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&gt;=1 and not(cda:high/@nullFlavor)">(CDADocumentationOf): Element cda:high ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&lt;=1">(CDADocumentationOf): Element cda:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low"
         id="tmp-r-093b1108-966c-4004-bfd6-2615bd1bd8ce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high"
         id="tmp-r-8ab56822-75da-40c5-bc14-6ec28ae0fa86">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer"
         id="tmp-r-12311318-3927-47f7-8a3e-ca6328d6c590">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('PRF')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'PRF' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 ">(CDADocumentationOf): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDADocumentationOf): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&gt;=1 and not(hl7:assignedEntity/@nullFlavor)">(CDADocumentationOf): Element hl7:assignedEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&lt;=1">(CDADocumentationOf): Element hl7:assignedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time"
         id="tmp-r-cee157c4-b542-4778-ae9e-dadd68136139">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDADocumentationOf): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&lt;=1">(CDADocumentationOf): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&gt;=1 ">(CDADocumentationOf): Element hl7:high ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&lt;=1">(CDADocumentationOf): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low"
         id="tmp-r-b60cfb23-4c6a-4b73-8860-b1f55a591f34">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high"
         id="tmp-r-0eb01ff1-d622-4c6e-b228-ed6e2fac05f4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity"
         id="tmp-r-affbb9af-2015-4262-a973-12afc147fdb9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDADocumentationOf): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDADocumentationOf): Element hl7:id kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id"
         id="tmp-r-0493e82b-0a58-4eee-aa59-375a1163a0d3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@nullFlavor)=('NA')">(CDADocumentationOf): Der Wert von @nullFlavor MUSS 'NA' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf"
         id="tmp-r-1aba5d1d-22e2-44ec-b5d3-2e8d2cca8215">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(CDAEncompassingEncounter): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:encompassingEncounter ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&lt;=1">(CDAEncompassingEncounter): Element hl7:encompassingEncounter kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter"
         id="tmp-r-1eaf1eb9-ff7a-44b1-97b6-bcde06133225">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@classCode)=('ENC') or not(@classCode)">(CDAEncompassingEncounter): Der Wert von @classCode MUSS 'ENC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(CDAEncompassingEncounter): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDAEncompassingEncounter): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDAEncompassingEncounter): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:dischargeDispositionCode)&lt;=1">(CDAEncompassingEncounter): Element hl7:dischargeDispositionCode kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime"
         id="tmp-r-efda5099-1db7-4ea1-a47b-90cbbcfe2ba9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&lt;=1">(CDAEncompassingEncounter): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:high)&lt;=1">(CDAEncompassingEncounter): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low"
         id="tmp-r-2a4b6964-c684-49e3-84d4-4c2e152961ad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high"
         id="tmp-r-4abd4f8b-14fd-4fc5-9f74-3b96011382b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode"
         id="tmp-r-cd4a625a-1233-4291-8dc2-ace211a24950">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAEncompassingEncounter): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAEncompassingEncounter): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient"
         id="tmp-r-7e716ee7-72ad-4cd1-ab51-1654282ead67">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="@typeCode">(HeaderInformationRecipient): Attribut @typeCode MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(HeaderInformationRecipient): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@typeCode,' ') return if ($code=('PRCP','TRC')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or count($theAttValue) = count($theAttCheck)">(HeaderInformationRecipient): Der Wert von typeCode MUSS 'Code PRCP oder Code TRC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&gt;=1 and not(hl7:intendedRecipient/@nullFlavor)">(HeaderInformationRecipient): Element hl7:intendedRecipient ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:intendedRecipient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient"
         id="tmp-r-76f4b931-9cb1-4e71-b8c4-453dc6013e30">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:id)&gt;=1 ">(HeaderInformationRecipient): Element hl7:id ist required [min 1x].</assert>
      <let name="elmcount"
           value="count(hl7:informationRecipient|hl7:receivedOrganization)"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="$elmcount&gt;=1">(HeaderInformationRecipient): Auswahl (hl7:informationRecipient oder hl7:receivedOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:informationRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:informationRecipient kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:receivedOrganization)&lt;=1">(HeaderInformationRecipient): Element hl7:receivedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id"
         id="tmp-r-6e84e952-e159-4926-84e5-6c2f0b5df2fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient"
         id="tmp-r-14dab5c2-b8ce-4f18-a2a9-98d526de8cd0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name"
         id="tmp-r-1cabfd5c-8158-4565-9b15-b9c930fd1659">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization"
         id="tmp-r-8b05f4ef-9a14-4ebc-b2c5-658b857aa01d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderInformationRecipient): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id"
         id="tmp-r-e819623f-4ff4-4e37-a206-1ec2244f13c6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name"
         id="tmp-r-ffe91e12-a186-405f-98d2-25bc55a315d8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom"
         id="tmp-r-f369246a-c875-4677-baa8-2a12a66de428">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr"
         id="tmp-r-fe4ad134-4916-49cd-ab93-3f3ad71a03c5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component"
         id="tmp-r-c84dc240-da78-48b8-98f6-8694c90c83c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody"
         id="tmp-r-a5c2fbb6-3249-4ef6-8fbe-a1f03555e6b2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@classCode)=('DOCBODY') or not(@classCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @classCode MUSS 'DOCBODY' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015'])]"
         id="tmp-r-c52c0dec-6c5e-466f-9c55-e1604a59b2bc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c52c0dec-6c5e-466f-9c55-e1604a59b2bc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/*[not(self::hl7:realmCode|self::hl7:typeId[@root='2.16.840.1.113883.1.3']|self::hl7:templateId[@root='1.2.276.0.76.10.1015']|self::hl7:id|self::hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:effectiveTime|self::hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:languageCode|self::hl7:setId|self::hl7:versionNumber|self::hl7:recordTarget|self::hl7:author|self::hl7:custodian|self::hl7:documentationOf|self::hl7:componentOf|self::hl7:informationRecipient|self::hl7:component)]"
         id="tmp-r-08f6e71c-c95e-42a7-af7e-b196d6be2b31">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-08f6e71c-c95e-42a7-af7e-b196d6be2b31)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/*[not(self::hl7:patientRole)]"
         id="tmp-r-06decb94-e221-40fb-990a-64ca1e2ff584">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-06decb94-e221-40fb-990a-64ca1e2ff584)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/*[not(self::hl7:id|self::hl7:addr|self::hl7:telecom|self::hl7:patient)]"
         id="tmp-r-4dccf54c-7ec6-4948-bcbb-f85aa4a8d02e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4dccf54c-7ec6-4948-bcbb-f85aa4a8d02e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/*[not(self::hl7:name|self::hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:birthTime)]"
         id="tmp-r-70311ed7-f710-4ce8-8d15-c3cdcbdd40f9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-70311ed7-f710-4ce8-8d15-c3cdcbdd40f9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/*[not(self::hl7:time|self::hl7:assignedAuthor)]"
         id="tmp-r-1d1dde30-1c0e-4b84-9b44-a70b3b6870c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1d1dde30-1c0e-4b84-9b44-a70b3b6870c1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/*[not(self::hl7:id|self::hl7:assignedPerson|self::hl7:representedOrganization)]"
         id="tmp-r-582e359f-1a92-4765-87ca-6043409d0f9c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-582e359f-1a92-4765-87ca-6043409d0f9c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/*[not(self::hl7:name)]"
         id="tmp-r-e172db4f-4092-41b5-99c0-70911a323462">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e172db4f-4092-41b5-99c0-70911a323462)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-95a3f730-8ab6-4399-9fd3-b2bba0785f1a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-95a3f730-8ab6-4399-9fd3-b2bba0785f1a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/*[not(self::hl7:assignedCustodian)]"
         id="tmp-r-debda91d-94d4-40c3-96ef-008b8b843a66">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-debda91d-94d4-40c3-96ef-008b8b843a66)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/*[not(self::hl7:representedCustodianOrganization)]"
         id="tmp-r-58ea5e1d-e2cd-4d55-ac7e-c0ee63c93155">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-58ea5e1d-e2cd-4d55-ac7e-c0ee63c93155)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-245911d0-aff4-41ef-b0a5-14beeeecabd2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-245911d0-aff4-41ef-b0a5-14beeeecabd2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/*[not(self::hl7:serviceEvent)]"
         id="tmp-r-0a03df39-828f-48e4-aa65-dcf6dfff0648">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0a03df39-828f-48e4-aa65-dcf6dfff0648)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/*[not(self::hl7:effectiveTime|self::hl7:performer)]"
         id="tmp-r-35c68e43-d6b9-40c2-a7d2-ee2c1fc88430">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-35c68e43-d6b9-40c2-a7d2-ee2c1fc88430)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/*[not(self::cda:low|self::cda:high)]"
         id="tmp-r-6e37a19d-0a14-4217-ba9d-67e84b6ea27f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6e37a19d-0a14-4217-ba9d-67e84b6ea27f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/*[not(self::hl7:time|self::hl7:assignedEntity)]"
         id="tmp-r-a02141e5-c716-43b5-94a9-4efe8197638b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a02141e5-c716-43b5-94a9-4efe8197638b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-4362bcfb-52ab-49d3-980d-ef2e68593cfa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4362bcfb-52ab-49d3-980d-ef2e68593cfa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/*[not(self::hl7:id)]"
         id="tmp-r-ef44c450-68b2-4a9c-aa0c-1e4ecd8f7864">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ef44c450-68b2-4a9c-aa0c-1e4ecd8f7864)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/*[not(self::hl7:encompassingEncounter)]"
         id="tmp-r-55bace1a-c185-47aa-beaa-2ff61db5f074">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-55bace1a-c185-47aa-beaa-2ff61db5f074)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/*[not(self::hl7:effectiveTime|self::hl7:dischargeDispositionCode)]"
         id="tmp-r-1d57d598-2eea-4a0d-8f1e-eba1578ee9ca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1d57d598-2eea-4a0d-8f1e-eba1578ee9ca)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-a0a82517-af00-4a8c-8182-c7d0d9c52bb2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a0a82517-af00-4a8c-8182-c7d0d9c52bb2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/*[not(self::hl7:intendedRecipient)]"
         id="tmp-r-235981dd-8f02-4105-90b0-e97760c70345">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-235981dd-8f02-4105-90b0-e97760c70345)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/*[not(self::hl7:id|self::hl7:informationRecipient|self::hl7:receivedOrganization)]"
         id="tmp-r-e5dca579-dc2c-4c04-a396-2eeb763283af">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e5dca579-dc2c-4c04-a396-2eeb763283af)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/*[not(self::hl7:name)]"
         id="tmp-r-d46b61df-4105-4dcf-8b24-69833f6aece1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d46b61df-4105-4dcf-8b24-69833f6aece1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-443d85f6-c222-42a6-885a-5b8c3e878d77">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-443d85f6-c222-42a6-885a-5b8c3e878d77)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/*[not(self::hl7:structuredBody)]"
         id="tmp-r-0aa23c90-d457-4b54-90e2-e250bcfa1afc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0aa23c90-d457-4b54-90e2-e250bcfa1afc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/*[not(self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])]"
         id="tmp-r-befa28e6-6fd8-4b78-9dc4-0cda3b181b64">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-befa28e6-6fd8-4b78-9dc4-0cda3b181b64)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045'])]"
         id="tmp-r-f99c7288-609b-4563-a875-334b98025ff4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f99c7288-609b-4563-a875-334b98025ff4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3045']|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']])]"
         id="tmp-r-93cb1ca7-ce78-4691-9bc7-9a6fe15b5c8f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-93cb1ca7-ce78-4691-9bc7-9a6fe15b5c8f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'])]"
         id="tmp-r-eaf88532-2f4d-40ba-88d7-b249f13bc1cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-eaf88532-2f4d-40ba-88d7-b249f13bc1cc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4037']|self::hl7:id|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-491c83f5-8e3b-4360-b241-c9694557706b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-491c83f5-8e3b-4360-b241-c9694557706b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-dbc4aedb-3981-416b-9498-253f562130e9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dbc4aedb-3981-416b-9498-253f562130e9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime/*[not(self::hl7:high)]"
         id="tmp-r-457453f4-cc15-412a-acd7-bc0222e39b52">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-457453f4-cc15-412a-acd7-bc0222e39b52)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046'])]"
         id="tmp-r-0992c088-ec97-4745-8e44-76851ea1b821">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0992c088-ec97-4745-8e44-76851ea1b821)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3046']|self::hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']])]"
         id="tmp-r-da6f0021-8bee-42fa-b00b-23cbd88548a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-da6f0021-8bee-42fa-b00b-23cbd88548a6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])]"
         id="tmp-r-a1213d45-9690-4a37-8014-aca420ccdb3d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a1213d45-9690-4a37-8014-aca420ccdb3d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4038']|self::hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-bdb34994-b9d7-402a-9b7f-f2d345bf8143">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bdb34994-b9d7-402a-9b7f-f2d345bf8143)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bed56128-162f-4ee1-a183-dcd68726d0c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bed56128-162f-4ee1-a183-dcd68726d0c7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-8668702e-4daa-4709-9447-9203fc9808ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8668702e-4daa-4709-9447-9203fc9808ef)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-ef44fc99-e117-414d-9567-849e8006cc79">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ef44fc99-e117-414d-9567-849e8006cc79)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053'])]"
         id="tmp-r-71d6ba18-60de-4604-97ec-301435bbe5ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-71d6ba18-60de-4604-97ec-301435bbe5ee)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3053']|self::hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-4744b336-c85d-4a7b-8400-ba7ad2f8037c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4744b336-c85d-4a7b-8400-ba7ad2f8037c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048'])]"
         id="tmp-r-f3fb643b-4ff8-4d50-9f55-4ac9d40825fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f3fb643b-4ff8-4d50-9f55-4ac9d40825fd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3048']|self::hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']])]"
         id="tmp-r-0621fa4a-591f-44a5-b8d4-78b05a85e070">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0621fa4a-591f-44a5-b8d4-78b05a85e070)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039'])]"
         id="tmp-r-b6219e7e-3562-41a1-91a0-72221697eb87">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b6219e7e-3562-41a1-91a0-72221697eb87)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4039']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']])]"
         id="tmp-r-aca387d9-c798-4e5a-8e6a-e2a9bcdfb459">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-aca387d9-c798-4e5a-8e6a-e2a9bcdfb459)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-30decc36-b885-4e1e-a3be-cb74be46ed74">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-30decc36-b885-4e1e-a3be-cb74be46ed74)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])]"
         id="tmp-r-3c6886dc-c615-4bc2-857a-021769105fe3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3c6886dc-c615-4bc2-857a-021769105fe3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4040']|self::hl7:id|self::hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-3ce14726-ca9e-4134-b418-84e118279770">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3ce14726-ca9e-4134-b418-84e118279770)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-ddf7a1eb-7e64-464f-a522-858647f89d84">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ddf7a1eb-7e64-464f-a522-858647f89d84)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-a3fb4ca3-ebb2-44a8-b8da-e6ade141ad88">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a3fb4ca3-ebb2-44a8-b8da-e6ade141ad88)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]|self::hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']])]"
         id="tmp-r-478a5c32-813f-405a-96c6-0a4bf8364f04">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-478a5c32-813f-405a-96c6-0a4bf8364f04)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3047']|self::hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-ded2e791-6f34-4504-b8c3-841ac262bea2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ded2e791-6f34-4504-b8c3-841ac262bea2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'])]"
         id="tmp-r-a89e7e6f-2890-493f-83da-3901c6cef2c4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a89e7e6f-2890-493f-83da-3901c6cef2c4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4043']|self::hl7:id|self::hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-bfacc05c-5161-4bf7-9b0c-1c44cb219196">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bfacc05c-5161-4bf7-9b0c-1c44cb219196)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-ce83c3f7-fa91-433b-8c66-a6e0dc508f9f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ce83c3f7-fa91-433b-8c66-a6e0dc508f9f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/*[not(self::hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])]"
         id="tmp-r-9d80a9c8-0a9a-4d81-9ef0-2d7523183160">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9d80a9c8-0a9a-4d81-9ef0-2d7523183160)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4044']|self::hl7:id|self::hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:consumable)]"
         id="tmp-r-2d9cedc4-e1a5-459b-b756-4716ba44d1b3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2d9cedc4-e1a5-459b-b756-4716ba44d1b3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-1a46e817-cd71-4cd0-b48d-78eaf73c216c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1a46e817-cd71-4cd0-b48d-78eaf73c216c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/*[not(self::hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-4d30d88d-0c02-457f-917d-3685fa36a6d1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4d30d88d-0c02-457f-917d-3685fa36a6d1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-be84c054-94fc-41f0-a02e-f52c3dc30fc2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-be84c054-94fc-41f0-a02e-f52c3dc30fc2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-2a8f2389-4de4-4276-95e0-4b2dc1f4b08e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2a8f2389-4de4-4276-95e0-4b2dc1f4b08e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])]"
         id="tmp-r-e45fd599-2f61-4f60-b89c-d1d28f9ceca4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e45fd599-2f61-4f60-b89c-d1d28f9ceca4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4045']|self::hl7:id|self::hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-07f381a6-2f62-4d4e-a155-5eee0598b6a4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-07f381a6-2f62-4d4e-a155-5eee0598b6a4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bc04264e-7856-46eb-ad4b-82cafaa30d8d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bc04264e-7856-46eb-ad4b-82cafaa30d8d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044'])]"
         id="tmp-r-d41d02ea-7949-4b98-959b-ba113dbf573b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d41d02ea-7949-4b98-959b-ba113dbf573b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3044']|self::hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']])]"
         id="tmp-r-592b81fe-f315-489c-8cea-63c7c3a0b353">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-592b81fe-f315-489c-8cea-63c7c3a0b353)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])]"
         id="tmp-r-f88667fc-89cd-4425-bf86-e8c04b4fb3f4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f88667fc-89cd-4425-bf86-e8c04b4fb3f4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4030']|self::hl7:id|self::hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-114be35f-4e53-4208-a09c-05f8cd693894">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-114be35f-4e53-4208-a09c-05f8cd693894)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/*[not(self::hl7:originalText)]"
         id="tmp-r-a49d0c90-84d9-42f0-ad93-32ad07bd7f69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a49d0c90-84d9-42f0-ad93-32ad07bd7f69)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-1c03c27e-f57d-49a5-990d-9463ceb9135e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1c03c27e-f57d-49a5-990d-9463ceb9135e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'])]"
         id="tmp-r-988ad2c3-909b-48e3-a47a-9b0593f5d39b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-988ad2c3-909b-48e3-a47a-9b0593f5d39b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4031']|self::hl7:id|self::hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-c985b534-7d2c-4596-ac74-d0519a1cedad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c985b534-7d2c-4596-ac74-d0519a1cedad)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-05f1b545-a903-4f43-8c3d-113a8aa30b4e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-05f1b545-a903-4f43-8c3d-113a8aa30b4e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])]"
         id="tmp-r-8757cb90-e72f-4aad-9610-fd179b0d16d1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8757cb90-e72f-4aad-9610-fd179b0d16d1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4032']|self::hl7:id|self::hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-3b49599d-8aeb-42a6-9370-c7b80d44dc0a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3b49599d-8aeb-42a6-9370-c7b80d44dc0a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-85cea1f0-651d-4696-bb8e-f696cbc11014">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-85cea1f0-651d-4696-bb8e-f696cbc11014)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])]"
         id="tmp-r-04037903-15ab-453d-a6b9-bdae035e6dbd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-04037903-15ab-453d-a6b9-bdae035e6dbd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4033']|self::hl7:id|self::hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-572a6afb-060d-42ac-96f6-601695ab4121">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-572a6afb-060d-42ac-96f6-601695ab4121)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e468c539-af8e-43b0-93dd-e420e773f926">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e468c539-af8e-43b0-93dd-e420e773f926)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034'])]"
         id="tmp-r-159c4307-609b-4ef5-ace1-3a4f9c33f555">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-159c4307-609b-4ef5-ace1-3a4f9c33f555)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4034']|self::hl7:id|self::hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value|self::hl7:component[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:component[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:component[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]])]"
         id="tmp-r-d188b613-9a55-42fa-be60-9440249092c1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d188b613-9a55-42fa-be60-9440249092c1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-3d3cc9b6-607f-4838-81ba-5e4348514740">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3d3cc9b6-607f-4838-81ba-5e4348514740)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-81600e78-8e1d-4a6b-8fbc-8b82d6d13af2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-81600e78-8e1d-4a6b-8fbc-8b82d6d13af2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:value)]"
         id="tmp-r-cce4d6c5-f4ab-4fe2-9b8e-1c518a82283e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cce4d6c5-f4ab-4fe2-9b8e-1c518a82283e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-be235d6f-52e4-4759-993b-0ed76ed09d78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-be235d6f-52e4-4759-993b-0ed76ed09d78)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:value)]"
         id="tmp-r-2e4c6655-1e42-4be9-bfab-6f630da21136">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2e4c6655-1e42-4be9-bfab-6f630da21136)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-c5147c9b-ccdc-4e34-b06b-70d67eec61fc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c5147c9b-ccdc-4e34-b06b-70d67eec61fc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:value)]"
         id="tmp-r-507405fc-e95d-4f64-8e6f-dbfb13742aec">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-507405fc-e95d-4f64-8e6f-dbfb13742aec)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'])]"
         id="tmp-r-6011af9a-b40a-4ab3-a8c0-b89664667b72">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6011af9a-b40a-4ab3-a8c0-b89664667b72)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4046']|self::hl7:id|self::hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-8b32b3a1-dcf2-4c8c-9042-9b4af1912fcb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8b32b3a1-dcf2-4c8c-9042-9b4af1912fcb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-95b26bcd-a57d-4d52-8533-acd52451bf9c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-95b26bcd-a57d-4d52-8533-acd52451bf9c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'])]"
         id="tmp-r-beea5100-4c0c-41ac-9d8a-3f88b2bc3e95">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-beea5100-4c0c-41ac-9d8a-3f88b2bc3e95)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4047']|self::hl7:id|self::hl7:code[(@code='271733001' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-ba3440c8-ce5e-4053-a376-723cadf6014f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ba3440c8-ce5e-4053-a376-723cadf6014f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-7538107d-11cc-4912-8544-019335e33aac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7538107d-11cc-4912-8544-019335e33aac)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])]"
         id="tmp-r-8f82533e-1c27-404f-b583-b5af412490e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8f82533e-1c27-404f-b583-b5af412490e1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4035']|self::hl7:id|self::hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-d0896d18-dae9-4bf1-bc6f-fb7044eaaf93">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d0896d18-dae9-4bf1-bc6f-fb7044eaaf93)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-fcf6c74e-15ad-4afd-aa9b-4620bb7646c0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fcf6c74e-15ad-4afd-aa9b-4620bb7646c0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])]"
         id="tmp-r-995991e7-0f55-44c1-9210-66d2433c2eac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-995991e7-0f55-44c1-9210-66d2433c2eac)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4036']|self::hl7:id|self::hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-2b22fd1f-8db0-42f0-bf1a-27af99c8002e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2b22fd1f-8db0-42f0-bf1a-27af99c8002e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-356c6815-e020-41fe-8b14-90ab1e2c2512">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-356c6815-e020-41fe-8b14-90ab1e2c2512)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050'])]"
         id="tmp-r-cf45b7b2-d23d-48cc-b69c-0a93e0739e55">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cf45b7b2-d23d-48cc-b69c-0a93e0739e55)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3050']|self::hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']])]"
         id="tmp-r-0b8026b9-bce5-47a1-b5f6-a151ec7f49fa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0b8026b9-bce5-47a1-b5f6-a151ec7f49fa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])]"
         id="tmp-r-c2729a0a-619e-48f6-8cab-e8f5a9cfaa8e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c2729a0a-619e-48f6-8cab-e8f5a9cfaa8e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4050']|self::hl7:id|self::hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-a7787074-67b2-4262-a442-343cf5e5bd8f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a7787074-67b2-4262-a442-343cf5e5bd8f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-2b238fe8-7534-4a9f-be64-804462ac2912">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2b238fe8-7534-4a9f-be64-804462ac2912)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-7701ff2c-2673-4a4c-94a9-8d2b261982e8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7701ff2c-2673-4a4c-94a9-8d2b261982e8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-0bbbefff-e58b-4282-a11d-c79670fc0110">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0bbbefff-e58b-4282-a11d-c79670fc0110)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'])]"
         id="tmp-r-519c0c8b-2058-4254-80ee-1512e89a77eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-519c0c8b-2058-4254-80ee-1512e89a77eb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4051']|self::hl7:id|self::hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-e2f15cd2-a440-43f8-806a-f17f6d502d39">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e2f15cd2-a440-43f8-806a-f17f6d502d39)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-0b99cf17-5b30-4d82-996c-270d2008005f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0b99cf17-5b30-4d82-996c-270d2008005f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-162f4496-00d0-495a-8967-6dff9d8a10f0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-162f4496-00d0-495a-8967-6dff9d8a10f0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-4e1a52cb-156a-4f2b-8932-64f0c21998c4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4e1a52cb-156a-4f2b-8932-64f0c21998c4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])]"
         id="tmp-r-b597f741-e436-424e-a7d8-3fd19fdd8e20">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b597f741-e436-424e-a7d8-3fd19fdd8e20)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4052']|self::hl7:id|self::hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-290226ba-cf0b-4e5e-b8f2-375190b5402f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-290226ba-cf0b-4e5e-b8f2-375190b5402f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bc590d6c-d5c9-4a7d-bace-5b7f771212bc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bc590d6c-d5c9-4a7d-bace-5b7f771212bc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-f635504a-112a-4d8d-bbb9-0db76c6a50ac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f635504a-112a-4d8d-bbb9-0db76c6a50ac)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-605560bd-2f72-4887-8648-a896ced2141f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-605560bd-2f72-4887-8648-a896ced2141f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])]"
         id="tmp-r-f8d8ca0d-920f-4b23-a5c8-fd4bc1046c4b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f8d8ca0d-920f-4b23-a5c8-fd4bc1046c4b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4053']|self::hl7:id|self::hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-9af8b010-f4ff-4561-ba5b-8705a72b552c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9af8b010-f4ff-4561-ba5b-8705a72b552c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-a3460b27-b051-4d22-ae32-6b187fbfc73a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a3460b27-b051-4d22-ae32-6b187fbfc73a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-b135918c-bbcd-4773-86ed-0adffa8aac17">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b135918c-bbcd-4773-86ed-0adffa8aac17)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-387444e4-13ca-4c9a-96e1-9adb8c50a34f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-387444e4-13ca-4c9a-96e1-9adb8c50a34f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'])]"
         id="tmp-r-8f3ecca7-af59-4475-b6ef-092b3c0000c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8f3ecca7-af59-4475-b6ef-092b3c0000c9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4054']|self::hl7:id|self::hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-bcc0739f-b2ed-426f-9387-508a49cc21a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bcc0739f-b2ed-426f-9387-508a49cc21a5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-6f00f4e1-ad8d-4b30-8e8f-803a0bf95d24">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6f00f4e1-ad8d-4b30-8e8f-803a0bf95d24)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-1611b3e0-c6e9-4b80-bd7f-c6983198c35a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1611b3e0-c6e9-4b80-bd7f-c6983198c35a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-3949cb68-7621-4033-b9f6-ccf0a967bd63">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3949cb68-7621-4033-b9f6-ccf0a967bd63)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])]"
         id="tmp-r-89947066-6187-41af-b2ce-fbf63eb61638">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-89947066-6187-41af-b2ce-fbf63eb61638)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4055']|self::hl7:id|self::hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-1122b0ef-01fb-42f7-8753-1cde2f389166">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1122b0ef-01fb-42f7-8753-1cde2f389166)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-ed65eabb-0ea1-40ed-9ceb-10e21d571b66">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ed65eabb-0ea1-40ed-9ceb-10e21d571b66)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-d0160110-3349-4bdd-8d25-e6b78ccdc6b1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d0160110-3349-4bdd-8d25-e6b78ccdc6b1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-6981d261-ce61-4fe4-a81e-c6847226df5d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6981d261-ce61-4fe4-a81e-c6847226df5d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])]"
         id="tmp-r-4394cb7b-5bbf-4c93-b39d-8359487fa74c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4394cb7b-5bbf-4c93-b39d-8359487fa74c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4056']|self::hl7:id|self::hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-b89c0fde-6f64-4695-bb11-2e9f9193ba46">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b89c0fde-6f64-4695-bb11-2e9f9193ba46)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-045f7884-93d1-49c2-8929-1474a57c13ba">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-045f7884-93d1-49c2-8929-1474a57c13ba)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-abfd28c6-5018-404c-aa4d-fbe288b3cb3e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-abfd28c6-5018-404c-aa4d-fbe288b3cb3e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-7db99fd1-d94a-4996-82e0-276c0f4a9b83">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7db99fd1-d94a-4996-82e0-276c0f4a9b83)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])]"
         id="tmp-r-7d07e2c5-72da-450a-80ae-83f49c06c455">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7d07e2c5-72da-450a-80ae-83f49c06c455)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4057']|self::hl7:id|self::hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-959d4094-18e4-4ee4-9d54-60156ac357bc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-959d4094-18e4-4ee4-9d54-60156ac357bc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-a1a43e69-1dd2-4374-a81f-14474d978f69">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a1a43e69-1dd2-4374-a81f-14474d978f69)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])]"
         id="tmp-r-ab988517-ff06-4342-9a56-b70db657d900">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ab988517-ff06-4342-9a56-b70db657d900)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4058']|self::hl7:id|self::hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-76b9cd39-5676-48dd-9c7b-53ff603a05bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-76b9cd39-5676-48dd-9c7b-53ff603a05bb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-6b1f31a6-ebc9-486a-acd2-26fcbf9e62a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6b1f31a6-ebc9-486a-acd2-26fcbf9e62a5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])]"
         id="tmp-r-a10538d5-ef77-468a-94dc-b69fe5713789">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a10538d5-ef77-468a-94dc-b69fe5713789)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4059']|self::hl7:id|self::hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-6efe7efc-955a-4f5a-8e9f-28f37e96d960">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6efe7efc-955a-4f5a-8e9f-28f37e96d960)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-65a8566d-87c7-4626-ba9e-a99164e4069f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-65a8566d-87c7-4626-ba9e-a99164e4069f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])]"
         id="tmp-r-4a48b99b-322a-4eeb-b762-d53c85d359b3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4a48b99b-322a-4eeb-b762-d53c85d359b3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4060']|self::hl7:id|self::hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-f68ff089-2add-40f6-8a50-148410cd1451">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f68ff089-2add-40f6-8a50-148410cd1451)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-a283b63a-3a97-4874-9326-da8f15892476">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a283b63a-3a97-4874-9326-da8f15892476)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'])]"
         id="tmp-r-28bc6719-8f39-4f91-a939-a240db98d50b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-28bc6719-8f39-4f91-a939-a240db98d50b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4061']|self::hl7:id|self::hl7:code[(@code='268400002' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-f588f266-2b38-4e07-9d0d-fec1a226cd76">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f588f266-2b38-4e07-9d0d-fec1a226cd76)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-514c5270-5f7b-4392-ba2c-a4bf3403ec0f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-514c5270-5f7b-4392-ba2c-a4bf3403ec0f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])]"
         id="tmp-r-0dfcf586-d8cb-4960-9422-ea641748579e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0dfcf586-d8cb-4960-9422-ea641748579e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4062']|self::hl7:id|self::hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-ff89ba51-df0e-4f13-9f8b-b45622019397">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ff89ba51-df0e-4f13-9f8b-b45622019397)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e3292151-e9d2-4bfb-bf3b-76a0449c11d9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e3292151-e9d2-4bfb-bf3b-76a0449c11d9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])]"
         id="tmp-r-d8c4edc9-f27e-450d-897c-56edfef04a5c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d8c4edc9-f27e-450d-897c-56edfef04a5c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4063']|self::hl7:id|self::hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-af534296-a2ac-46af-af4d-5c8966b0af45">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-af534296-a2ac-46af-af4d-5c8966b0af45)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-653a5501-6ca2-4c1f-a551-dffa3db92947">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-653a5501-6ca2-4c1f-a551-dffa3db92947)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'])]"
         id="tmp-r-a78c2cb1-e01c-4331-9760-b4691d082ec8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a78c2cb1-e01c-4331-9760-b4691d082ec8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4064']|self::hl7:id|self::hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-fdad6c76-a3e2-4a19-ac0a-a7997bdf97d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fdad6c76-a3e2-4a19-ac0a-a7997bdf97d6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-8ab95a39-d8f6-422a-bc3a-2a231fb5dcc1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8ab95a39-d8f6-422a-bc3a-2a231fb5dcc1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051'])]"
         id="tmp-r-40b4eaeb-06a5-4b00-b5a4-eb926450263e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-40b4eaeb-06a5-4b00-b5a4-eb926450263e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3051']|self::hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']])]"
         id="tmp-r-2986e81a-0d09-40a9-801b-4c9d16542ffa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2986e81a-0d09-40a9-801b-4c9d16542ffa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065'])]"
         id="tmp-r-e5b14874-478e-4623-9041-eb230ca11259">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e5b14874-478e-4623-9041-eb230ca11259)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4065']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']])]"
         id="tmp-r-2ef83511-09e2-47d4-a237-95348cf1bbc5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2ef83511-09e2-47d4-a237-95348cf1bbc5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-416a2ad2-af89-4e93-bbd1-555afee939ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-416a2ad2-af89-4e93-bbd1-555afee939ee)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066'])]"
         id="tmp-r-d0e4c11e-5768-4945-a4f9-1cb4e3f604c4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d0e4c11e-5768-4945-a4f9-1cb4e3f604c4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4066']|self::hl7:id|self::hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:participant)]"
         id="tmp-r-090658f4-d7bb-43d9-b340-81bc3c631388">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-090658f4-d7bb-43d9-b340-81bc3c631388)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-efbd8e82-db06-4252-ad2a-ccc31bcf9a2d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-efbd8e82-db06-4252-ad2a-ccc31bcf9a2d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/*[not(self::hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-5eadf609-7767-4050-8551-53d222706e95">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5eadf609-7767-4050-8551-53d222706e95)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-ed903b85-f6af-4a55-8576-d55a8f937882">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ed903b85-f6af-4a55-8576-d55a8f937882)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-5445ce29-71a9-49bd-b929-c123f1e40a74">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5445ce29-71a9-49bd-b929-c123f1e40a74)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054'])]"
         id="tmp-r-5fb455cb-c521-495b-acf5-56d4583fd478">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5fb455cb-c521-495b-acf5-56d4583fd478)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3054']|self::hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-8e22d4bd-a51e-4890-a3a8-8b1e9337667b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8e22d4bd-a51e-4890-a3a8-8b1e9337667b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055'])]"
         id="tmp-r-b869da86-8ecd-4e80-8e2e-75cc9f0289fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b869da86-8ecd-4e80-8e2e-75cc9f0289fe)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3055']|self::hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']])]"
         id="tmp-r-fee6875d-a88d-4512-803a-6343ebe45f97">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fee6875d-a88d-4512-803a-6343ebe45f97)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048'])]"
         id="tmp-r-941a32ca-52b8-4a62-8600-fc0ecf1b1892">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-941a32ca-52b8-4a62-8600-fc0ecf1b1892)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4048']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']])]"
         id="tmp-r-73a4bab6-430c-430d-9a48-544e4d199d2b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-73a4bab6-430c-430d-9a48-544e4d199d2b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-e08723f4-3fe5-444d-a5c3-340f5e9b6c0f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e08723f4-3fe5-444d-a5c3-340f5e9b6c0f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])]"
         id="tmp-r-c0e4a31f-3f9d-4769-ac65-5819b654dc54">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c0e4a31f-3f9d-4769-ac65-5819b654dc54)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4049']|self::hl7:id|self::hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-4f14b4c3-f8da-438a-a6d8-a40b288230ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4f14b4c3-f8da-438a-a6d8-a40b288230ab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-ee78b92a-0de8-4e2a-8b4a-f0b93ce7bfb6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ee78b92a-0de8-4e2a-8b4a-f0b93ce7bfb6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-fd4affcb-3068-45fa-b488-1e582585c1b1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fd4affcb-3068-45fa-b488-1e582585c1b1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049'])]"
         id="tmp-r-b91e32f6-e806-43f2-81ae-77b38261127b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b91e32f6-e806-43f2-81ae-77b38261127b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3049']|self::hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']])]"
         id="tmp-r-b0947b06-fd5c-4cf2-ae5e-b87d7eea3b4e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b0947b06-fd5c-4cf2-ae5e-b87d7eea3b4e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])]"
         id="tmp-r-f602451c-3b52-477a-a1d0-6fdece95f64d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f602451c-3b52-477a-a1d0-6fdece95f64d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4042']|self::hl7:id|self::hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value|self::hl7:value)]"
         id="tmp-r-e8910107-73f6-48e9-81da-9ad7101c3ba3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e8910107-73f6-48e9-81da-9ad7101c3ba3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-6c0b5919-007f-4cd7-a8ee-b2bf431701e7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6c0b5919-007f-4cd7-a8ee-b2bf431701e7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-6c0a01e0-08ee-4b4b-8bdb-9acc837d6c12">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6c0a01e0-08ee-4b4b-8bdb-9acc837d6c12)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056'])]"
         id="tmp-r-903c373a-13b6-417c-81af-8f790fb7f0ff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-903c373a-13b6-417c-81af-8f790fb7f0ff)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3056']|self::hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]|self::hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']])]"
         id="tmp-r-6c4b832f-4286-44b1-b438-e9bfa2054885">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6c4b832f-4286-44b1-b438-e9bfa2054885)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])]"
         id="tmp-r-d36a9bce-8181-40cc-bf6c-96a958d88801">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d36a9bce-8181-40cc-bf6c-96a958d88801)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4067']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text)]"
         id="tmp-r-249cf527-b3ae-4a7c-8fbf-e0c0a96a9bfc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-249cf527-b3ae-4a7c-8fbf-e0c0a96a9bfc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-16622c2a-f82e-4d70-a13b-a564062ff95e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-16622c2a-f82e-4d70-a13b-a564062ff95e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/*[not(self::hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])]"
         id="tmp-r-14c2e887-9ba2-4d0b-92db-61dc538e4f64">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-14c2e887-9ba2-4d0b-92db-61dc538e4f64)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4068']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']])]"
         id="tmp-r-52638c14-a55f-49c8-957b-1e178ed62bcc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-52638c14-a55f-49c8-957b-1e178ed62bcc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069'])]"
         id="tmp-r-0957915b-0745-4d28-a725-eba371e93428">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0957915b-0745-4d28-a725-eba371e93428)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4069']|self::hl7:id|self::hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-c2d28b27-b8e1-4728-9e34-8b568de515a1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c2d28b27-b8e1-4728-9e34-8b568de515a1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057'])]"
         id="tmp-r-05e47fa0-f000-494b-a160-d56474a99a5e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-05e47fa0-f000-494b-a160-d56474a99a5e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3057']|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])]"
         id="tmp-r-990c1288-de81-400c-8398-401aa23d8a18">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-990c1288-de81-400c-8398-401aa23d8a18)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070'])]"
         id="tmp-r-2fc9e771-a3f7-4125-9a81-8e86619432e5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2fc9e771-a3f7-4125-9a81-8e86619432e5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4070']|self::hl7:id|self::hl7:code|self::hl7:text|self::hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']])]"
         id="tmp-r-0ba5ee69-4282-495d-b552-bcab33311838">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0ba5ee69-4282-495d-b552-bcab33311838)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-5ecb1129-9fab-4b5e-b63f-ccaac226e3e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5ecb1129-9fab-4b5e-b63f-ccaac226e3e1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/*[not(self::hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'])]"
         id="tmp-r-0ed72efc-aa07-4daa-ac8c-34a5c82e6f97">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0ed72efc-aa07-4daa-ac8c-34a5c82e6f97)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4071']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-b66fa5c3-8b0e-49cf-87ef-e797bc45e901">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b66fa5c3-8b0e-49cf-87ef-e797bc45e901)</assert>
   </rule>
</pattern>
