<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4072
Name: Problem Concern Act (Multidrug-resistant organism)
Description: Sammelkontainer für Multiresistente Keime
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4072-2015-06-01T000000">
   <title>Problem Concern Act (Multidrug-resistant organism)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]
Item: (ProblemconcernactMDRO)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']"
         id="tmp-r-4560d38b-a952-40ec-9896-6b66ed0ab6b1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@classCode)=('ACT')">(ProblemconcernactMDRO): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@moodCode)=('EVN')">(ProblemconcernactMDRO): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4072'])&gt;=1 ">(ProblemconcernactMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4072'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4072'])&lt;=1">(ProblemconcernactMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4072'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&gt;=1 and not(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&lt;=1">(ProblemconcernactMDRO): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code])&gt;=1 and not(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code])&lt;=1">(ProblemconcernactMDRO): Element hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(ProblemconcernactMDRO): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']])&gt;=1 and not(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:templateId[@root='1.2.276.0.76.10.4072']
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:templateId[@root='1.2.276.0.76.10.4072']"
         id="tmp-r-7918be8d-5b24-440a-8c6d-5e6e8c23606f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4072')">(ProblemconcernactMDRO): Der Wert von @root MUSS '1.2.276.0.76.10.4072' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:id
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:id"
         id="tmp-r-bf90657a-6fe7-4003-bbbd-c022f35d8dd3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]"
         id="tmp-r-6c278e1d-a6ef-4d93-af40-42c6e450c99c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(ProblemconcernactMDRO): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]"
         id="tmp-r-5cb938e4-1ed7-4bd6-9762-60337d297ab2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/concept[@code = $theCode] or completeCodeSystem)">(ProblemconcernactMDRO): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.15933 ActStatus (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ProblemconcernactMDRO): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 2.16.840.1.113883.1.11.15933 ActStatus (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime"
         id="tmp-r-f8d182d5-d6a1-4533-afe1-336ae712b765">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:low)&gt;=1 ">(ProblemconcernactMDRO): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:low)&lt;=1">(ProblemconcernactMDRO): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:high)&lt;=1">(ProblemconcernactMDRO): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime/hl7:low
Item: (ProblemconcernactMDRO)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime/hl7:high
Item: (ProblemconcernactMDRO)
-->


   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]
Item: (ProblemconcernactMDRO)
-->
   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@typeCode)=('SUBJ')">(ProblemconcernactMDRO): Der Wert von @typeCode MUSS 'SUBJ' sein.</assert>
   </rule>
</pattern>
