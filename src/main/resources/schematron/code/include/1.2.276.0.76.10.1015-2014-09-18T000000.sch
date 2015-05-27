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
         id="tmp-r-3e7dadf2-5623-4491-9b60-74304a2485ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&gt;=1 and not(hl7:realmCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:realmCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:realmCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&gt;=1 and not(hl7:typeId[@root='2.16.840.1.113883.1.3']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:typeId[@root='2.16.840.1.113883.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.1015']/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.1015'])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:templateId[@root='1.2.276.0.76.10.1015'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:id)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:title)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&gt;=1 and not(hl7:languageCode/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:languageCode)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:languageCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&gt;=1 and not(hl7:setId/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:setId ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:setId)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:setId kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&gt;=1 and not(hl7:versionNumber/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:versionNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&gt;=1 and not(hl7:recordTarget/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:recordTarget)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:recordTarget kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:author)&gt;=1 and not(hl7:author/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:author ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&gt;=1 and not(hl7:custodian/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:custodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:custodian)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:custodian kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&gt;=1 and not(hl7:documentationOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:documentationOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:documentationOf kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&gt;=1 and not(hl7:componentOf/@nullFlavor)">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:componentOf)&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:componentOf kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90002
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:realmCode"
         id="tmp-r-95d46c53-b0e0-405b-b332-29116fe77d6e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArealmCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="@code">(CDArealmCode): Attribut @code MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or (string-length(@code)&gt;0 and not(matches(@code,'\s')))">(CDArealmCode): Attribute @code MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@code,' ') return if ($code=('DE')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or count($theAttValue) = count($theAttCheck)">(CDArealmCode): Der Wert von code MUSS 'Code DE' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90003
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:typeId[@root='2.16.840.1.113883.1.3']"
         id="tmp-r-129e7b90-7a36-4a59-a8f5-fff04c8943b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtypeId): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@extension)=('POCD_HD000040')">(CDAtypeId): Der Wert von @extension MUSS 'POCD_HD000040' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.1.3')">(CDAtypeId): Der Wert von @root MUSS '2.16.840.1.113883.1.3' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:templateId[@root='1.2.276.0.76.10.1015']"
         id="tmp-r-93e3fbad-c723-43a6-b4ee-2113d6764c4e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.1015')">(EmergencymedicineNoteCDAdocument): Der Wert von @root MUSS '1.2.276.0.76.10.1015' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90004
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:id"
         id="tmp-r-8fb5183c-e932-41fc-91c0-03221d1025ce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90004-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-625079b1-623c-4510-8254-7ef47e5bd5ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmergencymedicineNoteCDAdocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="@nullFlavor or (@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')">(EmergencymedicineNoteCDAdocument): Der Elementinhalt MUSS einer von 'code '34878-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:title"
         id="tmp-r-6d4f8ba4-6df6-4cea-820a-f00285195db2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90005-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90006
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:effectiveTime"
         id="tmp-r-e5eb3f0e-6ba8-47e4-937b-5b9ad8cade46">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90006-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAeffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90007
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-6364f8ac-8453-4904-bbaa-38ba0b6454d0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAconfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAconfidentialityCode): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAconfidentialityCode): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.16926 x_BasicConfidentialityKind (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90008
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:languageCode"
         id="tmp-r-a8c2191f-9bbc-44e2-86d2-da38eeffd162">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90008-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS.LANG"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:setId"
         id="tmp-r-95116235-e1b4-4298-8fe4-95485e0bdb63">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:versionNumber"
         id="tmp-r-27c772b2-b14a-40dc-9faa-d7d0f20de924">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="INT.NONNEG"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1))">(CDAsetIdversionNumber): value MUSS im Bereich [1..] liegen  </assert>
      <let name="digitok" value="matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="$digitok or @nullFlavor">(CDAsetIdversionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget"
         id="tmp-r-8eb31bb3-be6b-4bc3-8f33-1a38aab4a697">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@typeCode)=('RCT') or not(@typeCode)">(CDArecordTargetnnar): Der Wert von @typeCode MUSS 'RCT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@contextControlCode)=('OP') or not(@contextControlCode)">(CDArecordTargetnnar): Der Wert von @contextControlCode MUSS 'OP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole)&lt;=1">(CDArecordTargetnnar): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole"
         id="tmp-r-667710b3-a40e-4150-a44b-674e684b30b3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PAT') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PAT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDArecordTargetnnar): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDArecordTargetnnar): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDArecordTargetnnar): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&gt;=1 ">(CDArecordTargetnnar): Element hl7:patient ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient)&lt;=1">(CDArecordTargetnnar): Element hl7:patient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90024
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id
Item: (PatientIdentifier)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:id"
         id="tmp-r-bdded33f-0e30-4f28-a564-ef7f5f87f6e7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PatientIdentifier): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="@extension">(PatientIdentifier): Attribut @extension MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:addr"
         id="tmp-r-68a090c7-e5c0-4349-93d6-68ac3c376dfd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:telecom"
         id="tmp-r-931dad0f-c268-4322-af0a-ad65b0fea112">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient"
         id="tmp-r-e2c03074-6465-4543-96ce-bf5b5dfdf9a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDArecordTargetnnar): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDArecordTargetnnar): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 ">(CDArecordTargetnnar): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(CDArecordTargetnnar): Element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&gt;=1 ">(CDArecordTargetnnar): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime)&lt;=1">(CDArecordTargetnnar): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name"
         id="tmp-r-102d449b-b93d-4183-a943-c5dd01f516b2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-a340354e-6805-4a04-9d65-c58399596b07">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDArecordTargetnnar): Der Elementinhalt MUSS einer von 'AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDArecordTargetnnar): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime
