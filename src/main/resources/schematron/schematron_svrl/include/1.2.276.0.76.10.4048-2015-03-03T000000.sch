<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4048
Name: Problem Concern Act (Abschlussdiagnosen)
Description: Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnosen ggf. mit ICD10-Kodes
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4048-2015-03-03T000000">
   <title>Problem Concern Act (Abschlussdiagnosen)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]
Item: (Problemconcernacteddiagnoses)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']
Item: (Problemconcernacteddiagnoses)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']"
         id="tmp-r-7f410daa-713a-4361-90d5-d301f3627b6d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="string(@classCode)=('ACT')">(Problemconcernacteddiagnoses): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Problemconcernacteddiagnoses): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4048'])&gt;=1 ">(Problemconcernacteddiagnoses): Element hl7:templateId[@root='1.2.276.0.76.10.4048'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4048'])&lt;=1">(Problemconcernacteddiagnoses): Element hl7:templateId[@root='1.2.276.0.76.10.4048'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Problemconcernacteddiagnoses): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&gt;=1 and not(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]/@nullFlavor)">(Problemconcernacteddiagnoses): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&lt;=1">(Problemconcernacteddiagnoses): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code])&gt;=1 and not(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]/@nullFlavor)">(Problemconcernacteddiagnoses): Element hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code])&lt;=1">(Problemconcernacteddiagnoses): Element hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Problemconcernacteddiagnoses): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Problemconcernacteddiagnoses): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']])&gt;=1 and not(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]/@nullFlavor)">(Problemconcernacteddiagnoses): Element hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']])&lt;=5">(Problemconcernacteddiagnoses): Element hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']] kommt zu häufig vor [max 5x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:templateId[@root='1.2.276.0.76.10.4048']
Item: (Problemconcernacteddiagnoses)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:templateId[@root='1.2.276.0.76.10.4048']"
         id="tmp-r-da9689b8-6155-4bcc-88ea-fbcd3a7ee59c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernacteddiagnoses): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4048')">(Problemconcernacteddiagnoses): Der Wert von @root MUSS '1.2.276.0.76.10.4048' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:id
Item: (Problemconcernacteddiagnoses)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:id"
         id="tmp-r-f6ce197b-768a-4320-8681-7f976a0d432b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernacteddiagnoses): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]
Item: (Problemconcernacteddiagnoses)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]"
         id="tmp-r-7942f3d5-cbd5-49ba-9531-02ddfee2c3ea">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernacteddiagnoses): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(Problemconcernacteddiagnoses): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]
Item: (Problemconcernacteddiagnoses)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]"
         id="tmp-r-0693a40d-b596-4e00-9bf2-a4fd1b2ffe68">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernacteddiagnoses): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/concept[@code = $theCode] or completeCodeSystem)">(Problemconcernacteddiagnoses): Der Elementinhalt MUSS einer von 'ActStatus (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Problemconcernacteddiagnoses): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set ActStatus (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime
Item: (Problemconcernacteddiagnoses)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime"
         id="tmp-r-a50cb895-b3fa-438e-a5b8-2a88c4103d9c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernacteddiagnoses): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:low)&gt;=1 ">(Problemconcernacteddiagnoses): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:low)&lt;=1">(Problemconcernacteddiagnoses): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Problemconcernacteddiagnoses): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime/hl7:low
Item: (Problemconcernacteddiagnoses)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:effectiveTime/hl7:high
Item: (Problemconcernacteddiagnoses)
-->


   <!--
Template derived rules for ID: 1.2.276.0.76.10.4048
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]
Item: (Problemconcernacteddiagnoses)
-->
   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4048']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4049']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4048-2015-03-03T000000.html"
              test="string(@typeCode)=('SUBJ')">(Problemconcernacteddiagnoses): Der Wert von @typeCode MUSS 'SUBJ' sein.</assert>
   </rule>
</pattern>
