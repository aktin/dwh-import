<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4039
Name: Problem Concern Act (Text/CEDIS)
Description: Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptome und ggf. CEDIS-Kodes
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4039-2015-03-03T000000">
   <title>Problem Concern Act (Text/CEDIS)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]
Item: (Problemconcernactcedis)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']
Item: (Problemconcernactcedis)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']"
         id="tmp-r-cf4a8029-fbd3-4a07-81c6-e0b796ff25a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@classCode)=('ACT')">(Problemconcernactcedis): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Problemconcernactcedis): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4039'])&gt;=1 ">(Problemconcernactcedis): Element hl7:templateId[@root='1.2.276.0.76.10.4039'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4039'])&lt;=1">(Problemconcernactcedis): Element hl7:templateId[@root='1.2.276.0.76.10.4039'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(Problemconcernactcedis): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&gt;=1 and not(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]/@nullFlavor)">(Problemconcernactcedis): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&lt;=1">(Problemconcernactcedis): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code])&gt;=1 and not(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]/@nullFlavor)">(Problemconcernactcedis): Element hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code])&lt;=1">(Problemconcernactcedis): Element hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&gt;=1 and not(hl7:effectiveTime/@nullFlavor)">(Problemconcernactcedis): Element hl7:effectiveTime ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Problemconcernactcedis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']])&gt;=1 and not(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]/@nullFlavor)">(Problemconcernactcedis): Element hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:templateId[@root='1.2.276.0.76.10.4039']
Item: (Problemconcernactcedis)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:templateId[@root='1.2.276.0.76.10.4039']"
         id="tmp-r-307d528f-f0aa-4559-8c15-a53f6fca8efb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernactcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4039')">(Problemconcernactcedis): Der Wert von @root MUSS '1.2.276.0.76.10.4039' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:id
Item: (Problemconcernactcedis)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:id"
         id="tmp-r-285fbaa8-00d3-4905-99a6-d6e58f0ac9a3">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernactcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]
Item: (Problemconcernactcedis)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]"
         id="tmp-r-9ee38d2a-6e3c-4274-b685-066c683d3825">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernactcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(Problemconcernactcedis): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]
Item: (Problemconcernactcedis)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:statusCode[@code=doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/*/@code]"
         id="tmp-r-27e23bfa-82c3-4ee1-bcd0-902331fb965f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernactcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/concept[@code = $theCode] or completeCodeSystem)">(Problemconcernactcedis): Der Elementinhalt MUSS einer von 'ActStatus (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Problemconcernactcedis): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set ActStatus (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime
Item: (Problemconcernactcedis)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime"
         id="tmp-r-f26a881f-ad2c-4cc1-823d-d98b9893b3d4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Problemconcernactcedis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:low)&gt;=1 ">(Problemconcernactcedis): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:low)&lt;=1">(Problemconcernactcedis): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:high)&lt;=1">(Problemconcernactcedis): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime/hl7:low
Item: (Problemconcernactcedis)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:effectiveTime/hl7:high
Item: (Problemconcernactcedis)
-->


   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]
Item: (Problemconcernactcedis)
-->
   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4039']/hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4040']]">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@typeCode)=('SUBJ')">(Problemconcernactcedis): Der Wert von @typeCode MUSS 'SUBJ' sein.</assert>
   </rule>
</pattern>
