<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4071
Name: External Document Reference
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4071-2015-03-30T000000">
   <title>External Document Reference</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]
Item: (ExternalDocumentReference)
-->

   <rule context="*[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]"
         id="tmp-r-8904654f-d0d5-4888-8724-317426dd0f62">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'])&gt;=1 and not(hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/@nullFlavor)">(ExternalDocumentReference): Element hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'])&lt;=1">(ExternalDocumentReference): Element hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']
Item: (ExternalDocumentReference)
-->

   <rule context="*[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']"
         id="tmp-r-211b837a-d052-4f7a-9ca7-ebf7b890230c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="string(@classCode)=('DOC')">(ExternalDocumentReference): Der Wert von @classCode MUSS 'DOC' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="string(@moodCode)=('EVN')">(ExternalDocumentReference): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4071'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4071']/@nullFlavor)">(ExternalDocumentReference): Element hl7:templateId[@root='1.2.276.0.76.10.4071'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4071'])&lt;=1">(ExternalDocumentReference): Element hl7:templateId[@root='1.2.276.0.76.10.4071'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&gt;=1 and not(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]/@nullFlavor)">(ExternalDocumentReference): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)])&lt;=1">(ExternalDocumentReference): Element hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:text)&lt;=1">(ExternalDocumentReference): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:templateId[@root='1.2.276.0.76.10.4071']
Item: (ExternalDocumentReference)
-->

   <rule context="*[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:templateId[@root='1.2.276.0.76.10.4071']"
         id="tmp-r-94647ce2-73fb-44c5-962d-a0a15a57e8ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ExternalDocumentReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4071')">(ExternalDocumentReference): Der Wert von @root MUSS '1.2.276.0.76.10.4071' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]
Item: (ExternalDocumentReference)
-->

   <rule context="*[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code)]"
         id="tmp-r-d34bd817-72f5-4a6d-830e-7bb0026eacfe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ExternalDocumentReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ExternalDocumentReference): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.57 Modules document types (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ExternalDocumentReference): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.57 Modules document types (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:text
Item: (ExternalDocumentReference)
-->

   <rule context="*[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:text"
         id="tmp-r-bd995bfb-090b-403b-8c22-529f422a8082">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ExternalDocumentReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:reference)&gt;=1 ">(ExternalDocumentReference): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:reference)&lt;=1">(ExternalDocumentReference): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:text/hl7:reference
Item: (ExternalDocumentReference)
-->

   <rule context="*[hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']]/hl7:externalDocument[hl7:templateId/@root='1.2.276.0.76.10.4071']/hl7:text/hl7:reference"
         id="tmp-r-3e201aa3-a4e9-491f-bcef-2e2afa15234b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ExternalDocumentReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
</pattern>
