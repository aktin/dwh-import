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
         id="tmp-r-f69e6a88-2385-4326-9efe-617a70722d3b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])&gt;=1 ">(Systolicbloodpressure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'])&lt;=1">(Systolicbloodpressure): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']"
         id="tmp-r-9549e034-1340-4a22-ae5a-2f71bd590264">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(Systolicbloodpressure): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(Systolicbloodpressure): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4032'])&gt;=1 ">(Systolicbloodpressure): Element hl7:templateId[@root='1.2.276.0.76.10.4032'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4032'])&lt;=1">(Systolicbloodpressure): Element hl7:templateId[@root='1.2.276.0.76.10.4032'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(Systolicbloodpressure): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(Systolicbloodpressure): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Systolicbloodpressure): Element hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Systolicbloodpressure): Element hl7:code[(@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(Systolicbloodpressure): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Systolicbloodpressure): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Systolicbloodpressure): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Systolicbloodpressure): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(Systolicbloodpressure): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(Systolicbloodpressure): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:templateId[@root='1.2.276.0.76.10.4032']
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:templateId[@root='1.2.276.0.76.10.4032']"
         id="tmp-r-c2adcdb6-5ce9-4360-868a-149245920821">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
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
         id="tmp-r-1b384517-7ab5-4c4c-81a9-84cc824112a9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Systolic blood pressure')">(Systolicbloodpressure): Der Elementinhalt MUSS einer von 'code '8480-6' codeSystem '2.16.840.1.113883.6.1' displayName='Systolic blood pressure'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text"
         id="tmp-r-17cc6bef-6363-4fe8-8f3e-7995f7ec3e47">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Systolicbloodpressure): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(Systolicbloodpressure): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/hl7:reference
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:text/hl7:reference"
         id="tmp-r-776ebf21-a52b-4364-9cec-09b31f21d895">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:statusCode[@code='completed']
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:statusCode[@code='completed']"
         id="tmp-r-adb257f0-3a72-4f1b-814c-c68bf579cb00">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Systolicbloodpressure): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:effectiveTime
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:effectiveTime"
         id="tmp-r-62427aaa-2f69-4283-aa5d-8131f6a0aa72">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:value
Item: (Systolicbloodpressure)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4032']/hl7:value"
         id="tmp-r-5030dccb-c112-4de0-bcac-5357c22cbff5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Systolicbloodpressure): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='mm[Hg]'))">(Systolicbloodpressure): value MUSS die Einheit 'mm[Hg]' nutzen </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(Systolicbloodpressure): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150526T112104/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Systolicbloodpressure): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
