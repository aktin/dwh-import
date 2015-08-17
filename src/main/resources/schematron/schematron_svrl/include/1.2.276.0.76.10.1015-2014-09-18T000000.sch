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
         id="tmp-r-622061fe-f5a0-4ed0-bf52-d6a97bc6a629">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&gt;=1 and not(hl7:realmCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&gt;=1 and not(hl7:typeId[@root='2.16.840.1.113883.1.3']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.1015']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:title)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&gt;=1 and not(hl7:languageCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&gt;=1 and not(hl7:setId/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:setId ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:setId kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&gt;=1 and not(hl7:versionNumber/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&gt;=1 and not(hl7:recordTarget/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:author)&gt;=1 and not(hl7:author/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:author ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&gt;=1 and not(hl7:custodian/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:custodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:custodian kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&gt;=1 and not(hl7:documentationOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&gt;=1 and not(hl7:componentOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90002
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode"
         id="tmp-r-cc774d9f-ea99-450e-9ac7-4bcf6b04fd14">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArealmCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="@code">(CDArealmCode): Attribut @code MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or (string-length(@code)&gt;0 and not(matches(@code,'\s')))">(CDArealmCode): Attribute @code MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@code,' ') return if ($code=('DE')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or count($theAttValue) = count($theAttCheck)">(CDArealmCode): Der Wert von code MUSS 'Code DE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90003
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']"
         id="tmp-r-8a2e6c92-f805-4f31-813b-f425876e675b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtypeId): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@extension)=('POCD_HD000040')">(CDAtypeId): Der Wert von @extension MUSS 'POCD_HD000040' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.1.3')">(CDAtypeId): Der Wert von @root MUSS '2.16.840.1.113883.1.3' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']"
         id="tmp-r-8e322ffd-30b7-4561-aa54-ec2cea3f22bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.1015')">(EmergencymedicineNoteCDAdocument): Der Wert von @root MUSS '1.2.276.0.76.10.1015' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90004
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id"
         id="tmp-r-4a296cd1-0737-405a-bf13-c7bc05c3880e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90004-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-9f2569f5-ad36-4801-8e54-af2eb8464d7b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="@nullFlavor or (@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')">(EmergencymedicineNoteCDAdocument): Der Elementinhalt MUSS einer von 'code '34878-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title"
         id="tmp-r-f2bd6eaf-78ba-4a27-a2a2-7fd909f8f0c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90005-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90006
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime"
         id="tmp-r-d5fb69fa-209c-4911-980d-bb1f61b3492a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90006-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAeffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90007
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-d956479d-965b-4cf4-8185-791274141655">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAconfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAconfidentialityCode): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAconfidentialityCode): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90008
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode"
         id="tmp-r-41c1aad7-a3b8-4474-bc02-7771e36d988f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90008-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS.LANG"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId"
         id="tmp-r-7645a2b9-3241-4f70-9542-305109c33074">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber"
         id="tmp-r-2b0ff80d-c199-4840-9597-8943e75affbf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="INT.NONNEG"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1))">(CDAsetIdversionNumber): value MUSS im Bereich [1..] liegen  </assert>
      <let name="digitok" value="matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="$digitok or @nullFlavor">(CDAsetIdversionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget"
         id="tmp-r-d5a261cd-ae73-4e66-a0bb-03b3aee83558">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@typeCode)=('RCT') or not(@typeCode)">(CDArecordTargetnnar): Der Wert von @typeCode MUSS 'RCT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@contextControlCode)=('OP') or not(@contextControlCode)">(CDArecordTargetnnar): Der Wert von @contextControlCode MUSS 'OP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&lt;=1">(CDArecordTargetnnar): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole"
         id="tmp-r-a44ef876-04b5-469d-9849-89dbc852c4a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PAT') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDArecordTargetnnar): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDArecordTargetnnar): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDArecordTargetnnar): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patient ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&lt;=1">(CDArecordTargetnnar): Element hl7:patient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90024
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id
Item: (PatientIdentifier)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id"
         id="tmp-r-81c73cc8-0c2a-49a6-b051-dc1e6d2d0d9e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientIdentifier): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="@extension">(PatientIdentifier): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr"
         id="tmp-r-c6c4e0d6-bdfc-4950-9f1d-a5379fe5eafa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom"
         id="tmp-r-ecf6bcdf-2cc7-495a-a46f-6599cfb614b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient"
         id="tmp-r-561360f0-2da8-4fd4-8a16-9226a3e554b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDArecordTargetnnar): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 ">(CDArecordTargetnnar): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&gt;=1 ">(CDArecordTargetnnar): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&lt;=1">(CDArecordTargetnnar): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name"
         id="tmp-r-24807945-61c7-409b-ab2b-9fd45aed42bd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-cc3e125c-e09c-4097-95f1-a1b76d88d755">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDArecordTargetnnar): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.1 AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDArecordTargetnnar): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.1 AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime"
         id="tmp-r-685c0b68-0459-4065-afeb-e4640d2da9fa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author"
         id="tmp-r-5b4acff7-5cf8-4ab4-80b0-f17f3db4d65a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@typeCode)=('AUT') or not(@typeCode)">(CDAauthor): Der Wert von @typeCode MUSS 'AUT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 and not(hl7:time/@nullFlavor)">(CDAauthor): Element hl7:time ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDAauthor): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&gt;=1 and not(hl7:assignedAuthor/@nullFlavor)">(CDAauthor): Element hl7:assignedAuthor ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&lt;=1">(CDAauthor): Element hl7:assignedAuthor kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time"
         id="tmp-r-be06a1f6-dff4-4c73-8b52-5ce5333ed26e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor"
         id="tmp-r-9e1f64dd-41b0-4b84-a106-64550db81d0c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDAauthor): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDAauthor): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedPerson)&lt;=1">(CDAauthor): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:representedOrganization)&lt;=1">(CDAauthor): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id"
         id="tmp-r-23e37270-e45c-4c3d-9429-43aad0e4b538">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson"
         id="tmp-r-5bed1c3e-6e83-4b10-8384-01da2a7c482b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name"
         id="tmp-r-40adfb2f-267e-4ad8-8b28-887e2c36112b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization"
         id="tmp-r-b540478d-730b-444e-b2c2-ebd122209353">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAauthor): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id"
         id="tmp-r-f9010e1c-2f87-4578-9dae-d799ae088772">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="tmp-r-4a8a6ee7-1a0c-4bcd-8d9a-215ab3f859a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom"
         id="tmp-r-442dcad2-e626-4978-97a0-203637bd56d0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="tmp-r-96c7b377-78cf-420a-9de5-57835865457f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian"
         id="tmp-r-80620956-fa3f-4d11-9169-f86cfb9ef3d3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@typeCode)=('CST') or not(@typeCode)">(CDAcustodian): Der Wert von @typeCode MUSS 'CST' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&gt;=1 and not(hl7:assignedCustodian/@nullFlavor)">(CDAcustodian): Element hl7:assignedCustodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&lt;=1">(CDAcustodian): Element hl7:assignedCustodian kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian"
         id="tmp-r-86abc40a-ea9d-44e5-841f-73aed89b0fcc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:representedCustodianOrganization)&lt;=1">(CDAcustodian): Element hl7:representedCustodianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization"
         id="tmp-r-f3aba1c2-efc6-43be-800f-8f0d7e14dde3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAcustodian): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAcustodian): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAcustodian): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAcustodian): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id"
         id="tmp-r-bca30351-d5a5-48cc-bed1-bcb22acf4bf0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name"
         id="tmp-r-0a7c2e29-ab32-454c-b6d2-1b9bfbe731c8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom"
         id="tmp-r-8cd0587a-8bb5-40ba-a39b-9317b71d1aa7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr"
         id="tmp-r-eb928a96-7b4e-49ee-aa50-7b70c4b55761">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]"
         id="tmp-r-e31834e9-ab31-45e9-ba0e-739039eb06e4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@typeCode)=('HLD')">(HeaderParticipantKostentraeger): Der Wert von @typeCode MUSS 'HLD' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.2022'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.2022']/@nullFlavor)">(HeaderParticipantKostentraeger): Element hl7:templateId[@root='1.2.276.0.76.10.2022'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:time)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedEntity)&gt;=1 and not(hl7:associatedEntity/@nullFlavor)">(HeaderParticipantKostentraeger): Element hl7:associatedEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedEntity)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:associatedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:templateId[@root='1.2.276.0.76.10.2022']
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:templateId[@root='1.2.276.0.76.10.2022']"
         id="tmp-r-ef8b91b2-3e5b-4f19-a1f8-a3daba10af53">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@root)=('1.2.276.0.76.10.2022')">(HeaderParticipantKostentraeger): Der Wert von @root MUSS '1.2.276.0.76.10.2022' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time"
         id="tmp-r-d353e0a0-a147-4541-b512-db082828f34b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity"
         id="tmp-r-90c67794-4ede-4aa4-867c-e94c406590af">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode)=('POLHOLD')">(HeaderParticipantKostentraeger): Der Wert von @classCode MUSS 'POLHOLD' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="hl7:code/@code!='FAMDEP' or count(hl7:associatedPerson)=1">(HeaderParticipantKostentraeger): Wenn das Versicherungsverhältnis "familienversichert" ist, dann muss eine associatedPerson angegeben sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:code)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:code kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedPerson)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:associatedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:scopingOrganization)&gt;=1 ">(HeaderParticipantKostentraeger): Element hl7:scopingOrganization ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:scopingOrganization)&lt;=1">(HeaderParticipantKostentraeger): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:id
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:id"
         id="tmp-r-e2c0cf56-6d9f-483d-86aa-709474eedbd3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code"
         id="tmp-r-5e936381-20ab-4422-be0a-1bbf0908938a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:addr
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:addr"
         id="tmp-r-1429bf37-d10d-456b-bf91-93f1df6adea1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:telecom
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:telecom"
         id="tmp-r-1f159b30-1796-4d05-a9ea-9ac2a7a31cb1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderParticipantKostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson"
         id="tmp-r-661f0c75-8421-4b07-bb6f-1814c45b925d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(HeaderParticipantKostentraeger): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderParticipantKostentraeger): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson/hl7:name"
         id="tmp-r-8467611b-a213-43db-b2f9-062642cc0ae2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization
