<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4068
Name: Isolation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4068-2015-09-18T000000">
   <title>Isolation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]"
         id="tmp-r-45961f67-2ddc-4dde-9d75-141727c48bd5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])&gt;=1 and not(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/@nullFlavor)">(Isolationprocedure): Element hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])&lt;=1">(Isolationprocedure): Element hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']"
         id="tmp-r-0790607b-984c-4b4b-a885-8777e3bb800e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@classCode)=('PROC')">(Isolationprocedure): Der Wert von @classCode MUSS 'PROC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Isolationprocedure): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="not(hl7:code[@code = 'RISO'] and hl7:entryRelationship)">(Isolationprocedure): Grund/Gründe für Isolation nicht bei Umkehrisolierung angeben</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="not(@negationInd='true' and hl7:entryRelationship)">(Isolationprocedure): Grund/Gründe nicht angeben, wenn keine Isolation</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4068'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4068']/@nullFlavor)">(Isolationprocedure): Element hl7:templateId[@root='1.2.276.0.76.10.4068'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4068'])&lt;=1">(Isolationprocedure): Element hl7:templateId[@root='1.2.276.0.76.10.4068'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Isolationprocedure): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(Isolationprocedure): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(Isolationprocedure): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Isolationprocedure): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Isolationprocedure): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Isolationprocedure): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:templateId[@root='1.2.276.0.76.10.4068']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:templateId[@root='1.2.276.0.76.10.4068']"
         id="tmp-r-e0ef97f2-8938-4925-a2cc-a78e813c72c8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4068')">(Isolationprocedure): Der Wert von @root MUSS '1.2.276.0.76.10.4068' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:id
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:id"
         id="tmp-r-4cc3ea64-9985-4a20-b3a3-d492185b7e5d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-9b5006e2-1dc7-4b14-8211-5af663617c28">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Isolationprocedure): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.54 Isolation procedure types (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Isolationprocedure): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.54 Isolation procedure types (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text"
         id="tmp-r-0b21c33e-29a3-44c9-9399-f7395fc001cb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Isolationprocedure): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Isolationprocedure): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/hl7:reference
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/hl7:reference"
         id="tmp-r-179411bb-1fec-4bf2-b2dd-56b69fe5d597">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:statusCode[@code='completed']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:statusCode[@code='completed']"
         id="tmp-r-1ae96741-0ecc-4942-aaf6-e087f2249b48">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Isolationprocedure): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]
Item: (Isolationprocedure)
-->
   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@typeCode)=('RSON')">(Isolationprocedure): Der Wert von @typeCode MUSS 'RSON' sein.</assert>
   </rule>
</pattern>