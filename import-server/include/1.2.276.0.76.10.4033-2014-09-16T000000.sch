<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4033
Name: Herzfrequenz
Description: Herzfrequenz
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4033-2014-09-16T000000">
   <title>Herzfrequenz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]"
         id="tmp-r-ea3c7df5-7246-4e53-a5d2-76a57f4addf6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])&gt;=1 ">(HeartRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])&lt;=1">(HeartRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']"
         id="tmp-r-cc6da90e-23e4-40b0-b1fd-7b2495ee4960">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(HeartRate): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(HeartRate): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4033'])&gt;=1 ">(HeartRate): Element hl7:templateId[@root='1.2.276.0.76.10.4033'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4033'])&lt;=1">(HeartRate): Element hl7:templateId[@root='1.2.276.0.76.10.4033'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(HeartRate): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(HeartRate): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(HeartRate): Element hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(HeartRate): Element hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(HeartRate): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(HeartRate): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(HeartRate): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(HeartRate): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(HeartRate): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(HeartRate): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:templateId[@root='1.2.276.0.76.10.4033']
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:templateId[@root='1.2.276.0.76.10.4033']"
         id="tmp-r-a0397163-405c-4429-9ca2-85b0958ffb49">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4033')">(HeartRate): Der Wert von @root MUSS '1.2.276.0.76.10.4033' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:id
Item: (HeartRate)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-0531e7e5-3129-4d2c-861a-ce0d75c0feb4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Heart Rate')">(HeartRate): Der Elementinhalt MUSS einer von 'code '8867-4' codeSystem '2.16.840.1.113883.6.1' displayName='Heart Rate'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text"
         id="tmp-r-1eea228d-a672-4835-8d70-9b1a469da557">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(HeartRate): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(HeartRate): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/hl7:reference
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/hl7:reference"
         id="tmp-r-7c62725c-ca6e-4a4f-b68b-0e8614d4363c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:statusCode[@code='completed']
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:statusCode[@code='completed']"
         id="tmp-r-9956cd27-e902-4281-b904-0e765f4701bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(HeartRate): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:effectiveTime
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:effectiveTime"
         id="tmp-r-fd8aaee5-81f8-494d-906b-942367699798">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:value
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:value"
         id="tmp-r-78483ced-1896-4e42-b01f-62618d8ec463">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='/min'))">(HeartRate): value MUSS die Einheit '/min' nutzen </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(HeartRate): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(HeartRate): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
