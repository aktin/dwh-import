<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4030
Name: Atemfrequenz
Description: Atemfrequenz
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4030-2014-09-16T000000">
   <title>Atemfrequenz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]"
         id="tmp-r-f37cfe58-3c00-45b8-a5ce-6bc9221290d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])&gt;=1 ">(RespiratoryRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])&lt;=1">(RespiratoryRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']"
         id="tmp-r-99fa22ee-e6ba-4678-9b3d-581e46b76e0f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(RespiratoryRate): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(RespiratoryRate): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4030'])&gt;=1 ">(RespiratoryRate): Element hl7:templateId[@root='1.2.276.0.76.10.4030'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4030'])&lt;=1">(RespiratoryRate): Element hl7:templateId[@root='1.2.276.0.76.10.4030'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(RespiratoryRate): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(RespiratoryRate): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(RespiratoryRate): Element hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(RespiratoryRate): Element hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(RespiratoryRate): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(RespiratoryRate): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(RespiratoryRate): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(RespiratoryRate): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(RespiratoryRate): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(RespiratoryRate): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:templateId[@root='1.2.276.0.76.10.4030']
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:templateId[@root='1.2.276.0.76.10.4030']"
         id="tmp-r-35186982-4367-4ae1-a196-c7b9b1bb0427">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4030')">(RespiratoryRate): Der Wert von @root MUSS '1.2.276.0.76.10.4030' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:id
Item: (RespiratoryRate)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-dbc08262-26e6-4a89-a724-a7325dbcf60f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')">(RespiratoryRate): Der Elementinhalt MUSS einer von 'code '9279-1' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:originalText)&lt;=1">(RespiratoryRate): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/hl7:originalText
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/hl7:originalText"
         id="tmp-r-2320ab08-90bb-4f5c-b8b8-5fa77ac5fa6d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text"
         id="tmp-r-7d5f6d2f-03de-44ae-ab37-7936a3cca802">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(RespiratoryRate): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(RespiratoryRate): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/hl7:reference
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/hl7:reference"
         id="tmp-r-9a0fc53b-8fe8-46a5-bda3-713d35c30304">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:statusCode[@code='completed']
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:statusCode[@code='completed']"
         id="tmp-r-fbeb8ad7-c277-4699-a7fc-676fbc63c7cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(RespiratoryRate): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:effectiveTime
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:effectiveTime"
         id="tmp-r-42aa17ce-b772-45ca-8d3d-a6a5e99bd55e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:value
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:value"
         id="tmp-r-e269793a-01c2-4e57-9e1c-923839c5265c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='/min'))">(RespiratoryRate): value MUSS die Einheit '/min' nutzen </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(RespiratoryRate): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150629T100752/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(RespiratoryRate): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
