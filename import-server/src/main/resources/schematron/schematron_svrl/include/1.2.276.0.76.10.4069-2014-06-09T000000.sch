<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4069
Name: Isolation Indication
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4069-2014-06-09T000000">
   <title>Isolation Indication</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4069
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]
Item: (Isolationindication)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4069
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']
Item: (Isolationindication)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']"
         id="tmp-r-88b87d11-c5da-47af-8807-adc5ba300c66">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="string(@classCode)=('OBS')">(Isolationindication): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="string(@moodCode)=('EVN')">(Isolationindication): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4069'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4069']/@nullFlavor)">(Isolationindication): Element hl7:templateId[@root='1.2.276.0.76.10.4069'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4069'])&lt;=1">(Isolationindication): Element hl7:templateId[@root='1.2.276.0.76.10.4069'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Isolationindication): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(Isolationindication): Element hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Isolationindication): Element hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Isolationindication): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Isolationindication): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(Isolationindication): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(Isolationindication): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4069
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:templateId[@root='1.2.276.0.76.10.4069']
Item: (Isolationindication)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:templateId[@root='1.2.276.0.76.10.4069']"
         id="tmp-r-79f8f8c9-93e2-487e-b280-55116411983a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4069')">(Isolationindication): Der Wert von @root MUSS '1.2.276.0.76.10.4069' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4069
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:id
Item: (Isolationindication)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4069
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Isolationindication)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:code[(@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-d815bb50-be77-4113-87e2-6c074857b2cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="@nullFlavor or (@code='55607006' and @codeSystem='2.16.840.1.113883.6.96')">(Isolationindication): Der Elementinhalt MUSS einer von 'code '55607006' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4069
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:statusCode[@code='completed']
Item: (Isolationindication)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:statusCode[@code='completed']"
         id="tmp-r-08a4447b-dcf6-4923-a077-b92dc4ce1db4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="@nullFlavor or (@code='completed')">(Isolationindication): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4069
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (Isolationindication)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4069']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-28e4844e-e686-4d52-96d8-cccbd9a0e3eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Isolationindication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Isolationindication): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.55 Isolation reason (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.55-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4069-2014-06-09T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Isolationindication): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.55 Isolation reason (DYNAMIC).</assert>
   </rule>
</pattern>
