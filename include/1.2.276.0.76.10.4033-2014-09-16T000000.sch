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
         id="tmp-r-227bd2a3-31c9-463c-93c2-c89ccacf4d28">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])&gt;=1 ">(HeartRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'])&lt;=1">(HeartRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']"
         id="tmp-r-5ef1fed1-ac0a-4aeb-8272-130dc9c14e16">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(HeartRate): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(HeartRate): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4033'])&gt;=1 ">(HeartRate): Element hl7:templateId[@root='1.2.276.0.76.10.4033'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4033'])&lt;=1">(HeartRate): Element hl7:templateId[@root='1.2.276.0.76.10.4033'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(HeartRate): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(HeartRate): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(HeartRate): Element hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(HeartRate): Element hl7:code[(@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(HeartRate): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(HeartRate): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(HeartRate): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(HeartRate): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(HeartRate): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(HeartRate): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:templateId[@root='1.2.276.0.76.10.4033']
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:templateId[@root='1.2.276.0.76.10.4033']"
         id="tmp-r-38f49a77-a793-4e6c-841b-60bc40ecab13">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
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
         id="tmp-r-afdb8094-f94e-4798-af20-9b2e11f38deb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Heart Rate')">(HeartRate): Der Elementinhalt MUSS einer von 'code '8867-4' codeSystem '2.16.840.1.113883.6.1' displayName='Heart Rate'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text"
         id="tmp-r-406d7082-ee0b-4c3d-85fe-3d59ee54ccb0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(HeartRate): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(HeartRate): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/hl7:reference
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:text/hl7:reference"
         id="tmp-r-6da50b5c-6ecf-4285-9bfe-6ef699275008">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:statusCode[@code='completed']
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:statusCode[@code='completed']"
         id="tmp-r-304090a0-7d45-4196-9b7a-b66ea7ff4f67">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(HeartRate): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:effectiveTime
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:effectiveTime"
         id="tmp-r-7de02bbb-10f4-4e12-abce-d21325da82de">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:value
Item: (HeartRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4033']/hl7:value"
         id="tmp-r-c7ddd44a-8bef-4048-a4f3-6df2f65c7840">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeartRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='/min'))">(HeartRate): value MUSS die Einheit '/min' nutzen </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(HeartRate): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(HeartRate): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
