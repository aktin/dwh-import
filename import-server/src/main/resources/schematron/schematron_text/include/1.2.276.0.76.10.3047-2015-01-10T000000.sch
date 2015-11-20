<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3047
Name: Klinische Basisinformationen
Description: Klinische Basisinformationen Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3047-2015-01-10T000000">
   <title>Klinische Basisinformationen</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]
Item: (ClinicalInformation)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']
Item: (ClinicalInformation)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']"
         id="tmp-r-14e0e882-76ca-47f3-ad79-c60bfb4d9817">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@classCode)=('DOCSECT') or not(@classCode)">(ClinicalInformation): Der Wert von @classCode MUSS 'DOCSECT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3047'])&gt;=1 ">(ClinicalInformation): Element hl7:templateId[@root='1.2.276.0.76.10.3047'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.3047'])&lt;=1">(ClinicalInformation): Element hl7:templateId[@root='1.2.276.0.76.10.3047'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(ClinicalInformation): Element hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(ClinicalInformation): Element hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:title)&gt;=1 and not(hl7:title/@nullFlavor)">(ClinicalInformation): Element hl7:title ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:title)&lt;=1">(ClinicalInformation): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:text)&gt;=1 and not(hl7:text/@nullFlavor)">(ClinicalInformation): Element hl7:text ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:text)&lt;=1">(ClinicalInformation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']])&lt;=1">(ClinicalInformation): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']])&lt;=1">(ClinicalInformation): Element hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']])&lt;=1">(ClinicalInformation): Element hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']])&lt;=1">(ClinicalInformation): Element hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:templateId[@root='1.2.276.0.76.10.3047']
Item: (ClinicalInformation)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:templateId[@root='1.2.276.0.76.10.3047']"
         id="tmp-r-ed3bce0a-fc97-4556-a58d-9379c67ea13b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ClinicalInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@root)=('1.2.276.0.76.10.3047')">(ClinicalInformation): Der Wert von @root MUSS '1.2.276.0.76.10.3047' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (ClinicalInformation)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:code[(@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-7d8b56bd-546f-4084-8618-6e22cb12d88a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ClinicalInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="@nullFlavor or (@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')">(ClinicalInformation): Der Elementinhalt MUSS einer von 'code '55752-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:title
Item: (ClinicalInformation)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:title"
         id="tmp-r-627962db-f4fc-42b4-8a24-c8b5e90c3894">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ClinicalInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ST"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="text()='Klinische Basisinformationen'">(ClinicalInformation): Der Elementinhalt von 'hl7:title' MUSS ''Klinische Basisinformationen'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:text
Item: (ClinicalInformation)
-->

   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:text"
         id="tmp-r-f2cb9abf-5a07-4c58-93b9-02e689edcffc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ClinicalInformation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="SD.TEXT"/>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]
Item: (ClinicalInformation)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4043']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(ClinicalInformation): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(ClinicalInformation): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(ClinicalInformation): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(ClinicalInformation): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]
Item: (ClinicalInformation)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:substanceAdministration[hl7:templateId/@root='1.2.276.0.76.10.4044']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(ClinicalInformation): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(ClinicalInformation): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(ClinicalInformation): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(ClinicalInformation): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]
Item: (ClinicalInformation)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(ClinicalInformation): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(ClinicalInformation): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(ClinicalInformation): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(ClinicalInformation): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]
Item: (ClinicalInformation)
-->
   <rule context="*[hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']]/hl7:section[hl7:templateId/@root='1.2.276.0.76.10.3047']/hl7:entry[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@typeCode)=('COMP')">(ClinicalInformation): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@typeCode) or (string-length(@typeCode)&gt;0 and not(matches(@typeCode,'\s')))">(ClinicalInformation): Attribute @typeCode MUSS vom Datentyp 'cs' sein</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="string(@contextConductionInd)=('true') or not(@contextConductionInd)">(ClinicalInformation): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.3047-2015-01-10T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(ClinicalInformation): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein</assert>
   </rule>
</pattern>
