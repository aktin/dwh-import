<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4031
Name: Sauerstoffsättigung
Description: Sauerstoffsättigung
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4031-2014-09-16T000000">
   <title>Sauerstoffsättigung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]"
         id="tmp-r-0a1ac1ca-d7b8-41d0-89af-d06dd17395e4">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'])&gt;=1 ">(OxygenSaturation): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'])&lt;=1">(OxygenSaturation): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']"
         id="tmp-r-61ceedab-0424-4aea-a2d4-23dedc8aa58b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(OxygenSaturation): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(OxygenSaturation): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4031'])&gt;=1 ">(OxygenSaturation): Element hl7:templateId[@root='1.2.276.0.76.10.4031'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4031'])&lt;=1">(OxygenSaturation): Element hl7:templateId[@root='1.2.276.0.76.10.4031'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(OxygenSaturation): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(OxygenSaturation): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(OxygenSaturation): Element hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(OxygenSaturation): Element hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(OxygenSaturation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(OxygenSaturation): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(OxygenSaturation): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(OxygenSaturation): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(OxygenSaturation): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(OxygenSaturation): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:templateId[@root='1.2.276.0.76.10.4031']
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:templateId[@root='1.2.276.0.76.10.4031']"
         id="tmp-r-481a2777-7f06-4817-8341-6340d9d5d483">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OxygenSaturation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4031')">(OxygenSaturation): Der Wert von @root MUSS '1.2.276.0.76.10.4031' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:id
Item: (OxygenSaturation)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:code[(@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-3750c403-da0b-41f8-ac06-c12fe6ab8467">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OxygenSaturation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="@nullFlavor or (@code='20564-1' and @codeSystem='2.16.840.1.113883.6.1')">(OxygenSaturation): Der Elementinhalt MUSS einer von 'code '20564-1' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text"
         id="tmp-r-0d140027-c20f-4649-b742-23812cffd886">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OxygenSaturation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(OxygenSaturation): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(OxygenSaturation): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text/hl7:reference
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:text/hl7:reference"
         id="tmp-r-b97c3bb9-0688-4664-ba54-5caca56c02b7">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OxygenSaturation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:statusCode[@code='completed']
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:statusCode[@code='completed']"
         id="tmp-r-a9817f6f-4abe-4dcc-8a64-609902f10a4d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OxygenSaturation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(OxygenSaturation): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:effectiveTime
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:effectiveTime"
         id="tmp-r-ab4dd746-0ed7-485d-8066-e65c777df39d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OxygenSaturation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4031
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:value
Item: (OxygenSaturation)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4031']/hl7:value"
         id="tmp-r-f53845d2-61fc-45fc-8d60-1ce4022ad3bd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OxygenSaturation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='%'))">(OxygenSaturation): value MUSS die Einheit '%' nutzen </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(OxygenSaturation): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150730T155633/tmp-1.2.276.0.76.10.4031-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(OxygenSaturation): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