Item: (HeaderParticipantKostentraeger)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization"
         id="tmp-r-2b2adf80-75bc-4666-9c84-f51869267067">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(HeaderParticipantKostentraeger): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderParticipantKostentraeger): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:id"
         id="tmp-r-d0cb1de6-7030-4ff7-81ff-cd6cb7350da4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name"
         id="tmp-r-7ce05081-3582-46aa-8620-9ee243d8bc5a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:telecom"
         id="tmp-r-cc597280-e240-4cc3-baf4-f139fa75bf43">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:addr"
         id="tmp-r-a1d0c191-5d3a-4d9d-9c81-9bb3077c953c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf"
         id="tmp-r-d8324517-c0b9-45b4-8ad4-dae9dfe8c3ff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('DOC')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'DOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&gt;=1 ">(CDADocumentationOf): Element hl7:serviceEvent ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&lt;=1">(CDADocumentationOf): Element hl7:serviceEvent kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent"
         id="tmp-r-9b9ac58c-9b6d-43dc-a3e0-7880b48acb87">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ACT')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@moodCode)=('EVN')">(CDADocumentationOf): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDADocumentationOf): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDADocumentationOf): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&gt;=1 and not(hl7:performer/@nullFlavor)">(CDADocumentationOf): Element hl7:performer ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&lt;=1">(CDADocumentationOf): Element hl7:performer kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime"
         id="tmp-r-04ef0ed0-c7c4-4af5-9199-afd318d52103">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&gt;=1 and not(cda:low/@nullFlavor)">(CDADocumentationOf): Element cda:low ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&lt;=1">(CDADocumentationOf): Element cda:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&gt;=1 and not(cda:high/@nullFlavor)">(CDADocumentationOf): Element cda:high ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&lt;=1">(CDADocumentationOf): Element cda:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low"
         id="tmp-r-46570165-343d-470a-999c-0ead5cb56ea4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high"
         id="tmp-r-6e40a9d4-75f6-479a-bd47-27e7b983c0b8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer"
         id="tmp-r-c67d9a7f-db2d-4a41-9715-2b24f68ba513">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('PRF')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'PRF' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 ">(CDADocumentationOf): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDADocumentationOf): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&gt;=1 and not(hl7:assignedEntity/@nullFlavor)">(CDADocumentationOf): Element hl7:assignedEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&lt;=1">(CDADocumentationOf): Element hl7:assignedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time"
         id="tmp-r-26e65e3b-3f83-4ce1-ab06-5f0615a7d92a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDADocumentationOf): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&lt;=1">(CDADocumentationOf): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&gt;=1 ">(CDADocumentationOf): Element hl7:high ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&lt;=1">(CDADocumentationOf): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low"
         id="tmp-r-44b03aa8-ae39-4c04-a0dc-e749351cd757">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high"
         id="tmp-r-6a86c944-39dc-410a-998a-90a697440fdd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity"
         id="tmp-r-fb0df02c-5169-4097-9231-df181d0b49f5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDADocumentationOf): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDADocumentationOf): Element hl7:id kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id"
         id="tmp-r-c3f07b44-824c-46b5-b007-f1e02ef81676">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@nullFlavor)=('NA')">(CDADocumentationOf): Der Wert von @nullFlavor MUSS 'NA' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf"
         id="tmp-r-21ee9fb0-b3dc-4d44-a3fc-173d500135a3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(CDAEncompassingEncounter): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:encompassingEncounter ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&lt;=1">(CDAEncompassingEncounter): Element hl7:encompassingEncounter kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter"
         id="tmp-r-94523174-15e7-48d4-a608-999f30516ae4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@classCode)=('ENC') or not(@classCode)">(CDAEncompassingEncounter): Der Wert von @classCode MUSS 'ENC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(CDAEncompassingEncounter): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDAEncompassingEncounter): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDAEncompassingEncounter): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:dischargeDispositionCode)&lt;=1">(CDAEncompassingEncounter): Element hl7:dischargeDispositionCode kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime"
         id="tmp-r-59377a9e-b9ea-4b05-aa0c-2e4383018419">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&lt;=1">(CDAEncompassingEncounter): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:high)&lt;=1">(CDAEncompassingEncounter): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low"
         id="tmp-r-0fc59b8f-fc72-4a6a-9417-a9c0fafb6c24">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high"
         id="tmp-r-33e8eabf-b8d6-4ca9-b7dc-849eda42309c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode"
         id="tmp-r-21910274-d4f2-432e-88fd-94171d7ce731">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAEncompassingEncounter): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAEncompassingEncounter): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient"
         id="tmp-r-9fb5c2b2-21eb-4b97-a032-5b464caa4083">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="@typeCode">(HeaderInformationRecipient): Attribut @typeCode MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(HeaderInformationRecipient): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@typeCode,' ') return if ($code=('PRCP','TRC')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or count($theAttValue) = count($theAttCheck)">(HeaderInformationRecipient): Der Wert von typeCode MUSS 'Code PRCP oder Code TRC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&gt;=1 and not(hl7:intendedRecipient/@nullFlavor)">(HeaderInformationRecipient): Element hl7:intendedRecipient ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:intendedRecipient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient"
         id="tmp-r-8cc02a84-39ec-45dd-be7d-7fc4fb512601">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:id)&gt;=1 ">(HeaderInformationRecipient): Element hl7:id ist required [min 1x].</assert>
      <let name="elmcount"
           value="count(hl7:informationRecipient|hl7:receivedOrganization)"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="$elmcount&gt;=1">(HeaderInformationRecipient): Auswahl (hl7:informationRecipient oder hl7:receivedOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:informationRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:informationRecipient kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:receivedOrganization)&lt;=1">(HeaderInformationRecipient): Element hl7:receivedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id"
         id="tmp-r-f97a2cfd-01b1-43e2-be6e-6f547132b847">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient"
         id="tmp-r-e27f5f85-6182-4bec-820f-415b2b8e4203">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name"
         id="tmp-r-c20e32b1-4faa-4559-bbef-1be7368c6cfd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization"
         id="tmp-r-a589c0fb-754f-44bb-84a0-627222a9d055">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderInformationRecipient): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id"
         id="tmp-r-ea856f8e-682c-46c6-8d3b-fbf5d60b5d8b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name"
         id="tmp-r-28954402-15b7-4cfd-ade9-8ca72daed690">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom"
         id="tmp-r-7283c311-ca5b-4022-8d94-47859ab87fc9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr"
         id="tmp-r-3e80f3c9-cf30-4f96-bdb0-e8631449e09f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component"
         id="tmp-r-93f7c5f2-fb69-4b4c-9d58-760a03f14016">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody"
         id="tmp-r-5a59e14b-cf2b-42ee-b9fd-35a9dc4ff37f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@classCode)=('DOCBODY') or not(@classCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @classCode MUSS 'DOCBODY' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015'])]"
         id="tmp-r-9c4eb98b-39fd-4aa0-8575-2239efcd7267">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9c4eb98b-39fd-4aa0-8575-2239efcd7267)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/*[not(self::hl7:realmCode|self::hl7:typeId[@root='2.16.840.1.113883.1.3']|self::hl7:templateId[@root='1.2.276.0.76.10.1015']|self::hl7:id|self::hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:effectiveTime|self::hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:languageCode|self::hl7:setId|self::hl7:versionNumber|self::hl7:recordTarget|self::hl7:author|self::hl7:custodian|self::hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]|self::hl7:documentationOf|self::hl7:componentOf|self::hl7:informationRecipient|self::hl7:component)]"
         id="tmp-r-ea57cddd-29b2-4729-a782-9a72dff2916c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ea57cddd-29b2-4729-a782-9a72dff2916c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/*[not(self::hl7:patientRole)]"
         id="tmp-r-d2223685-2a6c-446f-b2f0-79e9c628ce4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d2223685-2a6c-446f-b2f0-79e9c628ce4f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/*[not(self::hl7:id|self::hl7:addr|self::hl7:telecom|self::hl7:patient)]"
         id="tmp-r-483c483f-7113-465a-816e-d4a34384cb9c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-483c483f-7113-465a-816e-d4a34384cb9c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/*[not(self::hl7:name|self::hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:birthTime)]"
         id="tmp-r-dc800499-19c1-4c27-b701-95dd265359ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dc800499-19c1-4c27-b701-95dd265359ab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/*[not(self::hl7:time|self::hl7:assignedAuthor)]"
         id="tmp-r-83ad8be4-2443-4dc3-a396-59c891d42f72">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-83ad8be4-2443-4dc3-a396-59c891d42f72)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/*[not(self::hl7:id|self::hl7:assignedPerson|self::hl7:representedOrganization)]"
         id="tmp-r-35c90b59-f95c-4170-addb-555ceb87f646">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-35c90b59-f95c-4170-addb-555ceb87f646)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/*[not(self::hl7:name)]"
         id="tmp-r-7e59bcde-ba3f-4cfa-8cc4-5ee05cb87663">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7e59bcde-ba3f-4cfa-8cc4-5ee05cb87663)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-8b695c4b-afde-4e3f-911c-064c64ac6803">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8b695c4b-afde-4e3f-911c-064c64ac6803)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/*[not(self::hl7:assignedCustodian)]"
         id="tmp-r-dc4be017-fd95-4d2f-a9d3-bdea09c43835">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dc4be017-fd95-4d2f-a9d3-bdea09c43835)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/*[not(self::hl7:representedCustodianOrganization)]"
         id="tmp-r-c38d0e2d-0308-481e-ade3-4553849a5c39">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c38d0e2d-0308-481e-ade3-4553849a5c39)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-efaa0522-ee98-4874-aafe-6a340adad6c0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-efaa0522-ee98-4874-aafe-6a340adad6c0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.2022']|self::hl7:time|self::hl7:associatedEntity)]"
         id="tmp-r-df97b9a5-e1b9-4a43-827b-01154a4af05e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-df97b9a5-e1b9-4a43-827b-01154a4af05e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/*[not(self::hl7:id|self::hl7:code|self::hl7:addr|self::hl7:telecom|self::hl7:associatedPerson|self::hl7:scopingOrganization)]"
         id="tmp-r-7b901220-9a8f-4127-9db3-fd201f0d9c32">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7b901220-9a8f-4127-9db3-fd201f0d9c32)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:associatedPerson/*[not(self::hl7:name)]"
         id="tmp-r-74b11666-d1a4-46c0-9116-62c108f275a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-74b11666-d1a4-46c0-9116-62c108f275a2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:scopingOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-bee5b72f-8d2b-41e6-a99b-3f807a78c0b2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(.)">(HeaderParticipantKostentraeger): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bee5b72f-8d2b-41e6-a99b-3f807a78c0b2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/*[not(self::hl7:serviceEvent)]"
         id="tmp-r-99d82303-af8b-486d-acbe-25411e86001c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-99d82303-af8b-486d-acbe-25411e86001c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/*[not(self::hl7:effectiveTime|self::hl7:performer)]"
         id="tmp-r-32bbf422-9099-41fa-afd4-cc1ec7a91812">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-32bbf422-9099-41fa-afd4-cc1ec7a91812)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/*[not(self::cda:low|self::cda:high)]"
         id="tmp-r-33d892e1-a940-49c3-8716-d82305f6c981">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-33d892e1-a940-49c3-8716-d82305f6c981)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/*[not(self::hl7:time|self::hl7:assignedEntity)]"
         id="tmp-r-736ec288-132e-490d-b841-143a795b9546">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-736ec288-132e-490d-b841-143a795b9546)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-5c27c6ef-0965-47f2-984c-6dd06373955f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5c27c6ef-0965-47f2-984c-6dd06373955f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/*[not(self::hl7:id)]"
         id="tmp-r-bfd63d3b-385e-46fd-997d-6a3c020e582d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bfd63d3b-385e-46fd-997d-6a3c020e582d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/*[not(self::hl7:encompassingEncounter)]"
         id="tmp-r-25595621-8ce6-44c0-9eeb-c5e927fe9bb6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-25595621-8ce6-44c0-9eeb-c5e927fe9bb6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/*[not(self::hl7:effectiveTime|self::hl7:dischargeDispositionCode)]"
         id="tmp-r-d7b3f0e6-0f66-48dd-9d0b-c585ac1acc62">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d7b3f0e6-0f66-48dd-9d0b-c585ac1acc62)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-798cd688-0dd1-41fc-819a-92dd2e4973fa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-798cd688-0dd1-41fc-819a-92dd2e4973fa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/*[not(self::hl7:intendedRecipient)]"
         id="tmp-r-e52e6794-3c8c-4eb2-9ff9-8e00d1b29bd6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e52e6794-3c8c-4eb2-9ff9-8e00d1b29bd6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/*[not(self::hl7:id|self::hl7:informationRecipient|self::hl7:receivedOrganization)]"
         id="tmp-r-a358d631-f723-4c07-8dcc-74e89a1a503c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a358d631-f723-4c07-8dcc-74e89a1a503c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/*[not(self::hl7:name)]"
         id="tmp-r-e0898273-f0bc-432e-bc21-3f0df412a42a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e0898273-f0bc-432e-bc21-3f0df412a42a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-3362ba38-179e-4b22-bb69-bc25a5d96ca6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3362ba38-179e-4b22-bb69-bc25a5d96ca6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/*[not(self::hl7:structuredBody)]"
         id="tmp-r-84d790f2-c837-4df9-ae68-01a2e601605e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-84d790f2-c837-4df9-ae68-01a2e601605e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/*[not(self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])]"
         id="tmp-r-20385ee0-1d5f-4be7-a3d9-e027c6680f79">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-20385ee0-1d5f-4be7-a3d9-e027c6680f79)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045'])]"
         id="tmp-r-74aecf52-d491-4322-a50c-7082c12085dd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-74aecf52-d491-4322-a50c-7082c12085dd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3045']|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']])]"
         id="tmp-r-a76ee80a-9e44-4937-9ded-52dd29308f2c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a76ee80a-9e44-4937-9ded-52dd29308f2c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'])]"
         id="tmp-r-9b3a6a4b-7f8f-494f-8734-428dc5caf3c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9b3a6a4b-7f8f-494f-8734-428dc5caf3c7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4037']|self::hl7:id|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-bd2bc3fd-53bc-4eb9-8392-69c351fce5b0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bd2bc3fd-53bc-4eb9-8392-69c351fce5b0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-1d3d8895-2cc1-449c-839a-9c32029c2d83">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1d3d8895-2cc1-449c-839a-9c32029c2d83)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime/*[not(self::hl7:high)]"
         id="tmp-r-8202fedf-7770-4f24-b0d9-4bd15515e31e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8202fedf-7770-4f24-b0d9-4bd15515e31e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046'])]"
         id="tmp-r-6ef52045-d0ca-42b7-8688-525b1476630f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6ef52045-d0ca-42b7-8688-525b1476630f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3046']|self::hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']])]"
         id="tmp-r-e96afbc3-d1f6-4a41-89a9-07e15505f8bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e96afbc3-d1f6-4a41-89a9-07e15505f8bb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])]"
         id="tmp-r-d2a3e2be-38f9-49d7-a8e1-8805e4f5da37">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d2a3e2be-38f9-49d7-a8e1-8805e4f5da37)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4038']|self::hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-9791ff8d-216d-4c40-a190-f3df56d85d96">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9791ff8d-216d-4c40-a190-f3df56d85d96)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-8a1e4120-06de-45a4-9815-3a1b0e8fff01">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8a1e4120-06de-45a4-9815-3a1b0e8fff01)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-cf6c0611-1430-4dc8-ab39-5b024ae3b625">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cf6c0611-1430-4dc8-ab39-5b024ae3b625)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-1cf40533-06d4-4db3-b26f-4e4dbd0c9b32">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1cf40533-06d4-4db3-b26f-4e4dbd0c9b32)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053'])]"
         id="tmp-r-eca8eaa9-d5ea-4ebf-a293-35aea7c356a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-eca8eaa9-d5ea-4ebf-a293-35aea7c356a6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3053']|self::hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-a33d1832-41b8-4874-b8d0-7f4dd35574cb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a33d1832-41b8-4874-b8d0-7f4dd35574cb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048'])]"
         id="tmp-r-d39cd704-25ae-406b-96d3-670424c039a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d39cd704-25ae-406b-96d3-670424c039a2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3048']|self::hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']])]"
         id="tmp-r-a4d64588-197f-4241-8f76-19ad8678623a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a4d64588-197f-4241-8f76-19ad8678623a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039'])]"
         id="tmp-r-eabd7907-2cd0-4e73-bda7-016765676910">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-eabd7907-2cd0-4e73-bda7-016765676910)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4039']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']])]"
         id="tmp-r-daf643d2-00ad-4470-b8c3-a8ff67ad03aa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-daf643d2-00ad-4470-b8c3-a8ff67ad03aa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-e6f20f9f-e9a3-4e00-8bcc-7a8ed4e2b0f8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e6f20f9f-e9a3-4e00-8bcc-7a8ed4e2b0f8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])]"
         id="tmp-r-de62b27c-bac6-4c67-9f9b-3ddda2662f30">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-de62b27c-bac6-4c67-9f9b-3ddda2662f30)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4040']|self::hl7:id|self::hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-5620dabb-3b69-4561-bf96-d96402c1b065">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5620dabb-3b69-4561-bf96-d96402c1b065)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-eab2427b-cf70-4b5e-a3e7-4ab6f10c37a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-eab2427b-cf70-4b5e-a3e7-4ab6f10c37a8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-984878db-782f-473e-a419-529ddd606c29">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-984878db-782f-473e-a419-529ddd606c29)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047'])]"
         id="tmp-r-06185e6b-20eb-4a24-81e9-b6d1c499083f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-06185e6b-20eb-4a24-81e9-b6d1c499083f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3047']|self::hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]|self::hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']])]"
         id="tmp-r-c9a7a955-7c24-4bee-8846-411a25aa406f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c9a7a955-7c24-4bee-8846-411a25aa406f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'])]"
         id="tmp-r-0a0dd83a-ad1f-43d2-b329-f6166fe9e758">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0a0dd83a-ad1f-43d2-b329-f6166fe9e758)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4043']|self::hl7:id|self::hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-2fa5cf40-14df-40ef-ae17-41ae9ffa5677">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2fa5cf40-14df-40ef-ae17-41ae9ffa5677)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-8cf7aca4-6ade-465a-8afe-fbc49f6ebee5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8cf7aca4-6ade-465a-8afe-fbc49f6ebee5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/*[not(self::hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])]"
         id="tmp-r-18649920-40ca-4994-aafb-bd11e90be35a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-18649920-40ca-4994-aafb-bd11e90be35a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4044']|self::hl7:id|self::hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:consumable)]"
         id="tmp-r-3095f9d9-b849-4629-beea-4a33563d60c2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3095f9d9-b849-4629-beea-4a33563d60c2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-6883a14c-02d0-4482-a511-a3cc9a9fa055">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6883a14c-02d0-4482-a511-a3cc9a9fa055)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/*[not(self::hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-72422f96-286a-4e9e-930c-943eab60d2cf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-72422f96-286a-4e9e-930c-943eab60d2cf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-b8fbd530-7f7e-4d60-8c4a-30e2b4469890">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b8fbd530-7f7e-4d60-8c4a-30e2b4469890)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-544abded-c5e9-43a0-a6a4-3b9309ceb8cd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-544abded-c5e9-43a0-a6a4-3b9309ceb8cd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])]"
         id="tmp-r-3f2755c9-fa3a-474a-b826-7ef9973c9596">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3f2755c9-fa3a-474a-b826-7ef9973c9596)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4045']|self::hl7:id|self::hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-42c78183-5001-42d6-ac61-585e6483b83e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-42c78183-5001-42d6-ac61-585e6483b83e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b025ac9c-ce45-4337-bff7-c2a96dc0dd87">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b025ac9c-ce45-4337-bff7-c2a96dc0dd87)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072'])]"
         id="tmp-r-758982c4-556a-4629-b575-6c06398a7bdf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-758982c4-556a-4629-b575-6c06398a7bdf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4072']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']])]"
         id="tmp-r-36e324c8-1029-45db-a606-5ed3fd2cecfb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-36e324c8-1029-45db-a606-5ed3fd2cecfb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-4cd301a6-4395-4065-ad42-4a773ec79e09">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4cd301a6-4395-4065-ad42-4a773ec79e09)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'])]"
         id="tmp-r-fe84173d-994b-4d37-ab92-410205442b43">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fe84173d-994b-4d37-ab92-410205442b43)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4073']|self::hl7:id|self::hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-2c5b2303-d316-44fe-aaaa-10dbc03b0d06">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c5b2303-d316-44fe-aaaa-10dbc03b0d06)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-cb8f3042-ecfe-4b24-83b8-e75325d517b6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cb8f3042-ecfe-4b24-83b8-e75325d517b6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-0c0c18b7-b4ad-4183-bf11-93be89363a77">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0c0c18b7-b4ad-4183-bf11-93be89363a77)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/*[not(self::hl7:qualifier[hl7:name/@code='246090004']|self::hl7:qualifier[hl7:name/@code='246075003'])]"
         id="tmp-r-ea37172b-4f2a-4437-bff2-77e9cbeed497">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ea37172b-4f2a-4437-bff2-77e9cbeed497)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246090004']/*[not(self::hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:value[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-97cebfdd-57b7-4744-899a-a766c45bf1dc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-97cebfdd-57b7-4744-899a-a766c45bf1dc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246075003']/*[not(self::hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-ad9811c7-868f-4e90-925f-9a301bf4c791">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ad9811c7-868f-4e90-925f-9a301bf4c791)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044'])]"
         id="tmp-r-befafea1-dff0-42c7-8c80-895d57d1b8b1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-befafea1-dff0-42c7-8c80-895d57d1b8b1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3044']|self::hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']])]"
         id="tmp-r-b15416ba-cf52-4e8e-9a6e-372490dad7c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b15416ba-cf52-4e8e-9a6e-372490dad7c7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])]"
         id="tmp-r-5f6469ff-9ca3-4709-8c50-8f16808cb642">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5f6469ff-9ca3-4709-8c50-8f16808cb642)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4030']|self::hl7:id|self::hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-e6438e8c-d6a7-40f2-99cb-0a31378bfe40">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e6438e8c-d6a7-40f2-99cb-0a31378bfe40)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/*[not(self::hl7:originalText)]"
         id="tmp-r-c77e52dc-bd9b-49f4-8812-f3d9e17be06e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c77e52dc-bd9b-49f4-8812-f3d9e17be06e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-ae9308fa-1160-4684-80b3-dfea4bc0d978">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ae9308fa-1160-4684-80b3-dfea4bc0d978)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'])]"
         id="tmp-r-27c058f8-7e73-44c9-a3bc-7817d03e495f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-27c058f8-7e73-44c9-a3bc-7817d03e495f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4031']|self::hl7:id|self::hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-7b82d2d0-95fa-476d-a3cf-3c34258543be">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7b82d2d0-95fa-476d-a3cf-3c34258543be)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-cf0380a1-f46d-4f39-a6bc-7c2ae7b2951d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cf0380a1-f46d-4f39-a6bc-7c2ae7b2951d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])]"
         id="tmp-r-588f91e5-b28d-4324-87b1-9fdf74405f35">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-588f91e5-b28d-4324-87b1-9fdf74405f35)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4032']|self::hl7:id|self::hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-8dc6c82a-7fd9-4a5a-96f3-48d6b1d4ffe0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8dc6c82a-7fd9-4a5a-96f3-48d6b1d4ffe0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-266b03e4-bc9e-4143-b239-581b977ff75e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-266b03e4-bc9e-4143-b239-581b977ff75e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])]"
         id="tmp-r-9e842add-2b15-453c-9e21-0b69b0007d99">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9e842add-2b15-453c-9e21-0b69b0007d99)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4033']|self::hl7:id|self::hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-f011c4ce-8ba7-4fe7-bae1-1bbc52c58ef7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f011c4ce-8ba7-4fe7-bae1-1bbc52c58ef7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e1d45859-c5df-438e-b7c1-d6439a698828">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e1d45859-c5df-438e-b7c1-d6439a698828)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034'])]"
         id="tmp-r-d020160f-483a-45b0-921f-42ee83e5bfa0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d020160f-483a-45b0-921f-42ee83e5bfa0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4034']|self::hl7:id|self::hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:text|self::hl7:effectiveTime|self::hl7:value|self::hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]])]"
         id="tmp-r-07229d41-59f1-4e9e-a054-392676ef2948">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-07229d41-59f1-4e9e-a054-392676ef2948)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-789e6bfa-84f1-4c23-9693-35fb2083f5cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-789e6bfa-84f1-4c23-9693-35fb2083f5cc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-4f6a6639-7aa5-4657-833b-416e0f92febf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4f6a6639-7aa5-4657-833b-416e0f92febf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-0de4cd9b-49d7-48a5-b500-61d7585a05a9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0de4cd9b-49d7-48a5-b500-61d7585a05a9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-8a40bc34-b3d3-4fcd-867f-9cc35fa92ae1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8a40bc34-b3d3-4fcd-867f-9cc35fa92ae1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-6a889411-5a4b-4bc5-9936-9156de4f4824">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6a889411-5a4b-4bc5-9936-9156de4f4824)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-a171f0a1-b12e-4d5d-aaa2-c97bf457f394">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a171f0a1-b12e-4d5d-aaa2-c97bf457f394)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-a8f0dbbc-80b5-4125-81f0-b95a245bb821">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a8f0dbbc-80b5-4125-81f0-b95a245bb821)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'])]"
         id="tmp-r-ab9d2bf8-0087-47cf-8e57-64a702dbac76">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ab9d2bf8-0087-47cf-8e57-64a702dbac76)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4046']|self::hl7:id|self::hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-b9660ae2-9464-4d1b-8998-9ef05964835c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b9660ae2-9464-4d1b-8998-9ef05964835c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-ad16db66-5301-4d3c-b1ea-de231e8488b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ad16db66-5301-4d3c-b1ea-de231e8488b9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'])]"
         id="tmp-r-b4405876-fec4-41cd-9a3c-1de2edffb710">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b4405876-fec4-41cd-9a3c-1de2edffb710)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4047']|self::hl7:id|self::hl7:code[(@code='271733001' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-6e2b2867-d9c4-44a4-8fc7-c0ae1e4107a3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6e2b2867-d9c4-44a4-8fc7-c0ae1e4107a3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c5ba6382-3081-4f57-9f75-d026dd55fce3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c5ba6382-3081-4f57-9f75-d026dd55fce3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])]"
         id="tmp-r-eb68cea7-1043-431a-b09b-32cbce4318ff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-eb68cea7-1043-431a-b09b-32cbce4318ff)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4035']|self::hl7:id|self::hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-009cf87f-d8d6-485b-8e32-7a3fb78c132c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-009cf87f-d8d6-485b-8e32-7a3fb78c132c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-a855ca73-8cfa-4283-869e-57605f04ef26">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a855ca73-8cfa-4283-869e-57605f04ef26)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])]"
         id="tmp-r-d1aed24e-c3db-4951-a4ca-87a9aebf1226">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d1aed24e-c3db-4951-a4ca-87a9aebf1226)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4036']|self::hl7:id|self::hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-9a1ea016-55cd-449a-b374-c4303dbe9b9f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9a1ea016-55cd-449a-b374-c4303dbe9b9f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-0c50278e-3323-48f6-af0c-22206de9f6e5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0c50278e-3323-48f6-af0c-22206de9f6e5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050'])]"
         id="tmp-r-82845e51-9c4b-464a-917d-58f1a0bcec76">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-82845e51-9c4b-464a-917d-58f1a0bcec76)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3050']|self::hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']])]"
         id="tmp-r-3c7f61f2-8e44-4f72-a99e-d8af433121a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3c7f61f2-8e44-4f72-a99e-d8af433121a8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])]"
         id="tmp-r-a5e427bc-fa27-49e2-81d0-e64ff0d55be9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a5e427bc-fa27-49e2-81d0-e64ff0d55be9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4050']|self::hl7:id|self::hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-3da8ce78-4fbc-4404-aac6-9c3a19f75351">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3da8ce78-4fbc-4404-aac6-9c3a19f75351)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-88b8bf3c-8065-45b5-afe9-f797e89f5ec3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-88b8bf3c-8065-45b5-afe9-f797e89f5ec3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-feaafbcd-f266-43ad-9426-7fb7fff88bfe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-feaafbcd-f266-43ad-9426-7fb7fff88bfe)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-2c55fbe8-8192-43ea-a44a-b3a7a20cd1c2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2c55fbe8-8192-43ea-a44a-b3a7a20cd1c2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'])]"
         id="tmp-r-e2c3d072-5307-4f61-922f-417fff49aed0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e2c3d072-5307-4f61-922f-417fff49aed0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4051']|self::hl7:id|self::hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-d3070cff-078d-4a88-9f0e-0fb7c81257b4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d3070cff-078d-4a88-9f0e-0fb7c81257b4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c0440112-831d-4b3a-9750-cb73b276acdd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c0440112-831d-4b3a-9750-cb73b276acdd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-e0903933-f197-447d-aed1-2c7f90d40f34">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e0903933-f197-447d-aed1-2c7f90d40f34)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-4eaa15c8-b900-43d1-be88-588ca36de624">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4eaa15c8-b900-43d1-be88-588ca36de624)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])]"
         id="tmp-r-f5147266-5848-4997-844b-7a8a7ce68b04">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f5147266-5848-4997-844b-7a8a7ce68b04)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4052']|self::hl7:id|self::hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-29f30f5f-a148-493a-8ac7-0446072d7b09">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-29f30f5f-a148-493a-8ac7-0446072d7b09)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-341b533a-90fe-450d-858f-2a5984d6e26f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-341b533a-90fe-450d-858f-2a5984d6e26f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-603a8e5e-89bf-4626-817c-efe4503b366a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-603a8e5e-89bf-4626-817c-efe4503b366a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-16d0166d-bf5f-4159-b35b-10ac92c707ad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-16d0166d-bf5f-4159-b35b-10ac92c707ad)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])]"
         id="tmp-r-887d20d8-3aca-4b7e-ac05-042a15fb1628">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-887d20d8-3aca-4b7e-ac05-042a15fb1628)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4053']|self::hl7:id|self::hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-603213e2-5c3f-462a-a4da-bb8a822738a4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-603213e2-5c3f-462a-a4da-bb8a822738a4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-841dd5c5-68dd-451e-8e30-d824c78c5911">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-841dd5c5-68dd-451e-8e30-d824c78c5911)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-d74c6cef-6f19-47fe-8960-7862a16128a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d74c6cef-6f19-47fe-8960-7862a16128a6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-a67e5854-a65e-44c1-9932-1764d0304490">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a67e5854-a65e-44c1-9932-1764d0304490)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'])]"
         id="tmp-r-059b8fb4-d2ef-4959-bd3a-f4f8df5bbb42">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-059b8fb4-d2ef-4959-bd3a-f4f8df5bbb42)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4054']|self::hl7:id|self::hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-c09e18c2-599e-4b29-9fef-2f7640724df6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c09e18c2-599e-4b29-9fef-2f7640724df6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-76342edb-9ffe-4d85-a9c9-2e4822950857">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-76342edb-9ffe-4d85-a9c9-2e4822950857)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-2ded4b70-5eee-4186-8ada-cdaa4d94786a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2ded4b70-5eee-4186-8ada-cdaa4d94786a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-2482547c-5b0f-4f18-8511-e7226c501a09">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2482547c-5b0f-4f18-8511-e7226c501a09)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])]"
         id="tmp-r-38e8e695-a4f9-42fb-be08-260ff6767723">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-38e8e695-a4f9-42fb-be08-260ff6767723)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4055']|self::hl7:id|self::hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-19e2a576-b95e-4448-80e5-c0f984500fae">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-19e2a576-b95e-4448-80e5-c0f984500fae)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-5678db8c-63ac-4a34-bc8f-b38491625df0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5678db8c-63ac-4a34-bc8f-b38491625df0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-e2a75c3e-9e5b-4d92-bb66-39d534b7de5f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e2a75c3e-9e5b-4d92-bb66-39d534b7de5f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-dca468da-1451-4a0b-a05e-892dcd57d7e7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dca468da-1451-4a0b-a05e-892dcd57d7e7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])]"
         id="tmp-r-973b67c5-11d1-4ff4-a163-ce853b558b78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-973b67c5-11d1-4ff4-a163-ce853b558b78)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4056']|self::hl7:id|self::hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-808d833a-20f0-4a2c-8d5a-4f36a5772610">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-808d833a-20f0-4a2c-8d5a-4f36a5772610)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-ebea99fb-cd23-4d1e-bd93-5df734153d55">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ebea99fb-cd23-4d1e-bd93-5df734153d55)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-5f78a9e2-5abf-4323-a7c9-f8d9f4469249">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5f78a9e2-5abf-4323-a7c9-f8d9f4469249)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-ad6b79db-ebb0-4ba6-8381-40a6e33fbe56">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ad6b79db-ebb0-4ba6-8381-40a6e33fbe56)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])]"
         id="tmp-r-2320b3fa-f90b-4a7c-9fff-ac42bd93e6a7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2320b3fa-f90b-4a7c-9fff-ac42bd93e6a7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4057']|self::hl7:id|self::hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-753761c2-dcbf-462d-878a-7f6152849a28">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-753761c2-dcbf-462d-878a-7f6152849a28)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-5da08f09-dbdf-42eb-a6d0-d2dde3fc7c4d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5da08f09-dbdf-42eb-a6d0-d2dde3fc7c4d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])]"
         id="tmp-r-caec075d-4734-417c-a7dc-7de3141fcfd7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-caec075d-4734-417c-a7dc-7de3141fcfd7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4058']|self::hl7:id|self::hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-2956df3c-0d15-4f0c-9db2-8fcb966d4cfc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2956df3c-0d15-4f0c-9db2-8fcb966d4cfc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-5e181401-0d43-426d-a0d0-6029bf270f94">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5e181401-0d43-426d-a0d0-6029bf270f94)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])]"
         id="tmp-r-cf560f4e-a886-48ac-9e2e-9ff307a79f70">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cf560f4e-a886-48ac-9e2e-9ff307a79f70)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4059']|self::hl7:id|self::hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-6c929600-86ee-4361-8ff7-f239c704e039">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6c929600-86ee-4361-8ff7-f239c704e039)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-45f17e2a-c26c-4a39-9625-589be5ba63e8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-45f17e2a-c26c-4a39-9625-589be5ba63e8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])]"
         id="tmp-r-ab6e1521-eb9d-44c5-9cb0-47ba49aea40b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ab6e1521-eb9d-44c5-9cb0-47ba49aea40b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4060']|self::hl7:id|self::hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-bd3eb58b-6021-42a5-ad4a-eb607e338aa7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bd3eb58b-6021-42a5-ad4a-eb607e338aa7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-bc6f351b-a92b-43c7-b8f2-51263f8bdd15">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bc6f351b-a92b-43c7-b8f2-51263f8bdd15)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'])]"
         id="tmp-r-9218b29e-d03f-44da-9db4-f332cc14e432">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9218b29e-d03f-44da-9db4-f332cc14e432)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4061']|self::hl7:id|self::hl7:code[(@code='268400002' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-5754ccd3-b7c8-4062-8509-d4256f7ba11b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5754ccd3-b7c8-4062-8509-d4256f7ba11b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c41c3d51-1820-4128-a618-1dc1520c0b34">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c41c3d51-1820-4128-a618-1dc1520c0b34)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])]"
         id="tmp-r-7b397f0a-e99e-4521-8550-15644dfed12e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7b397f0a-e99e-4521-8550-15644dfed12e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4062']|self::hl7:id|self::hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-44f9474a-9e42-4a92-8839-7f5dbec16df5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-44f9474a-9e42-4a92-8839-7f5dbec16df5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-a8e01f95-b5f0-4f58-8236-7e8fd9b537dc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a8e01f95-b5f0-4f58-8236-7e8fd9b537dc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])]"
         id="tmp-r-76515f11-4fa1-4b36-b886-6d7212806f41">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-76515f11-4fa1-4b36-b886-6d7212806f41)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4063']|self::hl7:id|self::hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-5f7d8b0a-ea50-4cfe-9d4b-6ba622ae2550">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5f7d8b0a-ea50-4cfe-9d4b-6ba622ae2550)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-89708aa8-fe40-4020-9e07-e7d8eaa4baac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-89708aa8-fe40-4020-9e07-e7d8eaa4baac)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'])]"
         id="tmp-r-6bd17eb9-e09e-4178-97b5-6548b3212c12">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6bd17eb9-e09e-4178-97b5-6548b3212c12)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4064']|self::hl7:id|self::hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-c9be5352-2a50-4c98-b8e1-7de3f3dacb2a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c9be5352-2a50-4c98-b8e1-7de3f3dacb2a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-921c4269-feb3-438d-88bd-aeed2dca9538">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-921c4269-feb3-438d-88bd-aeed2dca9538)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051'])]"
         id="tmp-r-30a506a0-2f4a-4937-8e0e-a9f8df064def">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-30a506a0-2f4a-4937-8e0e-a9f8df064def)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3051']|self::hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']])]"
         id="tmp-r-c5b52afb-c0d5-4a42-a510-1870845fb911">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c5b52afb-c0d5-4a42-a510-1870845fb911)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065'])]"
         id="tmp-r-7e3f228c-4774-4e4a-ac10-e104ed47245a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7e3f228c-4774-4e4a-ac10-e104ed47245a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4065']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']])]"
         id="tmp-r-a6d968e6-3bc5-438d-944f-d44941f6937d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a6d968e6-3bc5-438d-944f-d44941f6937d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-d7423035-3535-48f8-8a5e-80b1464c90d3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d7423035-3535-48f8-8a5e-80b1464c90d3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066'])]"
         id="tmp-r-cf2bf46a-5dac-46a5-9c53-66c1119099e8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cf2bf46a-5dac-46a5-9c53-66c1119099e8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4066']|self::hl7:id|self::hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:participant)]"
         id="tmp-r-90835d9b-6928-4601-b8a7-aacc0871e810">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-90835d9b-6928-4601-b8a7-aacc0871e810)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-d5caaf80-4868-4a44-a9d6-a5b8ffb22a32">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d5caaf80-4868-4a44-a9d6-a5b8ffb22a32)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/*[not(self::hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-e0ae26d7-f87d-4ef1-826c-64a5092a26df">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e0ae26d7-f87d-4ef1-826c-64a5092a26df)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-b90739f8-ca9a-46f4-8809-4054d5d07ba3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b90739f8-ca9a-46f4-8809-4054d5d07ba3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-6e4dd80f-1123-42e0-b3ef-8e0e4eea4d4b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6e4dd80f-1123-42e0-b3ef-8e0e4eea4d4b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054'])]"
         id="tmp-r-21aa3a0f-7a8d-4f31-afd9-00e72d825f0c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-21aa3a0f-7a8d-4f31-afd9-00e72d825f0c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3054']|self::hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']])]"
         id="tmp-r-02e115a2-c123-454f-8f44-84f2f6038c36">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-02e115a2-c123-454f-8f44-84f2f6038c36)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/*[not(self::hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])]"
         id="tmp-r-59e420ff-f0ea-4a86-82fb-8c76f3dbe2eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-59e420ff-f0ea-4a86-82fb-8c76f3dbe2eb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4068']|self::hl7:id|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']])]"
         id="tmp-r-8a90e878-e7fd-4140-88aa-26b37cd795de">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8a90e878-e7fd-4140-88aa-26b37cd795de)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-1dcdec68-6d3b-4f77-9752-2f8a2ad3eda9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1dcdec68-6d3b-4f77-9752-2f8a2ad3eda9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069'])]"
         id="tmp-r-0d25df9f-5337-44f5-81eb-fccfd696a080">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0d25df9f-5337-44f5-81eb-fccfd696a080)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4069']|self::hl7:id|self::hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:statusCode[@code='completed']|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-26ea091c-8e7c-4675-8ac9-c7bc4485fa13">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-26ea091c-8e7c-4675-8ac9-c7bc4485fa13)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055'])]"
         id="tmp-r-c51a6597-563b-4342-9033-81112811e43c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c51a6597-563b-4342-9033-81112811e43c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3055']|self::hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']])]"
         id="tmp-r-52c30db5-ab1c-47aa-b3a0-254696d8119d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-52c30db5-ab1c-47aa-b3a0-254696d8119d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048'])]"
         id="tmp-r-19e2fff1-6ed5-4168-aedf-1346d5bcb7b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-19e2fff1-6ed5-4168-aedf-1346d5bcb7b7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4048']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']])]"
         id="tmp-r-4de62d70-c88f-44c2-9a9e-de3f70fe6477">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4de62d70-c88f-44c2-9a9e-de3f70fe6477)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-12307aa0-d1a6-4081-bf3d-7da73b382a2d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-12307aa0-d1a6-4081-bf3d-7da73b382a2d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])]"
         id="tmp-r-bbb2d335-bfea-4229-83f1-93e102d17fee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bbb2d335-bfea-4229-83f1-93e102d17fee)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4049']|self::hl7:id|self::hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-6d859d34-93e3-4626-a73b-fe93789b2d55">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6d859d34-93e3-4626-a73b-fe93789b2d55)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e7dd0d38-3c4d-433d-aaf2-4cb86c14f2a1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e7dd0d38-3c4d-433d-aaf2-4cb86c14f2a1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-5635334e-fe91-4769-90fc-3982be2eb114">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5635334e-fe91-4769-90fc-3982be2eb114)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049'])]"
         id="tmp-r-1cfcaf6f-e7ca-44a3-9383-08922eb9afa3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1cfcaf6f-e7ca-44a3-9383-08922eb9afa3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3049']|self::hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']])]"
         id="tmp-r-282fe827-f869-4555-a402-055aaccfcdd5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-282fe827-f869-4555-a402-055aaccfcdd5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])]"
         id="tmp-r-4083fc86-bb25-41ff-a044-dec94b0b98f3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4083fc86-bb25-41ff-a044-dec94b0b98f3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4042']|self::hl7:id|self::hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value|self::hl7:value)]"
         id="tmp-r-11476ea1-c474-4dae-888f-26cce098239c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-11476ea1-c474-4dae-888f-26cce098239c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b971ea70-26d8-44a6-9f0c-1676442cc62e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b971ea70-26d8-44a6-9f0c-1676442cc62e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-615b170c-a262-4dbf-b7f1-995b6bed3838">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-615b170c-a262-4dbf-b7f1-995b6bed3838)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056'])]"
         id="tmp-r-9061fd9d-4424-43ca-9017-a31db7607155">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9061fd9d-4424-43ca-9017-a31db7607155)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3056']|self::hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']])]"
         id="tmp-r-e06bc778-c7d6-4167-a4a0-a538c5b6f212">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e06bc778-c7d6-4167-a4a0-a538c5b6f212)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])]"
         id="tmp-r-646a681d-131a-4336-a78e-abc90d30b7d3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-646a681d-131a-4336-a78e-abc90d30b7d3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4067']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:text)]"
         id="tmp-r-01f5d352-90bb-4f33-9b74-25b5c1bd4e26">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-01f5d352-90bb-4f33-9b74-25b5c1bd4e26)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-15996146-fd54-4297-b373-f3477aec9620">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-15996146-fd54-4297-b373-f3477aec9620)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057'])]"
         id="tmp-r-9e71ae5a-ef27-4ca8-866d-e1b853810120">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9e71ae5a-ef27-4ca8-866d-e1b853810120)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3057']|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])]"
         id="tmp-r-d97f35af-f867-4179-a626-cfb768cac54e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d97f35af-f867-4179-a626-cfb768cac54e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070'])]"
         id="tmp-r-9171247f-dc2a-4efd-be3c-1bad53911cd2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9171247f-dc2a-4efd-be3c-1bad53911cd2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4070']|self::hl7:id|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']])]"
         id="tmp-r-0d0b9511-ab65-40e2-9d2e-421a3765d000">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0d0b9511-ab65-40e2-9d2e-421a3765d000)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-f77b6487-9286-4182-9fe3-89ed7419b801">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f77b6487-9286-4182-9fe3-89ed7419b801)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/*[not(self::hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'])]"
         id="tmp-r-c32f7e24-3ed9-420a-a294-d641b38281d5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c32f7e24-3ed9-420a-a294-d641b38281d5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4071']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text)]"
         id="tmp-r-cabad644-6c0d-4182-9888-965aba880d81">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cabad644-6c0d-4182-9888-965aba880d81)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-d27bd03a-a7e2-481d-b2c5-78633a4334e8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d27bd03a-a7e2-481d-b2c5-78633a4334e8)</assert>
   </rule>
</pattern>