Item: (CDArecordTargetnnar)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime"
         id="tmp-r-3100b954-164c-4475-ad50-1aa0e35431c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTargetnnar): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author"
         id="tmp-r-f9605ae5-a02f-42eb-91c7-aaeb16b98fee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@typeCode)=('AUT') or not(@typeCode)">(CDAauthor): Der Wert von @typeCode MUSS 'AUT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 and not(hl7:time/@nullFlavor)">(CDAauthor): Element hl7:time ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDAauthor): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&gt;=1 and not(hl7:assignedAuthor/@nullFlavor)">(CDAauthor): Element hl7:assignedAuthor ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor)&lt;=1">(CDAauthor): Element hl7:assignedAuthor kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:time"
         id="tmp-r-5485dd94-47e7-4b96-8f15-f603320cf868">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor"
         id="tmp-r-428da047-d340-434f-baed-f83b0cdce10d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDAauthor): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDAauthor): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedPerson)&lt;=1">(CDAauthor): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:representedOrganization)&lt;=1">(CDAauthor): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:id"
         id="tmp-r-443ec068-1a0b-414b-9441-22042a0402e9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson"
         id="tmp-r-a918d83f-e870-45a1-b9ee-3dbed2b31a16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/hl7:name"
         id="tmp-r-68bf2787-1251-4b07-a215-69e62c775cb8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization"
         id="tmp-r-941bbcf3-97a9-4e2d-8e18-c2f5f2c0af01">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAauthor): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAauthor): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAauthor): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAauthor): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAauthor): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:id"
         id="tmp-r-43a21a4e-e233-4427-9a6d-8f969974439f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="tmp-r-e70fee83-7012-4317-8ac1-59b79c0d710a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom"
         id="tmp-r-607e7d06-af84-4305-93ab-3236814efed6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="tmp-r-24906d4a-f82d-4eb0-8766-007c702d9bd7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian"
         id="tmp-r-c187748b-e693-40d0-94ae-32b28e4ff5e7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@typeCode)=('CST') or not(@typeCode)">(CDAcustodian): Der Wert von @typeCode MUSS 'CST' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&gt;=1 and not(hl7:assignedCustodian/@nullFlavor)">(CDAcustodian): Element hl7:assignedCustodian ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian)&lt;=1">(CDAcustodian): Element hl7:assignedCustodian kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian"
         id="tmp-r-72ccc709-3769-4680-9904-e1102877d55a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:representedCustodianOrganization)&lt;=1">(CDAcustodian): Element hl7:representedCustodianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization"
         id="tmp-r-99e729ba-7fe5-4ce0-b393-eec6b1abe03d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(CDAcustodian): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(CDAcustodian): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(CDAcustodian): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name)&lt;=1">(CDAcustodian): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAcustodian): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:id"
         id="tmp-r-d22f3ee1-bda7-46d2-974d-9598bd2612dd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:name"
         id="tmp-r-429efd8a-a34e-4831-928e-fd4820461a67">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:telecom"
         id="tmp-r-b3889611-fcd2-407d-ba66-e4d67adcece9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/hl7:addr"
         id="tmp-r-2cdc2b68-1bab-498d-97bc-7cd6189ccfb7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf"
         id="tmp-r-ce54fdc9-e084-4ad5-8390-af347485237a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('DOC')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'DOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&gt;=1 ">(CDADocumentationOf): Element hl7:serviceEvent ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent)&lt;=1">(CDADocumentationOf): Element hl7:serviceEvent kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent"
         id="tmp-r-e20adec3-767b-486b-9e22-66030ca5a726">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ACT')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@moodCode)=('EVN')">(CDADocumentationOf): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDADocumentationOf): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDADocumentationOf): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&gt;=1 and not(hl7:performer/@nullFlavor)">(CDADocumentationOf): Element hl7:performer ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer)&lt;=1">(CDADocumentationOf): Element hl7:performer kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime"
         id="tmp-r-f75a9163-77d6-47e5-b3d2-7e95b4544688">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&gt;=1 and not(cda:low/@nullFlavor)">(CDADocumentationOf): Element cda:low ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low)&lt;=1">(CDADocumentationOf): Element cda:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&gt;=1 and not(cda:high/@nullFlavor)">(CDADocumentationOf): Element cda:high ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high)&lt;=1">(CDADocumentationOf): Element cda:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low"
         id="tmp-r-167635d5-2769-409e-bcee-adda6c645ce2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high"
         id="tmp-r-0c77e30a-bb1a-424c-801c-ccf367d8ed2b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATETIME.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer"
         id="tmp-r-aa0ea4a1-ba4d-4ca9-be0a-c6a070937d21">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode)=('PRF')">(CDADocumentationOf): Der Wert von @typeCode MUSS 'PRF' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&gt;=1 ">(CDADocumentationOf): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time)&lt;=1">(CDADocumentationOf): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&gt;=1 and not(hl7:assignedEntity/@nullFlavor)">(CDADocumentationOf): Element hl7:assignedEntity ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity)&lt;=1">(CDADocumentationOf): Element hl7:assignedEntity kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time"
         id="tmp-r-f9e4636f-b704-4034-81f7-da23e8473f62">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDADocumentationOf): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low)&lt;=1">(CDADocumentationOf): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&gt;=1 ">(CDADocumentationOf): Element hl7:high ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high)&lt;=1">(CDADocumentationOf): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low"
         id="tmp-r-f59f3028-e472-40c4-8a20-7264ec27d64f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high"
         id="tmp-r-fba2417b-1df0-4666-8751-55f2bcad6c7e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity"
         id="tmp-r-5a3fc865-c963-44a9-ab15-3903cfdaafab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDADocumentationOf): Der Wert von @classCode MUSS 'ASSIGNED' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&gt;=1 ">(CDADocumentationOf): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id)&lt;=1">(CDADocumentationOf): Element hl7:id kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id
Item: (CDADocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/hl7:id"
         id="tmp-r-abf79185-5bd5-49a5-a66a-832e2275c823">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADocumentationOf): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@nullFlavor)=('NA')">(CDADocumentationOf): Der Wert von @nullFlavor MUSS 'NA' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf"
         id="tmp-r-aa57fe26-fbb4-4744-9f02-9ac50f36f36c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(CDAEncompassingEncounter): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:encompassingEncounter ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:encompassingEncounter)&lt;=1">(CDAEncompassingEncounter): Element hl7:encompassingEncounter kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter"
         id="tmp-r-f39ac5e1-be76-4a4c-b2f2-20660429e6be">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@classCode)=('ENC') or not(@classCode)">(CDAEncompassingEncounter): Der Wert von @classCode MUSS 'ENC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(CDAEncompassingEncounter): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(CDAEncompassingEncounter): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(CDAEncompassingEncounter): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:dischargeDispositionCode)&lt;=1">(CDAEncompassingEncounter): Element hl7:dischargeDispositionCode kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime"
         id="tmp-r-f885ba30-1bab-4fd4-9234-ca1268690eff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&gt;=1 ">(CDAEncompassingEncounter): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:low)&lt;=1">(CDAEncompassingEncounter): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="count(hl7:high)&lt;=1">(CDAEncompassingEncounter): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low"
         id="tmp-r-4bca5ba2-24aa-4af4-b6bc-86b6c52ee5ca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high"
         id="tmp-r-480d07df-4b6b-427b-8621-f16f91cb3806">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS.DATE.MIN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode
Item: (CDAEncompassingEncounter)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode"
         id="tmp-r-1f33df62-83d4-4813-9e9a-9cc3f925d12f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEncompassingEncounter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAEncompassingEncounter): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.56-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAEncompassingEncounter): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient"
         id="tmp-r-cc5816eb-ff32-4389-a53d-9e921da18711">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="@typeCode">(HeaderInformationRecipient): Attribut @typeCode MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(HeaderInformationRecipient): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@typeCode,' ') return if ($code=('PRCP','TRC')) then ($code) else ())"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or count($theAttValue) = count($theAttCheck)">(HeaderInformationRecipient): Der Wert von typeCode MUSS 'Code PRCP oder Code TRC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&gt;=1 and not(hl7:intendedRecipient/@nullFlavor)">(HeaderInformationRecipient): Element hl7:intendedRecipient ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:intendedRecipient kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient"
         id="tmp-r-ca0f06da-0bca-4dd2-96fa-3b504aa094e6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:id)&gt;=1 ">(HeaderInformationRecipient): Element hl7:id ist required [min 1x].</assert>
      <let name="elmcount"
           value="count(hl7:informationRecipient|hl7:receivedOrganization)"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="$elmcount&gt;=1">(HeaderInformationRecipient): Auswahl (hl7:informationRecipient oder hl7:receivedOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:informationRecipient)&lt;=1">(HeaderInformationRecipient): Element hl7:informationRecipient kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:receivedOrganization)&lt;=1">(HeaderInformationRecipient): Element hl7:receivedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:id"
         id="tmp-r-3e753aa0-cb0f-484a-a37b-7a953d7fbde4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderInformationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient"
         id="tmp-r-140500dc-a2c9-4821-82e8-b776bd554715">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('PSN') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'PSN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name
