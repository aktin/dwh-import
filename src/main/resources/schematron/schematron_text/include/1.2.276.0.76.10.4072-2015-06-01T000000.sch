<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4072
Name: Problem Concern Act (Multidrug-resistant organism)
Description: 
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
         id="tmp-r-eaf1c572-b75b-4cc9-a553-c30605743e0a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@classCode)=('ACT')">(ProblemconcernactMDRO): Der Wert von @classCode MUSS 'ACT' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@moodCode)=('EVN')">(ProblemconcernactMDRO): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4072'])&gt;=1 ">(ProblemconcernactMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4072'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4072'])&lt;=1">(ProblemconcernactMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4072'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&gt;=1 and not(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')])&lt;=1">(ProblemconcernactMDRO): Element hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(ProblemconcernactMDRO): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(ProblemconcernactMDRO): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']])&gt;=1 and not(hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/@nullFlavor)">(ProblemconcernactMDRO): Element hl7:entryRelationship[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:templateId[@root='1.2.276.0.76.10.4072']
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:templateId[@root='1.2.276.0.76.10.4072']"
         id="tmp-r-6066d9b2-e0de-4d51-b551-44c0f3507a16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4072')">(ProblemconcernactMDRO): Der Wert von @root MUSS '1.2.276.0.76.10.4072' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:id
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:id"
         id="tmp-r-c89790e1-b172-499c-8be1-ef840f8b9fa8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:code[(@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')]"
         id="tmp-r-ee8d4695-4109-41fd-bba7-5c521d7ef1c7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(ProblemconcernactMDRO): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:statusCode[@code='completed']
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:statusCode[@code='completed']"
         id="tmp-r-3596efea-2e75-4dcd-9d82-5577ef5737cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="@nullFlavor or (@code='completed')">(ProblemconcernactMDRO): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime
Item: (ProblemconcernactMDRO)
-->

   <rule context="*[hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']]/hl7:act[hl7:templateId/@root='1.2.276.0.76.10.4072']/hl7:effectiveTime"
         id="tmp-r-6e402ef8-9a9f-4c09-884c-92ebb0065d11">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemconcernactMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:low)&gt;=1 ">(ProblemconcernactMDRO): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="count(hl7:low)&lt;=1">(ProblemconcernactMDRO): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
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
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4072-2015-06-01T000000.html"
              test="string(@typeCode)=('SUBJ')">(ProblemconcernactMDRO): Der Wert von @typeCode MUSS 'SUBJ' sein.</assert>
   </rule>
</pattern>
