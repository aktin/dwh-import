<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4068
Name: Isolation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4068-2015-03-30T000000">
   <title>Isolation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]"
         id="tmp-r-8c47bd15-ce03-4841-aee9-4504d9591f1c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])&gt;=1 and not(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/@nullFlavor)">(Isolationprocedure): Element hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'])&lt;=1">(Isolationprocedure): Element hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']"
         id="tmp-r-e7c4ab4e-1e11-4cd7-bdc8-5979413bdf10">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="string(@classCode)=('PROC')">(Isolationprocedure): Der Wert von @classCode MUSS 'PROC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="string(@moodCode)=('EVN')">(Isolationprocedure): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="not(hl7:code/@code='275829005' and hl7:entryRelationship)">(Isolationprocedure): Grund/Gründe für Isolation nicht bei Umkehrisolierung angeben</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="hl7:statusCode/@code='completed' or not(@negationInd)">(Isolationprocedure): Status Code 'completed' nur für NICHT geplante Isolation</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4068'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4068']/@nullFlavor)">(Isolationprocedure): Element hl7:templateId[@root='1.2.276.0.76.10.4068'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4068'])&lt;=1">(Isolationprocedure): Element hl7:templateId[@root='1.2.276.0.76.10.4068'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Isolationprocedure): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(Isolationprocedure): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(Isolationprocedure): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:text)&lt;=1">(Isolationprocedure): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:statusCode[@code='active' or @code='completed'])&gt;=1 and not(hl7:statusCode[@code='active' or @code='completed']/@nullFlavor)">(Isolationprocedure): Element hl7:statusCode[@code='active' or @code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:statusCode[@code='active' or @code='completed'])&lt;=1">(Isolationprocedure): Element hl7:statusCode[@code='active' or @code='completed'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:templateId[@root='1.2.276.0.76.10.4068']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:templateId[@root='1.2.276.0.76.10.4068']"
         id="tmp-r-454cc431-3303-4f5b-848f-a4119f28886e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4068')">(Isolationprocedure): Der Wert von @root MUSS '1.2.276.0.76.10.4068' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:id
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:id"
         id="tmp-r-396e7172-5b1f-42c3-a77f-79baf36577e4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-14780862-4c04-448f-a1cb-d21331ca741d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Isolationprocedure): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.54 Isolation procedure types (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.54-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Isolationprocedure): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.54 Isolation procedure types (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text"
         id="tmp-r-d5a59b08-4b97-4176-9514-26a86bfb5e1a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Isolationprocedure): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="count(hl7:reference)&lt;=1">(Isolationprocedure): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/hl7:reference
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:text/hl7:reference"
         id="tmp-r-c7679221-7218-426c-8358-41da40f37bff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:statusCode[@code='active' or @code='completed']
Item: (Isolationprocedure)
-->

   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:statusCode[@code='active' or @code='completed']"
         id="tmp-r-60d74233-8783-4fd6-9746-e74f3dfe13a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationprocedure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="@nullFlavor or (@code='active') or (@code='completed')">(Isolationprocedure): Der Elementinhalt MUSS einer von 'code 'active' oder code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4068
Context: *[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]
Item: (Isolationprocedure)
-->
   <rule context="*[hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']]/hl7:procedure[hl7:templateId/@root='1.2.276.0.76.10.4068']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4068-2015-03-30T000000.html"
              test="string(@typeCode)=('RSON')">(Isolationprocedure): Der Wert von @typeCode MUSS 'RSON' sein.</assert>
   </rule>
</pattern>