Item: (PersonElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/hl7:name"
         id="tmp-r-ba0bc609-ab10-43d4-85b2-f2fc4525db67">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PN"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization
Item: (HeaderInformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization"
         id="tmp-r-e11fc548-faa3-471d-8893-c1c117ef7835">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode)=('ORG') or not(@classCode)">(HeaderInformationRecipient): Der Wert von @classCode MUSS 'ORG' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode)=('INSTANCE') or not(@determinerCode)">(HeaderInformationRecipient): Der Wert von @determinerCode MUSS 'INSTANCE' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&gt;=1 and not(hl7:name/@nullFlavor)">(HeaderInformationRecipient): Element hl7:name ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name)&lt;=1">(HeaderInformationRecipient): Element hl7:name kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:addr)&lt;=1">(HeaderInformationRecipient): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:id"
         id="tmp-r-45489981-6ac2-4676-b1f8-6e068409b4ca">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:name"
         id="tmp-r-6c6d824e-3317-4693-afd0-9006494361e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ON"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:telecom"
         id="tmp-r-d4fc1f76-1bc3-4f26-9a6e-5e9d682f1da7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TEL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/hl7:addr"
         id="tmp-r-fe66bad2-2c65-4f2b-82fe-7af35a7af986">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="AD"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component"
         id="tmp-r-96127975-9185-4769-96b4-78234d2b33cb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP') or not(@typeCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody
Item: (EmergencymedicineNoteCDAdocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody"
         id="tmp-r-cb7bcf5b-97eb-4b8f-81f1-fe4744318e82">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@classCode)=('DOCBODY') or not(@classCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @classCode MUSS 'DOCBODY' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@moodCode)=('EVN') or not(@moodCode)">(EmergencymedicineNoteCDAdocument): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])&lt;=1">(EmergencymedicineNoteCDAdocument): Element hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.1015
