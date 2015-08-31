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
         id="tmp-r-4af648a0-1680-4f78-9796-8def47af4c65">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])&gt;=1 ">(Modifiedrankinscale): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'])&lt;=1">(Modifiedrankinscale): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']"
         id="tmp-r-88ec09a3-73e2-451f-84b1-5fce4dea1a3d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@classCode)=('OBS')">(Modifiedrankinscale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@moodCode)=('EVN')">(Modifiedrankinscale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4045'])&gt;=1 ">(Modifiedrankinscale): Element hl7:templateId[@root='1.2.276.0.76.10.4045'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4045'])&lt;=1">(Modifiedrankinscale): Element hl7:templateId[@root='1.2.276.0.76.10.4045'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:id)&gt;=1 ">(Modifiedrankinscale): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:id)&lt;=1">(Modifiedrankinscale): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Modifiedrankinscale): Element hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Modifiedrankinscale): Element hl7:code[(@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:text)&lt;=1">(Modifiedrankinscale): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Modifiedrankinscale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Modifiedrankinscale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Modifiedrankinscale): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:value)&gt;=1 ">(Modifiedrankinscale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:value)&lt;=1">(Modifiedrankinscale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:templateId[@root='1.2.276.0.76.10.4045']
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:templateId[@root='1.2.276.0.76.10.4045']"
         id="tmp-r-90492b29-c52f-491c-9997-0b09b44f3df9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
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
         id="tmp-r-c93d0ebe-5ce4-4105-bac8-9675a8e7e0fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@nullFlavor or (@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')">(Modifiedrankinscale): Der Elementinhalt MUSS einer von 'code '75859-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text"
         id="tmp-r-f6a9339d-949e-4c1b-a426-54fc9abce759">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Modifiedrankinscale): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:reference)&lt;=1">(Modifiedrankinscale): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/hl7:reference
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:text/hl7:reference"
         id="tmp-r-7b008c86-d33d-4a1c-98e4-7195c8558e42">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:statusCode[@code='completed']
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:statusCode[@code='completed']"
         id="tmp-r-72567180-b2d8-446e-9512-1e363a3afca0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Modifiedrankinscale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:effectiveTime
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:effectiveTime"
         id="tmp-r-eaa60a5b-b3d1-4946-a8b8-750db894f8fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:value
Item: (Modifiedrankinscale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4045']/hl7:value"
         id="tmp-r-a11657ff-826b-4170-858a-26c772e56aef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Modifiedrankinscale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=0 and number($theValue)&lt;=6))">(Modifiedrankinscale): value MUSS im Bereich [0..6] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="$digitok or @nullFlavor">(Modifiedrankinscale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Modifiedrankinscale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@value">(Modifiedrankinscale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@unit)=('{score}')">(Modifiedrankinscale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
</pattern>
