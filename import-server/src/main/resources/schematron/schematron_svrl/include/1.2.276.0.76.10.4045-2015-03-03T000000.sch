<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4045
Name: Modified Rankin Scale
Description: Modified Rankin Skala
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4045-2015-03-03T000000">
   <title>Modified Rankin Scale</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]"
         id="tmp-r-aa346675-760b-4798-b2a0-d5e55cf6a220">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])&gt;=1 ">(Modifiedrankinscale): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])&lt;=1">(Modifiedrankinscale): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']"
         id="tmp-r-ba919514-691d-4883-9004-0b9a855e2e8d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Modifiedrankinscale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Modifiedrankinscale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4045'])&gt;=1 ">(Modifiedrankinscale): Element hl7:templateId[@root='1.2.276.0.76.10.4045'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4045'])&lt;=1">(Modifiedrankinscale): Element hl7:templateId[@root='1.2.276.0.76.10.4045'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 ">(Modifiedrankinscale): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:id)&lt;=1">(Modifiedrankinscale): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Modifiedrankinscale): Element hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Modifiedrankinscale): Element hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Modifiedrankinscale): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Modifiedrankinscale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Modifiedrankinscale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Modifiedrankinscale): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:value)&gt;=1 ">(Modifiedrankinscale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:value)&lt;=1">(Modifiedrankinscale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:templateId[@root='1.2.276.0.76.10.4045']
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:templateId[@root='1.2.276.0.76.10.4045']"
         id="tmp-r-9cdca026-736b-4e3c-a3c8-81983ae601f6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4045')">(Modifiedrankinscale): Der Wert von @root MUSS '1.2.276.0.76.10.4045' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:id
Item: (Modifiedrankinscale)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-1f1da641-f75c-4c9f-ab8a-25ec6f88a88c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@nullFlavor or (@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')">(Modifiedrankinscale): Der Elementinhalt MUSS einer von 'code '75859-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text"
         id="tmp-r-7b9b51de-92fb-41dc-a6c5-a95621e95f92">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Modifiedrankinscale): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Modifiedrankinscale): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/hl7:reference
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/hl7:reference"
         id="tmp-r-1a223c16-cfcc-475d-b277-cc230a238aa9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:statusCode[@code='completed']
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:statusCode[@code='completed']"
         id="tmp-r-aaa0389b-5eda-43c9-9e94-3839b276db80">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Modifiedrankinscale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:effectiveTime
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:effectiveTime"
         id="tmp-r-00f2ae1f-09a4-4ece-8f8c-0521258a39c9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:value
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:value"
         id="tmp-r-fd5a8de4-894a-4393-8704-2911f7955af0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=0 and number($theValue)&lt;=6))">(Modifiedrankinscale): value MUSS im Bereich [0..6] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="$digitok or @nullFlavor">(Modifiedrankinscale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Modifiedrankinscale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@value">(Modifiedrankinscale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@unit)=('{score}')">(Modifiedrankinscale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
</pattern>
