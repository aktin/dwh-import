<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4034
Name: Glasgow Coma Scale
Description: Glasgow Coma Scale (GCS) als Summe und mit den drei Achsen Augenöffnen, verbale Antwort und motorische Antwort
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4034-2014-09-16T000000">
   <title>Glasgow Coma Scale</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]
Item: (GlasgowComaScale)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']"
         id="tmp-r-7f2f1267-29b7-4b84-b940-6a5f34d816cc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4034'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4034']/@nullFlavor)">(GlasgowComaScale): Element hl7:templateId[@root='1.2.276.0.76.10.4034'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4034'])&lt;=1">(GlasgowComaScale): Element hl7:templateId[@root='1.2.276.0.76.10.4034'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(GlasgowComaScale): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(GlasgowComaScale): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(GlasgowComaScale): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:templateId[@root='1.2.276.0.76.10.4034']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:templateId[@root='1.2.276.0.76.10.4034']"
         id="tmp-r-c2d47613-3a4a-4fd8-8755-5b9893e20ae2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4034')">(GlasgowComaScale): Der Wert von @root MUSS '1.2.276.0.76.10.4034' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:id
Item: (GlasgowComaScale)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-8a5df0b3-8662-4058-8073-97566f524c4b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9269-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:statusCode[@code='completed']"
         id="tmp-r-49e122a5-2ef1-4c78-b857-0efc333fc0ed">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text"
         id="tmp-r-72fd0287-142b-4533-8b2c-0014da3116b6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(GlasgowComaScale): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(GlasgowComaScale): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/hl7:reference
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/hl7:reference"
         id="tmp-r-c7d2fb4e-edbd-4ed7-9a53-5575f36cad51">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:effectiveTime
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:effectiveTime"
         id="tmp-r-51471665-44d1-4308-904c-1d388d83e871">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:value"
         id="tmp-r-f4988dfc-81bd-4934-9ce0-591e6590e586">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=3 and number($theValue)&lt;=15))">(GlasgowComaScale): value MUSS im Bereich [3..15] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-1be3c3b0-1188-4943-beee-02150e8dfa1c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-8b24f882-b51d-49e9-9d82-4123af6c83fd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-276df13d-b7c8-4c3b-a060-cd8c13ead9af">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9267-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-6f83e927-1c91-40e9-8470-4e95dba52340">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-1f6ed958-e302-4540-9c1b-f0191dc550ff">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=4))">(GlasgowComaScale): value MUSS im Bereich [1..4] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-9ef23c62-182d-4fac-8ed6-75c85e1e2013">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-10ca67fb-b796-4643-8e39-819d7320dbd1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-b742f8d9-5d42-4d01-b13c-6dac7a46e6bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9270-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-32912527-88e7-4a1e-8117-ee26cd606635">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-6f1bc52f-5cda-46fd-aee7-0ce0fc5e51aa">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=5))">(GlasgowComaScale): value MUSS im Bereich [1..5] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-61137d48-dfe2-4f9b-9558-b973b65c3d07">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-bb27d7d4-031e-47ff-a966-4427819f40e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-ca164b4a-8622-4d85-be4c-4d22094acb77">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9268-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-675b3b2e-4106-425a-8e24-be1fd0c4b44b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-3c768642-0020-40cb-a355-a1cee5289bb1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=6))">(GlasgowComaScale): value MUSS im Bereich [1..6] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150824T134031/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
</pattern>
