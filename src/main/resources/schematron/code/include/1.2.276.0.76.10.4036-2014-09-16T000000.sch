<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4036
Name: Schmerz
Description: Schmerz
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4036-2014-09-16T000000">
   <title>Schmerz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]"
         id="tmp-r-57b3f73f-4336-4640-9283-d3b2535756eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])&gt;=1 ">(Painseverity): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])&lt;=1">(Painseverity): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']"
         id="tmp-r-ea2756a5-728e-41be-a180-c82cc755f817">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(Painseverity): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(Painseverity): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4036'])&gt;=1 ">(Painseverity): Element hl7:templateId[@root='1.2.276.0.76.10.4036'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4036'])&lt;=1">(Painseverity): Element hl7:templateId[@root='1.2.276.0.76.10.4036'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(Painseverity): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(Painseverity): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Painseverity): Element hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Painseverity): Element hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(Painseverity): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Painseverity): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Painseverity): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Painseverity): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(Painseverity): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(Painseverity): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:templateId[@root='1.2.276.0.76.10.4036']
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:templateId[@root='1.2.276.0.76.10.4036']"
         id="tmp-r-121e5e2f-85e6-488c-8feb-c0ad146e3516">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4036')">(Painseverity): Der Wert von @root MUSS '1.2.276.0.76.10.4036' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:id
Item: (Painseverity)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-6cc9ea07-bd80-4d39-b4db-76bc4d9339fc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@nullFlavor or (@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')">(Painseverity): Der Elementinhalt MUSS einer von 'code '72514-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text"
         id="tmp-r-aa377382-baba-48c6-85fc-cf60c26db057">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Painseverity): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(Painseverity): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/hl7:reference
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/hl7:reference"
         id="tmp-r-41d30f47-8af4-4c5e-a956-569d3a11f5f9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:statusCode[@code='completed']
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:statusCode[@code='completed']"
         id="tmp-r-f438c402-4152-4316-89f6-20bf433ccd2c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Painseverity): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:effectiveTime
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:effectiveTime"
         id="tmp-r-d817f4af-27ac-484d-a35e-42a4f4e8e8de">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:value
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:value"
         id="tmp-r-815adeb1-a87f-4566-b324-b38d89f6eb72">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CO" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CO"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150520T182313/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=0 and number($theValue)&lt;=10))">(Painseverity): value MUSS im Bereich [0..10] liegen  </assert>
   </rule>
</pattern>
