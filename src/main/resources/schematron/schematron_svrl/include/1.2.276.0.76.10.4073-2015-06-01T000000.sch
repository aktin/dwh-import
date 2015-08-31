<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4073
Name: Problem Observation (Multidrug-resistant organism)
Description: Besiedlung mit multiresistenten Keimen
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4073-2015-06-01T000000">
   <title>Problem Observation (Multidrug-resistant organism)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]"
         id="tmp-r-a838da56-2a1a-457d-be97-6fe64d57a870">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'])&gt;=1 ">(ProblemobservationMDRO): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'])&lt;=1">(ProblemobservationMDRO): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']"
         id="tmp-r-f0cce470-e9b7-40e2-a2ee-179b69a33e80">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="string(@classCode)=('OBS')">(ProblemobservationMDRO): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="string(@moodCode)=('EVN')">(ProblemobservationMDRO): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <let name="seq"
           value="//hl7:observation [hl7:templateId/@root = '1.2.276.0.76.10.4073']/hl7:value/hl7:qualifier [hl7:name/@code = '246075003']/hl7:value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="empty($seq[position() = index-of($seq,.)[2]])">(ProblemobservationMDRO): Nur eine Angabe pro Erreger bei multiresistenten Keimen</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4073'])&gt;=1 ">(ProblemobservationMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4073'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4073'])&lt;=1">(ProblemobservationMDRO): Element hl7:templateId[@root='1.2.276.0.76.10.4073'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:id)&gt;=1 and not(hl7:id/@nullFlavor)">(ProblemobservationMDRO): Element hl7:id ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:text)&lt;=1">(ProblemobservationMDRO): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(ProblemobservationMDRO): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(ProblemobservationMDRO): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(ProblemobservationMDRO): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:templateId[@root='1.2.276.0.76.10.4073']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:templateId[@root='1.2.276.0.76.10.4073']"
         id="tmp-r-328ad7c2-c34a-4275-afb7-bea8b1b0cfa1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4073')">(ProblemobservationMDRO): Der Wert von @root MUSS '1.2.276.0.76.10.4073' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:id
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:id"
         id="tmp-r-646fac23-9905-408e-803b-d4f6d6008fcb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:code[(@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-478ebbbb-5ea2-41c3-b90d-1ee91009bf2f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='64572001' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '64572001' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text"
         id="tmp-r-32d2dced-6777-4f89-b206-22e8dd5051df">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:reference)&gt;=1 ">(ProblemobservationMDRO): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:reference)&lt;=1">(ProblemobservationMDRO): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text/hl7:reference
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:text/hl7:reference"
         id="tmp-r-4b5fe2ed-2b21-4609-bfb1-52afb6b74d58">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:statusCode[@code='completed']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:statusCode[@code='completed']"
         id="tmp-r-4bb218bf-8af6-446f-8f23-471bde19d6ad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='completed')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime"
         id="tmp-r-102734fb-19ee-48c2-8c48-10b131889bad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:low)&gt;=1 ">(ProblemobservationMDRO): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:low)&lt;=1">(ProblemobservationMDRO): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:high)&lt;=1">(ProblemobservationMDRO): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:low
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:low"
         id="tmp-r-8873accd-ff30-4f5c-9d57-c081cdec76b9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:high
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:effectiveTime/hl7:high"
         id="tmp-r-8436c2e6-b585-4b8b-ac9c-3f598fd56396">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-d650edbd-ad3f-4595-874b-d82dc729af39">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CD"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ProblemobservationMDRO): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='246090004'])&gt;=1 and not(hl7:qualifier[hl7:name/@code='246090004']/@nullFlavor)">(ProblemobservationMDRO): Element hl7:qualifier[hl7:name/@code='246090004'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='246090004'])&lt;=1">(ProblemobservationMDRO): Element hl7:qualifier[hl7:name/@code='246090004'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='246075003'])&gt;=1 and not(hl7:qualifier[hl7:name/@code='246075003']/@nullFlavor)">(ProblemobservationMDRO): Element hl7:qualifier[hl7:name/@code='246075003'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='246075003'])&lt;=1">(ProblemobservationMDRO): Element hl7:qualifier[hl7:name/@code='246075003'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246090004']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246090004']"
         id="tmp-r-21ce483b-ab62-4b83-a683-db61ba6f2dc9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[(@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:value[(@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:value[(@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[(@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:value[(@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246090004']/hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246090004']/hl7:name[(@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-e1192a75-4498-4686-88c5-c60c24c8d61b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='246090004' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '246090004' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246090004']/hl7:value[(@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246090004']/hl7:value[(@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-39bd42e5-eefd-4588-a710-6f101b9a4b79">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='365691004' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '365691004' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246075003']
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246075003']"
         id="tmp-r-5825700f-7e43-4f8e-810c-a52da2321435">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 and not(hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]/@nullFlavor)">(ProblemobservationMDRO): Element hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ProblemobservationMDRO): Element hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&gt;=1 ">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor])&lt;=1">(ProblemobservationMDRO): Element hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246075003']/hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246075003']/hl7:name[(@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="tmp-r-789b6e82-4818-4738-a395-349f157fd65a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or (@code='246075003' and @codeSystem='2.16.840.1.113883.6.96')">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von 'code '246075003' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246075003']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]
Item: (ProblemobservationMDRO)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4073']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]/hl7:qualifier[hl7:name/@code='246075003']/hl7:value[concat(@code,@codeSystem)=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/concept/concat(@code,@codeSystem) or (@nullFlavor=doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception/@code) or @nullFlavor]"
         id="tmp-r-72337ea7-4d71-4376-b6b4-fe09adaec6eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemobservationMDRO): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CV"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion] or completeCodeSystem[@codeSystem=$theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ProblemobservationMDRO): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.60 Multiresistant Organisms (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')/*/valueSet/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4073-2015-06-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ProblemobservationMDRO): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.60 Multiresistant Organisms (DYNAMIC).</assert>
   </rule>
</pattern>
