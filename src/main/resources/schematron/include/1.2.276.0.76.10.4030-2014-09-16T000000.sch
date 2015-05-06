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
         id="tmp-r-477cf086-d8cf-4d65-a759-5ceeae669411">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])&gt;=1 ">(RespiratoryRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'])&lt;=1">(RespiratoryRate): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']"
         id="tmp-r-0c296cce-5543-4127-b9df-43598fb9a14f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(RespiratoryRate): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(RespiratoryRate): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4030'])&gt;=1 ">(RespiratoryRate): Element hl7:templateId[@root='1.2.276.0.76.10.4030'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4030'])&lt;=1">(RespiratoryRate): Element hl7:templateId[@root='1.2.276.0.76.10.4030'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(RespiratoryRate): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(RespiratoryRate): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(RespiratoryRate): Element hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(RespiratoryRate): Element hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(RespiratoryRate): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(RespiratoryRate): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(RespiratoryRate): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(RespiratoryRate): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(RespiratoryRate): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(RespiratoryRate): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:templateId[@root='1.2.276.0.76.10.4030']
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:templateId[@root='1.2.276.0.76.10.4030']"
         id="tmp-r-91e02c69-8a3f-4bcc-acd1-d9475e61bbdf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
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
         id="tmp-r-681c4483-5025-4736-9c93-3b36da088ae2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')">(RespiratoryRate): Der Elementinhalt MUSS einer von 'code '9279-1' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:originalText)&lt;=1">(RespiratoryRate): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/hl7:originalText
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:code[(@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')]/hl7:originalText"
         id="tmp-r-039aad8a-e051-42df-9997-3683e1f343ac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text"
         id="tmp-r-52e2bbca-ac89-4a3d-9ffa-9f921ae9c62c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(RespiratoryRate): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(RespiratoryRate): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/hl7:reference
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:text/hl7:reference"
         id="tmp-r-5dfe5a74-6811-4bbc-a603-b04749cb239f">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:statusCode[@code='completed']
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:statusCode[@code='completed']"
         id="tmp-r-cb84a8f3-57fc-4c7d-be69-5a7db05f7056">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(RespiratoryRate): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:effectiveTime
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:effectiveTime"
         id="tmp-r-556abe80-a0d8-4bfe-b0fa-c9e085f6a0e5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:value
Item: (RespiratoryRate)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4030']/hl7:value"
         id="tmp-r-0f661ab7-41a0-489e-b010-3654a74b099e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RespiratoryRate): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='/min'))">(RespiratoryRate): value MUSS die Einheit '/min' nutzen </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(RespiratoryRate): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150423T224142/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(RespiratoryRate): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