Context: /hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]
Item: (EmergencymedicineNoteCDAdocument)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@typeCode)=('COMP')">(EmergencymedicineNoteCDAdocument): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="string(@contextConductionInd)=('true')">(EmergencymedicineNoteCDAdocument): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015'])]"
         id="tmp-r-210777c1-2150-49ef-8aea-721898943ac6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-210777c1-2150-49ef-8aea-721898943ac6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/*[not(self::hl7:realmCode|self::hl7:typeId[@root='2.16.840.1.113883.1.3']|self::hl7:templateId[@root='1.2.276.0.76.10.1015']|self::hl7:id|self::hl7:code[(@code='34878-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:effectiveTime|self::hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:languageCode|self::hl7:setId|self::hl7:versionNumber|self::hl7:recordTarget|self::hl7:author|self::hl7:custodian|self::hl7:documentationOf|self::hl7:componentOf|self::hl7:informationRecipient|self::hl7:component)]"
         id="tmp-r-6c9f358d-ab22-408d-b273-453ac491bcd0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6c9f358d-ab22-408d-b273-453ac491bcd0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/*[not(self::hl7:patientRole)]"
         id="tmp-r-aae94ff8-b051-4151-89d6-b237a29dff4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-aae94ff8-b051-4151-89d6-b237a29dff4f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/*[not(self::hl7:id|self::hl7:addr|self::hl7:telecom|self::hl7:patient)]"
         id="tmp-r-e941ebce-fc5c-4d00-92f2-0006c080fc01">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e941ebce-fc5c-4d00-92f2-0006c080fc01)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:recordTarget/hl7:patientRole/hl7:patient/*[not(self::hl7:name|self::hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:birthTime)]"
         id="tmp-r-5a694ca8-cb32-4de1-9093-45c9014a8e10">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(.)">(CDArecordTargetnnar): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5a694ca8-cb32-4de1-9093-45c9014a8e10)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/*[not(self::hl7:time|self::hl7:assignedAuthor)]"
         id="tmp-r-ba833b75-3b3a-4ae6-8014-b93a2898a597">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ba833b75-3b3a-4ae6-8014-b93a2898a597)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/*[not(self::hl7:id|self::hl7:assignedPerson|self::hl7:representedOrganization)]"
         id="tmp-r-c3471523-f8b4-47ff-847d-a92ff6080491">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c3471523-f8b4-47ff-847d-a92ff6080491)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:assignedPerson/*[not(self::hl7:name)]"
         id="tmp-r-519d7a6f-dc5c-43ab-bc10-017ff1937dfe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-519d7a6f-dc5c-43ab-bc10-017ff1937dfe)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:author/hl7:assignedAuthor/hl7:representedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-baa59dc6-25f8-444b-873d-13d0b16bea05">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(.)">(CDAauthor): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-baa59dc6-25f8-444b-873d-13d0b16bea05)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/*[not(self::hl7:assignedCustodian)]"
         id="tmp-r-ec5b894e-0507-4b8b-858e-24e083bd49c8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ec5b894e-0507-4b8b-858e-24e083bd49c8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/*[not(self::hl7:representedCustodianOrganization)]"
         id="tmp-r-3515b63b-d374-46f2-846d-92199a6f4a46">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3515b63b-d374-46f2-846d-92199a6f4a46)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-e52590d2-e2c0-4b59-83ed-c6121913653e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="not(.)">(CDAcustodian): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e52590d2-e2c0-4b59-83ed-c6121913653e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/*[not(self::hl7:serviceEvent)]"
         id="tmp-r-36207f4b-7e3d-450f-8ac2-9c2aa02f53b1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-36207f4b-7e3d-450f-8ac2-9c2aa02f53b1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/*[not(self::hl7:effectiveTime|self::hl7:performer)]"
         id="tmp-r-3f677554-d34d-4cf4-a173-2d0bbe37924b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3f677554-d34d-4cf4-a173-2d0bbe37924b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/*[not(self::cda:low|self::cda:high)]"
         id="tmp-r-c4b9ff76-a10b-4846-a915-716582b054f8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c4b9ff76-a10b-4846-a915-716582b054f8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/*[not(self::hl7:time|self::hl7:assignedEntity)]"
         id="tmp-r-ac9975e5-99a8-43e8-9c96-0272a21478d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ac9975e5-99a8-43e8-9c96-0272a21478d6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-c6d28a0e-0858-4318-b0d6-8b56260d7d9a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c6d28a0e-0858-4318-b0d6-8b56260d7d9a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:assignedEntity/*[not(self::hl7:id)]"
         id="tmp-r-757cb2dc-aaab-47c4-9447-dd9d8c6d374f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(.)">(CDADocumentationOf): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-757cb2dc-aaab-47c4-9447-dd9d8c6d374f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/*[not(self::hl7:encompassingEncounter)]"
         id="tmp-r-204bc7ff-8a81-4830-b215-64ffd4fddd40">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-204bc7ff-8a81-4830-b215-64ffd4fddd40)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/*[not(self::hl7:effectiveTime|self::hl7:dischargeDispositionCode)]"
         id="tmp-r-5cf9cb2d-c114-4ca1-9315-ed5552dd672a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5cf9cb2d-c114-4ca1-9315-ed5552dd672a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-21a6f7e9-af55-424c-a9d5-10b5228e8d55">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2036-2014-08-25T000000.html"
              test="not(.)">(CDAEncompassingEncounter): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-21a6f7e9-af55-424c-a9d5-10b5228e8d55)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/*[not(self::hl7:intendedRecipient)]"
         id="tmp-r-50b5fec6-bc05-4a82-9c0b-975d6c1f559e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-50b5fec6-bc05-4a82-9c0b-975d6c1f559e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/*[not(self::hl7:id|self::hl7:informationRecipient|self::hl7:receivedOrganization)]"
         id="tmp-r-31bd828d-1867-4076-af9e-777c56edce58">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-31bd828d-1867-4076-af9e-777c56edce58)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:informationRecipient/*[not(self::hl7:name)]"
         id="tmp-r-ed7f0024-b554-45c1-a253-651e9b4d06d7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ed7f0024-b554-45c1-a253-651e9b4d06d7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:informationRecipient/hl7:intendedRecipient/hl7:receivedOrganization/*[not(self::hl7:id|self::hl7:name|self::hl7:telecom|self::hl7:addr)]"
         id="tmp-r-cd0c46ff-01cd-4c63-b5fe-54589c9642a8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(.)">(HeaderInformationRecipient): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-cd0c46ff-01cd-4c63-b5fe-54589c9642a8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/*[not(self::hl7:structuredBody)]"
         id="tmp-r-3c1904fd-8bb8-46da-b241-9b6301780755">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3c1904fd-8bb8-46da-b241-9b6301780755)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/*[not(self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]|self::hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']])]"
         id="tmp-r-6a3d29c0-c580-406b-9d8a-87b103d42265">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6a3d29c0-c580-406b-9d8a-87b103d42265)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045'])]"
         id="tmp-r-c810a368-f505-4560-b739-256585ef8ab3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c810a368-f505-4560-b739-256585ef8ab3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3045']|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']])]"
         id="tmp-r-77be96cd-6322-4907-9e3b-eaa5bda31817">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-77be96cd-6322-4907-9e3b-eaa5bda31817)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037'])]"
         id="tmp-r-8b0a6012-e831-4bbf-8d04-69ec1c103a06">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8b0a6012-e831-4bbf-8d04-69ec1c103a06)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4037']|self::hl7:id|self::hl7:code[(@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.41-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-7ab0fd28-e9bf-4b78-b4ae-372612c0f6f3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7ab0fd28-e9bf-4b78-b4ae-372612c0f6f3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-f6c771e0-ba55-4cd0-93af-e0f9e60e3f53">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f6c771e0-ba55-4cd0-93af-e0f9e60e3f53)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3045']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4037']/hl7:effectiveTime/*[not(self::hl7:high)]"
         id="tmp-r-c0ebaa70-b3da-426a-826a-aec9497dd5d9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c0ebaa70-b3da-426a-826a-aec9497dd5d9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046'])]"
         id="tmp-r-92d97c7d-f082-4276-a4f8-ce4e8e4d2ab9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-92d97c7d-f082-4276-a4f8-ce4e8e4d2ab9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3046']|self::hl7:code[(@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']])]"
         id="tmp-r-9c010fb4-75b8-47a6-a420-91f56b94d45d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9c010fb4-75b8-47a6-a420-91f56b94d45d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038'])]"
         id="tmp-r-fce259e0-3927-41c6-b25f-3260449428ac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fce259e0-3927-41c6-b25f-3260449428ac)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4038']|self::hl7:code[(@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-0a2726f0-00b6-4393-9a76-e365a9424526">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0a2726f0-00b6-4393-9a76-e365a9424526)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-675ca0f6-8ae9-4e90-943b-07caac13c54b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-675ca0f6-8ae9-4e90-943b-07caac13c54b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-13150bef-bd59-4169-9c3b-50a6630afc71">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-13150bef-bd59-4169-9c3b-50a6630afc71)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3046']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4038']/hl7:participant[hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.42-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-9336db53-b91c-48a9-8958-3aeb0cba755f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9336db53-b91c-48a9-8958-3aeb0cba755f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053'])]"
         id="tmp-r-724a166e-0913-4e3c-ad25-7b3c83f0f90d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-724a166e-0913-4e3c-ad25-7b3c83f0f90d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3053']|self::hl7:code[(@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-771fedf9-e1c7-4ca6-af5a-37f8c8974829">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-771fedf9-e1c7-4ca6-af5a-37f8c8974829)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048'])]"
         id="tmp-r-863d4500-966e-4030-9bcf-08e1865dc632">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-863d4500-966e-4030-9bcf-08e1865dc632)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3048']|self::hl7:code[(@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']])]"
         id="tmp-r-1ee89f06-d165-44c2-bf1b-5ee1bcb0a9d0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1ee89f06-d165-44c2-bf1b-5ee1bcb0a9d0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039'])]"
         id="tmp-r-8ce739cf-a329-44fd-b1d8-15c2235151f8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8ce739cf-a329-44fd-b1d8-15c2235151f8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4039']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']])]"
         id="tmp-r-5c753a66-0856-47b4-9c41-0d6c486e8f68">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5c753a66-0856-47b4-9c41-0d6c486e8f68)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-a46b4dab-517c-44f4-b5eb-889b9ab4cf36">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a46b4dab-517c-44f4-b5eb-889b9ab4cf36)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040'])]"
         id="tmp-r-7b4d0f69-531f-4468-9e9a-7d68eca758cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7b4d0f69-531f-4468-9e9a-7d68eca758cc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4040']|self::hl7:id|self::hl7:code[(@code='409586006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.43-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-c753313c-0658-4941-af71-bfd308ffb3ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c753313c-0658-4941-af71-bfd308ffb3ed)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-36a04f97-5e3b-4a2c-b09e-f14af9284b10">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-36a04f97-5e3b-4a2c-b09e-f14af9284b10)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3048']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-d270399c-03a7-436a-9d5d-6d53661d87d5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d270399c-03a7-436a-9d5d-6d53661d87d5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]|self::hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']])]"
         id="tmp-r-a36d4780-c893-4fb6-aa4a-6695630f69f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a36d4780-c893-4fb6-aa4a-6695630f69f7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3047']|self::hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-f9a19f4d-8577-41f0-8be6-0100244039c2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f9a19f4d-8577-41f0-8be6-0100244039c2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043'])]"
         id="tmp-r-2e267243-3546-40a5-9d1d-53ecf39bda0b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2e267243-3546-40a5-9d1d-53ecf39bda0b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4043']|self::hl7:id|self::hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-e4a215fb-1a6d-4995-87a8-9df3cad8185a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e4a215fb-1a6d-4995-87a8-9df3cad8185a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b317795a-4396-4c4d-bca6-678e392ff5f7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b317795a-4396-4c4d-bca6-678e392ff5f7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/*[not(self::hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044'])]"
         id="tmp-r-481bb9b4-197b-4579-8117-f42e3654cc58">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-481bb9b4-197b-4579-8117-f42e3654cc58)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4044']|self::hl7:id|self::hl7:code[(@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:consumable)]"
         id="tmp-r-b0188686-5e16-4840-8ffa-c11a682c55b8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b0188686-5e16-4840-8ffa-c11a682c55b8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e57501d9-885a-4428-84d9-e0cd1790dec1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e57501d9-885a-4428-84d9-e0cd1790dec1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/*[not(self::hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-12011b5b-9bb9-44e1-851c-504ab188c291">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-12011b5b-9bb9-44e1-851c-504ab188c291)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-9dbee948-0bd0-4dbe-889b-017e7255ebad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9dbee948-0bd0-4dbe-889b-017e7255ebad)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]/hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']/hl7:consumable/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:manufacturedMaterial[hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='333621002' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-bf38281e-b6cf-43b6-9518-5a77ea65beab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bf38281e-b6cf-43b6-9518-5a77ea65beab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])]"
         id="tmp-r-ced80605-c5ed-4e24-af13-83759c90149e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ced80605-c5ed-4e24-af13-83759c90149e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4045']|self::hl7:id|self::hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-a3f75940-4a4e-4d90-a607-52eebe37accf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a3f75940-4a4e-4d90-a607-52eebe37accf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e5d6841e-9b0c-4302-80f5-44b89da9390b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e5d6841e-9b0c-4302-80f5-44b89da9390b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044'])]"
         id="tmp-r-6e82d917-a1ff-4f85-a5b9-5a1edbbd3d65">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6e82d917-a1ff-4f85-a5b9-5a1edbbd3d65)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3044']|self::hl7:code[(@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']])]"
         id="tmp-r-d6742ff2-74ad-4a18-9ea5-4e4ae5c8ce19">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d6742ff2-74ad-4a18-9ea5-4e4ae5c8ce19)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])]"
         id="tmp-r-777f59cd-a499-490e-a20c-f6c8fc7144bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-777f59cd-a499-490e-a20c-f6c8fc7144bb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4030']|self::hl7:id|self::hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-b54b040a-3206-4f4e-b123-ba58eb12a018">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b54b040a-3206-4f4e-b123-ba58eb12a018)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/*[not(self::hl7:originalText)]"
         id="tmp-r-ee90ff94-e799-45e1-a9f8-807be471c6cf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ee90ff94-e799-45e1-a9f8-807be471c6cf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-19db763f-9be9-412b-ac63-d542eec8924b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-19db763f-9be9-412b-ac63-d542eec8924b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'])]"
         id="tmp-r-78ac07e6-e5b3-4ba2-8085-5ffcfe8bb430">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-78ac07e6-e5b3-4ba2-8085-5ffcfe8bb430)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4031']|self::hl7:id|self::hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-2ffda73a-dac0-4eff-a434-447e01d1aa37">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2ffda73a-dac0-4eff-a434-447e01d1aa37)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-580a2f2a-b673-435d-803d-a8599891f61c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-580a2f2a-b673-435d-803d-a8599891f61c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])]"
         id="tmp-r-b779013a-55aa-4947-87d6-ffe58beea03c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b779013a-55aa-4947-87d6-ffe58beea03c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4032']|self::hl7:id|self::hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-f14e304f-a581-43b4-a3be-4b5ff03edc0b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f14e304f-a581-43b4-a3be-4b5ff03edc0b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-9d3d7a65-baa9-4004-9fbb-291743d9c22d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9d3d7a65-baa9-4004-9fbb-291743d9c22d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])]"
         id="tmp-r-5de27a29-0905-4341-bed5-5ad4587eb927">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5de27a29-0905-4341-bed5-5ad4587eb927)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4033']|self::hl7:id|self::hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-f77890f1-b0ba-4bd9-b5d2-43f680af2616">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f77890f1-b0ba-4bd9-b5d2-43f680af2616)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e964b900-d1b5-44d4-a98e-d27fe0913d92">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e964b900-d1b5-44d4-a98e-d27fe0913d92)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034'])]"
         id="tmp-r-832d7905-e1f9-4eeb-8a78-6c9b9e033b61">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-832d7905-e1f9-4eeb-8a78-6c9b9e033b61)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4034']|self::hl7:id|self::hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value|self::hl7:component[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:component[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]|self::hl7:component[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]])]"
         id="tmp-r-1b9e7d33-315d-4c3e-a259-03a4b2b37cde">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1b9e7d33-315d-4c3e-a259-03a4b2b37cde)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-46be982c-d70c-450b-a652-81950339b15e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-46be982c-d70c-450b-a652-81950339b15e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-d5cbd448-f06a-42fc-8ee2-b5a6b4d7f3f5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d5cbd448-f06a-42fc-8ee2-b5a6b4d7f3f5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:value)]"
         id="tmp-r-61cdd32f-e8a5-4b6b-bf1e-9f0849f409bd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-61cdd32f-e8a5-4b6b-bf1e-9f0849f409bd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-d999d2fd-c6f8-423d-8bca-e730c5380cf3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d999d2fd-c6f8-423d-8bca-e730c5380cf3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:value)]"
         id="tmp-r-9e8ea557-7110-4f5c-adc8-90fd95d23ed1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9e8ea557-7110-4f5c-adc8-90fd95d23ed1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="tmp-r-2ea66fb6-8ce5-4831-9b5b-9ae264a53c60">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2ea66fb6-8ce5-4831-9b5b-9ae264a53c60)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:component[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:value)]"
         id="tmp-r-b20afbdd-6aef-48d9-9e0c-2ec1d314fd0c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b20afbdd-6aef-48d9-9e0c-2ec1d314fd0c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046'])]"
         id="tmp-r-4fa14112-cc7f-4773-bd77-b4d0d7f10f79">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-4fa14112-cc7f-4773-bd77-b4d0d7f10f79)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4046']|self::hl7:id|self::hl7:code[(@code='363953003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-d98ffc6a-55f9-471a-bde9-b4c1c7bfedce">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d98ffc6a-55f9-471a-bde9-b4c1c7bfedce)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4046']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-54531119-7d56-4f60-8fbf-929459f85cc9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-54531119-7d56-4f60-8fbf-929459f85cc9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047'])]"
         id="tmp-r-d3c89a33-2042-4fc9-bd65-9bd1e9cac289">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d3c89a33-2042-4fc9-bd65-9bd1e9cac289)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4047']|self::hl7:id|self::hl7:code[(@code='271733001' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-f97d15a8-bf03-4e98-9dc7-9fe0c6560f72">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f97d15a8-bf03-4e98-9dc7-9fe0c6560f72)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4047']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-561f633c-4eda-46f1-b79f-8732088f92e3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-561f633c-4eda-46f1-b79f-8732088f92e3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])]"
         id="tmp-r-7ae74d3e-80a5-42f9-9f55-351166bcab84">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7ae74d3e-80a5-42f9-9f55-351166bcab84)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4035']|self::hl7:id|self::hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-07875554-c69d-43cd-996d-9190da9934e6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-07875554-c69d-43cd-996d-9190da9934e6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-6579ef46-cfd6-415f-be89-68166ec2aa81">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6579ef46-cfd6-415f-be89-68166ec2aa81)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])]"
         id="tmp-r-2f30fa9e-02b7-431a-acdd-3887da2de311">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2f30fa9e-02b7-431a-acdd-3887da2de311)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4036']|self::hl7:id|self::hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-14f94de4-744d-44d7-8a7f-b7fe2a03b97c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-14f94de4-744d-44d7-8a7f-b7fe2a03b97c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3044']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-42e973b4-78da-4fa4-9417-afff15e67a4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-42e973b4-78da-4fa4-9417-afff15e67a4f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050'])]"
         id="tmp-r-5937923d-10c3-4f0b-abec-59f0942fe5ec">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5937923d-10c3-4f0b-abec-59f0942fe5ec)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3050']|self::hl7:code[(@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']])]"
         id="tmp-r-84fef58f-8a6b-42b0-a315-576c94ffb11e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-84fef58f-8a6b-42b0-a315-576c94ffb11e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050'])]"
         id="tmp-r-2655edfd-d9c8-417d-9bd1-375f41d69de8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2655edfd-d9c8-417d-9bd1-375f41d69de8)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4050']|self::hl7:id|self::hl7:code[(@code='399208008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-ff3ea9aa-aaad-46fd-93e0-089c21701080">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ff3ea9aa-aaad-46fd-93e0-089c21701080)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-617506ce-555d-4624-8b05-22f3e8212902">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-617506ce-555d-4624-8b05-22f3e8212902)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-1b63309b-6cdb-4c79-a0a8-2fd348b193c2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1b63309b-6cdb-4c79-a0a8-2fd348b193c2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4050']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-3718054b-9a0a-474a-9ca3-578c4799fdfa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3718054b-9a0a-474a-9ca3-578c4799fdfa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051'])]"
         id="tmp-r-5a4a4d80-2497-41de-acca-15bc7105c48d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5a4a4d80-2497-41de-acca-15bc7105c48d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4051']|self::hl7:id|self::hl7:code[(@code='79760008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-5fae05c8-51cd-493e-9d13-7d690735c592">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5fae05c8-51cd-493e-9d13-7d690735c592)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c49ed020-a610-49f7-86c7-c7c11fb6dd26">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c49ed020-a610-49f7-86c7-c7c11fb6dd26)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-87c49901-0f8d-46e3-bb65-f444e8b0b204">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-87c49901-0f8d-46e3-bb65-f444e8b0b204)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4051']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-9784599f-a78f-4c6f-8f0d-c640ef4ba33a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9784599f-a78f-4c6f-8f0d-c640ef4ba33a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052'])]"
         id="tmp-r-0a064778-5ba1-4fd9-8c77-427b835247a1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0a064778-5ba1-4fd9-8c77-427b835247a1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4052']|self::hl7:id|self::hl7:code[(@code='268425006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-2f371afe-de40-48b7-abb0-0a06dccbfc94">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2f371afe-de40-48b7-abb0-0a06dccbfc94)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-d05f4728-d11e-40c6-a1af-88205e6a5d08">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d05f4728-d11e-40c6-a1af-88205e6a5d08)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-13c5ed20-4ea5-4a0a-9852-63506d0b7066">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-13c5ed20-4ea5-4a0a-9852-63506d0b7066)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4052']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-af0067f8-58a0-4f9e-8284-e6e9852f23a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-af0067f8-58a0-4f9e-8284-e6e9852f23a2)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053'])]"
         id="tmp-r-0d0478bd-e875-4e15-b3a3-b0998d69652f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0d0478bd-e875-4e15-b3a3-b0998d69652f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4053']|self::hl7:id|self::hl7:code[(@code='168537006:363704007=66019005' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-2bd47893-9d09-4096-9ba0-b2adf688133f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2bd47893-9d09-4096-9ba0-b2adf688133f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-aea7b586-077b-4309-9a22-9938d19f7b9b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-aea7b586-077b-4309-9a22-9938d19f7b9b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-fb9d37d8-befc-44a8-874c-b73d74c5d846">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fb9d37d8-befc-44a8-874c-b73d74c5d846)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4053']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-fb84f157-ceb4-4c02-b113-219e33d13d63">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fb84f157-ceb4-4c02-b113-219e33d13d63)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054'])]"
         id="tmp-r-aff401f8-efc5-48b5-aaa0-a8aca611eb4c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-aff401f8-efc5-48b5-aaa0-a8aca611eb4c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4054']|self::hl7:id|self::hl7:code[(@code='168537006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-f5746975-0d2f-4de4-b1fc-9e142891d72e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f5746975-0d2f-4de4-b1fc-9e142891d72e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-2f004c4f-6b4e-445c-b114-bbf84f618017">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2f004c4f-6b4e-445c-b114-bbf84f618017)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-87284739-9e83-4944-a69e-1b04521dc083">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-87284739-9e83-4944-a69e-1b04521dc083)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4054']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-d6ccb1f5-c30d-4995-a551-26cf543897e9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d6ccb1f5-c30d-4995-a551-26cf543897e9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055'])]"
         id="tmp-r-bc2c8953-cc63-4a4d-982c-d2f30904b0c6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bc2c8953-cc63-4a4d-982c-d2f30904b0c6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4055']|self::hl7:id|self::hl7:code[(@code='408754009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-0d9a82e6-f7e0-4f2e-921b-186b477d272a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0d9a82e6-f7e0-4f2e-921b-186b477d272a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-46131f82-18cc-4059-b875-72dfc8230a78">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-46131f82-18cc-4059-b875-72dfc8230a78)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-fad50903-64ec-4a53-997f-3c18ade59151">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fad50903-64ec-4a53-997f-3c18ade59151)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4055']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-39293a27-1f4a-46ec-8a2a-056948af6853">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-39293a27-1f4a-46ec-8a2a-056948af6853)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056'])]"
         id="tmp-r-1a272444-3580-4825-9dee-bd6d9aca39a1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1a272444-3580-4825-9dee-bd6d9aca39a1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4056']|self::hl7:id|self::hl7:code[(@code='169072007' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]|self::hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="tmp-r-921a3add-8ac9-4def-8054-eac707e17bc3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-921a3add-8ac9-4def-8054-eac707e17bc3)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-e03b8e01-2990-4f45-b296-78317ebd4d6f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e03b8e01-2990-4f45-b296-78317ebd4d6f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="tmp-r-2dab8888-3cb7-4428-bea6-9d7c46b8f71f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2dab8888-3cb7-4428-bea6-9d7c46b8f71f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4056']/hl7:participant[hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:participantRole[hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code='225728007' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="tmp-r-ad3ade21-81f4-4e50-9244-a86cb912c626">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ad3ade21-81f4-4e50-9244-a86cb912c626)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057'])]"
         id="tmp-r-8aa95c79-a1c2-4afa-8a82-fbf6b5f17fcd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8aa95c79-a1c2-4afa-8a82-fbf6b5f17fcd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4057']|self::hl7:id|self::hl7:code[(@code='15220000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-ce7fce8c-1fc6-4782-8328-9a17ff3ff3d0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ce7fce8c-1fc6-4782-8328-9a17ff3ff3d0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4057']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-9d493cc4-1ed0-4a71-91c9-1106424c999c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9d493cc4-1ed0-4a71-91c9-1106424c999c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058'])]"
         id="tmp-r-bb924615-0264-41d3-9938-4ae96ad2fbf5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bb924615-0264-41d3-9938-4ae96ad2fbf5)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4058']|self::hl7:id|self::hl7:code[(@code='113091000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-68e65d87-6a14-4d96-81de-ea6e7fb865ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-68e65d87-6a14-4d96-81de-ea6e7fb865ab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4058']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-b3ef55ad-ffde-4939-8300-8aec64a25edf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b3ef55ad-ffde-4939-8300-8aec64a25edf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059'])]"
         id="tmp-r-dc1ef7b6-c642-4cc1-9824-aff5e8ce9fab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dc1ef7b6-c642-4cc1-9824-aff5e8ce9fab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4059']|self::hl7:id|self::hl7:code[(@code='278297009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-87ce0f43-b94e-41dc-8c90-f7e1205ad1bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-87ce0f43-b94e-41dc-8c90-f7e1205ad1bb)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4059']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-32d1f985-8e95-4542-a27a-1cf18ad815aa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-32d1f985-8e95-4542-a27a-1cf18ad815aa)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060'])]"
         id="tmp-r-ba38c058-e200-48de-aa27-65212252416d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ba38c058-e200-48de-aa27-65212252416d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4060']|self::hl7:id|self::hl7:code[(@code='53853004' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-f50ae382-fc84-4747-9a57-06c140257dcf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f50ae382-fc84-4747-9a57-06c140257dcf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4060']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-2429129f-a2fc-4b6c-94cc-3171de7c33af">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-2429129f-a2fc-4b6c-94cc-3171de7c33af)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061'])]"
         id="tmp-r-ea44e35f-e2d3-4d6d-b710-424382dbdb44">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ea44e35f-e2d3-4d6d-b710-424382dbdb44)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4061']|self::hl7:id|self::hl7:code[(@code='268400002' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-1393bccc-1361-4a87-8a19-0f3698dd393e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1393bccc-1361-4a87-8a19-0f3698dd393e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4061']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-85123930-e37e-4a9f-a915-8f29b2d58aa4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-85123930-e37e-4a9f-a915-8f29b2d58aa4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062'])]"
         id="tmp-r-8e02ec4a-8b53-451f-9610-444558115228">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8e02ec4a-8b53-451f-9610-444558115228)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4062']|self::hl7:id|self::hl7:code[(@code='16310003' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-419438d8-b11c-4649-a119-9cb82d9ff311">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-419438d8-b11c-4649-a119-9cb82d9ff311)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4062']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-22c975e8-1ae9-4a80-b965-f7330a3a093a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-22c975e8-1ae9-4a80-b965-f7330a3a093a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063'])]"
         id="tmp-r-7174837d-b62d-4c70-921f-c64b7fcb2f30">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7174837d-b62d-4c70-921f-c64b7fcb2f30)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4063']|self::hl7:id|self::hl7:code[(@code='77477000' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-fd2ff713-0eaa-4c2e-8073-56f3f0751258">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fd2ff713-0eaa-4c2e-8073-56f3f0751258)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4063']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-7b6ffb62-fc99-4343-a4f7-0c9d8dc8db9a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7b6ffb62-fc99-4343-a4f7-0c9d8dc8db9a)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064'])]"
         id="tmp-r-fd6ed63f-9421-4f89-ac95-488fe6baa00b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-fd6ed63f-9421-4f89-ac95-488fe6baa00b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4064']|self::hl7:id|self::hl7:code[(@code='40701008' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-49f83136-5982-409a-88d7-696cd39d38ab">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-49f83136-5982-409a-88d7-696cd39d38ab)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3050']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4064']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-488e5738-12c2-41c6-b131-90d7fd0839a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-488e5738-12c2-41c6-b131-90d7fd0839a6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051'])]"
         id="tmp-r-3809b880-45d5-40ef-96b2-7f2c5c89d48c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3809b880-45d5-40ef-96b2-7f2c5c89d48c)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3051']|self::hl7:code[(@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']])]"
         id="tmp-r-83f2e0e4-3087-4588-a77c-6e7bb12a3b33">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-83f2e0e4-3087-4588-a77c-6e7bb12a3b33)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065'])]"
         id="tmp-r-680eaeb9-8f62-4dca-8951-7c766cd4d6e0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-680eaeb9-8f62-4dca-8951-7c766cd4d6e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4065']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']])]"
         id="tmp-r-35e97be2-146a-47c5-900d-80ac6083ae02">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-35e97be2-146a-47c5-900d-80ac6083ae02)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-9cbe8917-598f-40c1-84af-c3c33dc7ae51">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-9cbe8917-598f-40c1-84af-c3c33dc7ae51)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066'])]"
         id="tmp-r-e154a4c6-0e1b-406f-9a9e-dc4074c608a1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e154a4c6-0e1b-406f-9a9e-dc4074c608a1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4066']|self::hl7:id|self::hl7:code[(@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')]|self::hl7:statusCode|self::hl7:effectiveTime|self::hl7:value[(@code='419199007' and @codeSystem='2.16.840.1.113883.6.96') or (@code='420134006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:participant)]"
         id="tmp-r-c1f44e52-a261-4755-8056-3ebbc735c416">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c1f44e52-a261-4755-8056-3ebbc735c416)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-d840a22b-3a3f-444e-b3a6-25ed443de6dd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-d840a22b-3a3f-444e-b3a6-25ed443de6dd)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/*[not(self::hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]])]"
         id="tmp-r-27c0131b-a387-450c-a6ae-3d815041c61e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-27c0131b-a387-450c-a6ae-3d815041c61e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/*[not(self::hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]])]"
         id="tmp-r-0e35b322-8d15-48a6-a3e3-3ae80ef6195b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-0e35b322-8d15-48a6-a3e3-3ae80ef6195b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3051']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4065']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4066']/hl7:participant/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]]/hl7:playingEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]]/*[not(self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])]"
         id="tmp-r-10a7b1e8-e5da-4493-8c87-5617d037b553">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-10a7b1e8-e5da-4493-8c87-5617d037b553)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054'])]"
         id="tmp-r-e68818a8-9d54-4800-9f55-14fe3a4909a0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e68818a8-9d54-4800-9f55-14fe3a4909a0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3054']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3054']|self::hl7:code[(@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text)]"
         id="tmp-r-e4765d24-1738-470a-a99f-610a7c0f0ef0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e4765d24-1738-470a-a99f-610a7c0f0ef0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055'])]"
         id="tmp-r-bc51b835-a388-42a1-8316-d699a2c4845b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-bc51b835-a388-42a1-8316-d699a2c4845b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3055']|self::hl7:code[(@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']])]"
         id="tmp-r-dc6f8c6a-06d9-4ac2-8cae-b117267c2a71">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-dc6f8c6a-06d9-4ac2-8cae-b117267c2a71)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048'])]"
         id="tmp-r-de65f891-2c57-4cc1-be53-60ae7490f5ad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-de65f891-2c57-4cc1-be53-60ae7490f5ad)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4048']|self::hl7:id|self::hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]|self::hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]|self::hl7:effectiveTime|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']])]"
         id="tmp-r-ebd6ae3e-a91d-46d7-a21a-968f47ac08cf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-ebd6ae3e-a91d-46d7-a21a-968f47ac08cf)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-5dcc008d-44d9-48e0-836f-70a41a1b27ee">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-5dcc008d-44d9-48e0-836f-70a41a1b27ee)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049'])]"
         id="tmp-r-7d1233a8-47ae-4f76-bef6-3b5d0a89c014">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-7d1233a8-47ae-4f76-bef6-3b5d0a89c014)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4049']|self::hl7:id|self::hl7:code[(@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value)]"
         id="tmp-r-494cb6c6-3697-47b8-a1e7-e59f9f349ae0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-494cb6c6-3697-47b8-a1e7-e59f9f349ae0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-f5a42150-6452-48d6-8359-0c76c410d7f6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f5a42150-6452-48d6-8359-0c76c410d7f6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3055']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-f21944ad-48ba-4e98-ac2c-e3248c114fa0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f21944ad-48ba-4e98-ac2c-e3248c114fa0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049'])]"
         id="tmp-r-8795de6f-3c84-4a14-aa6c-b952d3c59896">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-8795de6f-3c84-4a14-aa6c-b952d3c59896)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3049']|self::hl7:code[(@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']])]"
         id="tmp-r-f3914924-6acc-47b9-96a9-0060f42a991b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f3914924-6acc-47b9-96a9-0060f42a991b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042'])]"
         id="tmp-r-e409d8b7-25ab-4bcf-b07d-c39005c77b5f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-e409d8b7-25ab-4bcf-b07d-c39005c77b5f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4042']|self::hl7:id|self::hl7:code[(@code='273887006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:text|self::hl7:statusCode[@code='completed']|self::hl7:effectiveTime|self::hl7:value|self::hl7:value)]"
         id="tmp-r-3815a5f2-6b33-4bfb-89cd-1ff8a926da98">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3815a5f2-6b33-4bfb-89cd-1ff8a926da98)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-da95686f-ea76-49cd-9f82-7f3fabd31b4e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-da95686f-ea76-49cd-9f82-7f3fabd31b4e)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3049']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4042']/hl7:effectiveTime/*[not(self::hl7:low|self::hl7:high)]"
         id="tmp-r-61ec2aa6-9b32-43bd-a6b4-04f0b3d024a1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-61ec2aa6-9b32-43bd-a6b4-04f0b3d024a1)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056'])]"
         id="tmp-r-686ac62e-0278-4be7-9eb6-e1cc7e74e1f6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-686ac62e-0278-4be7-9eb6-e1cc7e74e1f6)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3056']|self::hl7:code[(@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]|self::hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']])]"
         id="tmp-r-a7214162-6070-4765-8f0f-47c488f201d4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a7214162-6070-4765-8f0f-47c488f201d4)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067'])]"
         id="tmp-r-b65d714f-550b-4a25-bca6-244481b82d31">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-b65d714f-550b-4a25-bca6-244481b82d31)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4067']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:text)]"
         id="tmp-r-3744bcfc-dbe9-4bc2-9f0f-c7cdaae46e1d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3744bcfc-dbe9-4bc2-9f0f-c7cdaae46e1d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4067']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-f41a24c5-c363-44c9-9dbd-ec48245a655b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-f41a24c5-c363-44c9-9dbd-ec48245a655b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/*[not(self::hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])]"
         id="tmp-r-1dd49acd-5444-4ac5-a7c5-eebfa6b5c9d7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-1dd49acd-5444-4ac5-a7c5-eebfa6b5c9d7)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4068']|self::hl7:id|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]|self::hl7:statusCode[@code='active']|self::hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']])]"
         id="tmp-r-a16ad894-2b66-4735-a703-4ec913582500">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a16ad894-2b66-4735-a703-4ec913582500)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/*[not(self::hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069'])]"
         id="tmp-r-6020af03-0d14-4198-9e30-30ff9524ae4f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-6020af03-0d14-4198-9e30-30ff9524ae4f)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3056']/hl7:entry[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4069']|self::hl7:id|self::hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')]|self::hl7:statusCode[@code='completed']|self::hl7:value)]"
         id="tmp-r-67dfbb65-22bd-4906-920b-f23a775c949b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-67dfbb65-22bd-4906-920b-f23a775c949b)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/*[not(self::hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057'])]"
         id="tmp-r-745fb9b4-3312-4779-b589-93e8822702e0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-745fb9b4-3312-4779-b589-93e8822702e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.3057']|self::hl7:code[(@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')]|self::hl7:title|self::hl7:text|self::hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']])]"
         id="tmp-r-61c31112-4d72-4343-a14f-fcb297d2f183">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-61c31112-4d72-4343-a14f-fcb297d2f183)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/*[not(self::hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070'])]"
         id="tmp-r-34b5f6be-0c26-4328-b49b-19b6c593287d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-34b5f6be-0c26-4328-b49b-19b6c593287d)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4070']|self::hl7:id|self::hl7:code|self::hl7:text|self::hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']])]"
         id="tmp-r-a2c1ffe4-e5c1-4f12-908e-a03d7b5bdf77">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a2c1ffe4-e5c1-4f12-908e-a03d7b5bdf77)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:text/*[not(self::hl7:reference)]"
         id="tmp-r-c1b91025-9654-4acb-95dc-58f1dd0fcfa9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-c1b91025-9654-4acb-95dc-58f1dd0fcfa9)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/*[not(self::hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'])]"
         id="tmp-r-3bcd3478-b818-4f7f-9cd7-aa390f7a69dc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-3bcd3478-b818-4f7f-9cd7-aa390f7a69dc)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId/@root='1.2.276.0.76.10.1015']/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3057']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4070']/hl7:reference[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/*[not(self::hl7:templateId[@root='1.2.276.0.76.10.4071']|self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])]"
         id="tmp-r-a5e98838-8beb-4810-b476-3a5d41b73e6d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.1015-2014-09-18T000000.html"
              test="not(.)">(EmergencymedicineNoteCDAdocument): '<name path=".."/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. (rule-reference: tmp-r-a5e98838-8beb-4810-b476-3a5d41b73e6d)</assert>
   </rule>
</pattern>
