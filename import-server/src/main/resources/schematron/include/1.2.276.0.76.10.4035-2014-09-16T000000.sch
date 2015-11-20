<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4035
Name: Körperkerntemperatur
Description: Körperkerntemperatur
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4035-2014-09-16T000000">
   <title>Körperkerntemperatur</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]"
         id="tmp-r-e1b962b2-9120-46fc-831c-a868c0cd7ed8">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])&gt;=1 ">(BodyTemperatureCore): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])&lt;=1">(BodyTemperatureCore): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']"
         id="tmp-r-8fda9726-8b0d-4b7a-a6fd-979f62b11413">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(BodyTemperatureCore): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(BodyTemperatureCore): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4035'])&gt;=1 ">(BodyTemperatureCore): Element hl7:templateId[@root='1.2.276.0.76.10.4035'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4035'])&lt;=1">(BodyTemperatureCore): Element hl7:templateId[@root='1.2.276.0.76.10.4035'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(BodyTemperatureCore): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(BodyTemperatureCore): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(BodyTemperatureCore): Element hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(BodyTemperatureCore): Element hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(BodyTemperatureCore): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(BodyTemperatureCore): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(BodyTemperatureCore): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(BodyTemperatureCore): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(BodyTemperatureCore): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(BodyTemperatureCore): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:templateId[@root='1.2.276.0.76.10.4035']
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:templateId[@root='1.2.276.0.76.10.4035']"
         id="tmp-r-d95e89d8-7071-41da-bf95-77e002eb79ad">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4035')">(BodyTemperatureCore): Der Wert von @root MUSS '1.2.276.0.76.10.4035' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:id
Item: (BodyTemperatureCore)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-4bc431ea-01bf-4532-bcc8-f2e4313f69a5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')">(BodyTemperatureCore): Der Elementinhalt MUSS einer von 'code '8329-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text"
         id="tmp-r-a19ec116-80e1-4d32-85dd-11c7eb082bbe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(BodyTemperatureCore): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(BodyTemperatureCore): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/hl7:reference
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/hl7:reference"
         id="tmp-r-2dcd2349-38c9-49f3-8745-303de14c7e32">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:statusCode[@code='completed']
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:statusCode[@code='completed']"
         id="tmp-r-fc5195a8-63b5-4163-826c-ba5fb44d84eb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(BodyTemperatureCore): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:effectiveTime
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:effectiveTime"
         id="tmp-r-2e8ab081-74e0-4397-88ee-35e56b2af031">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:value
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:value"
         id="tmp-r-1745f4e6-571d-4fbf-8918-3b03edc7ba9b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='Cel' and number($theValue)&gt;=0.0 and number($theValue)&lt;=45.0))">(BodyTemperatureCore): value MUSS die Einheit 'Cel' nutzen und im Bereich [0.0..45.0] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(BodyTemperatureCore): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(BodyTemperatureCore): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
