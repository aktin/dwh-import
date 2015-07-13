<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4032
Name: Blutdruck systolisch
Description: Blutdruck systolisch
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4032-2014-09-16T000000">
   <title>Blutdruck systolisch</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]"
         id="tmp-r-5288c730-e0d8-42e2-95bb-ea53cc7ca601">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])&gt;=1 ">(Systolicbloodpressure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])&lt;=1">(Systolicbloodpressure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']"
         id="tmp-r-a745cfa9-77a1-4fe3-8250-981496adbfe4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(Systolicbloodpressure): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(Systolicbloodpressure): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4032'])&gt;=1 ">(Systolicbloodpressure): Element hl7:templateId[@root='1.2.276.0.76.10.4032'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4032'])&lt;=1">(Systolicbloodpressure): Element hl7:templateId[@root='1.2.276.0.76.10.4032'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(Systolicbloodpressure): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(Systolicbloodpressure): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Systolicbloodpressure): Element hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Systolicbloodpressure): Element hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(Systolicbloodpressure): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Systolicbloodpressure): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Systolicbloodpressure): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Systolicbloodpressure): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(Systolicbloodpressure): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(Systolicbloodpressure): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:templateId[@root='1.2.276.0.76.10.4032']
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:templateId[@root='1.2.276.0.76.10.4032']"
         id="tmp-r-58d14a27-5635-4029-87d8-3f63514812d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4032')">(Systolicbloodpressure): Der Wert von @root MUSS '1.2.276.0.76.10.4032' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:id
Item: (Systolicbloodpressure)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-6e8a7888-9a66-4984-9c91-c97f7f9685fe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Systolic blood pressure')">(Systolicbloodpressure): Der Elementinhalt MUSS einer von 'code '8480-6' codeSystem '2.16.840.1.113883.6.1' displayName='Systolic blood pressure'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text"
         id="tmp-r-54a9d208-1c07-46d6-a88f-79335e175d5d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Systolicbloodpressure): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(Systolicbloodpressure): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/hl7:reference
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/hl7:reference"
         id="tmp-r-e76b2542-2413-4faf-b7db-a9c0d7eb9e09">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:statusCode[@code='completed']
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:statusCode[@code='completed']"
         id="tmp-r-d6de2636-e204-469d-a9ff-a75b727183fc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Systolicbloodpressure): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:effectiveTime
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:effectiveTime"
         id="tmp-r-a012cbc0-2eb0-48ab-8f82-57dc93b37f0c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:value
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:value"
         id="tmp-r-fcd02d7e-8c95-4472-a848-a66178f4338a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='mm[Hg]'))">(Systolicbloodpressure): value MUSS die Einheit 'mm[Hg]' nutzen </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(Systolicbloodpressure): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Systolicbloodpressure): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>