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
         id="tmp-r-b10072a6-a6f9-4229-9740-af3e7f03b66d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])&gt;=1 ">(BodyTemperatureCore): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'])&lt;=1">(BodyTemperatureCore): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']"
         id="tmp-r-22600c17-119c-4ccd-9f6c-325a30c26a62">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(BodyTemperatureCore): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(BodyTemperatureCore): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4035'])&gt;=1 ">(BodyTemperatureCore): Element hl7:templateId[@root='1.2.276.0.76.10.4035'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4035'])&lt;=1">(BodyTemperatureCore): Element hl7:templateId[@root='1.2.276.0.76.10.4035'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(BodyTemperatureCore): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(BodyTemperatureCore): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(BodyTemperatureCore): Element hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(BodyTemperatureCore): Element hl7:code[(@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(BodyTemperatureCore): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(BodyTemperatureCore): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(BodyTemperatureCore): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(BodyTemperatureCore): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(BodyTemperatureCore): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(BodyTemperatureCore): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:templateId[@root='1.2.276.0.76.10.4035']
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:templateId[@root='1.2.276.0.76.10.4035']"
         id="tmp-r-2d21239f-b7af-478e-a168-9102e284adb2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
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
         id="tmp-r-4916494c-a2be-4be2-acb1-4c1f7611d375">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')">(BodyTemperatureCore): Der Elementinhalt MUSS einer von 'code '8329-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text"
         id="tmp-r-fe7e8bd7-c1b0-488a-a9ec-2c1d5cfe1662">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(BodyTemperatureCore): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(BodyTemperatureCore): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/hl7:reference
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:text/hl7:reference"
         id="tmp-r-e86dd0b7-2c2a-4a3c-a6be-fb7b5c6bfa4a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:statusCode[@code='completed']
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:statusCode[@code='completed']"
         id="tmp-r-d14095f6-2c1c-4df0-8896-1c7c942c8199">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(BodyTemperatureCore): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:effectiveTime
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:effectiveTime"
         id="tmp-r-7cea3726-0cc4-4489-906e-645e4291df2c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:value
Item: (BodyTemperatureCore)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4035']/hl7:value"
         id="tmp-r-c54d9e93-49f3-488a-b5e9-938202db8e9e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyTemperatureCore): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='Cel' and number($theValue)&gt;=0.0 and number($theValue)&lt;=45.0))">(BodyTemperatureCore): value MUSS die Einheit 'Cel' nutzen und im Bereich [0.0..45.0] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(BodyTemperatureCore): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(BodyTemperatureCore): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>