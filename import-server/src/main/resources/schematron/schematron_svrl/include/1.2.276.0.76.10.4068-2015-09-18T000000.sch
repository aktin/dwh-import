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
         id="tmp-r-206b7d36-9dcd-4172-81c0-c6c1dc2e4f9d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])&gt;=1 and not(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/@nullFlavor)">(Isolationprocedure): Element hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])&lt;=1">(Isolationprocedure): Element hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']"
         id="tmp-r-98438c8a-98b5-467f-9f0d-b9b2d735691d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@classCode)=('PROC')">(Isolationprocedure): Der Wert von @classCode MUSS 'PROC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@moodCode)=('EVN')">(Isolationprocedure): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="not(hl7:code[@code = 'RISO'] and hl7:entryRelationship)">(Isolationprocedure): Grund/Gründe für Isolation nicht bei Umkehrisolierung angeben</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="not(@negationInd='true' and hl7:entryRelationship)">(Isolationprocedure): Grund/Gründe nicht angeben, wenn keine Isolation</assert>
      <assert role="error"
              test="not(hl7:code[@code = 'RISO'] and hl7:entryRelationship)">(Isolationprocedure): Grund/Gründe für Isolation nicht bei Umkehrisolierung angeben</assert>
      <assert role="error" test="not(@negationInd='true' and hl7:entryRelationship)">(Isolationprocedure): Grund/Gründe nicht angeben, wenn keine Isolation</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4068'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4068']/@nullFlavor)">(Isolationprocedure): Element hl7:templateId[@root='1.2.276.0.76.10.4068'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4068'])&lt;=1">(Isolationprocedure): Element hl7:templateId[@root='1.2.276.0.76.10.4068'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Isolationprocedure): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(Isolationprocedure): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(Isolationprocedure): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:text)&lt;=1">(Isolationprocedure): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Isolationprocedure): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Isolationprocedure): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:templateId[@root='1.2.276.0.76.10.4068']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:templateId[@root='1.2.276.0.76.10.4068']"
         id="tmp-r-850f8a27-5b87-4f9e-a2e8-79eb4cb1ea6a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4068')">(Isolationprocedure): Der Wert von @root MUSS '1.2.276.0.76.10.4068' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:id
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:id"
         id="tmp-r-5091df4c-c849-4404-8a9e-0d9638005e96">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-6121497b-045f-4f28-87d5-367b8c380e32">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Isolationprocedure): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.54 Isolation procedure types (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Isolationprocedure): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.54 Isolation procedure types (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text"
         id="tmp-r-ee2e0281-f7d9-417c-b9e8-ccfb7cd70f6e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Isolationprocedure): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="count(hl7:reference)&lt;=1">(Isolationprocedure): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/hl7:reference
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/hl7:reference"
         id="tmp-r-05d090d1-68c1-4f12-b1ef-cfd442778e3e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:statusCode[@code='completed']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:statusCode[@code='completed']"
         id="tmp-r-c7557fdc-a31a-47a4-ad6f-016edf32a57f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Isolationprocedure): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]
Item: (Isolationprocedure)
-->
   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151019T131019/tmp-1.2.276.0.76.10.4068-2015-09-18T000000.html"
              test="string(@typeCode)=('RSON')">(Isolationprocedure): Der Wert von @typeCode MUSS 'RSON' sein.</assert>
   </rule>
</pattern>
