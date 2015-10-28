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
         id="tmp-r-18067aa1-93c2-4cf1-aadf-f075ec5e5ed2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4034'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4034']/@nullFlavor)">(GlasgowComaScale): Element hl7:templateId[@root='1.2.276.0.76.10.4034'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4034'])&lt;=1">(GlasgowComaScale): Element hl7:templateId[@root='1.2.276.0.76.10.4034'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(GlasgowComaScale): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(GlasgowComaScale): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(GlasgowComaScale): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:templateId[@root='1.2.276.0.76.10.4034']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:templateId[@root='1.2.276.0.76.10.4034']"
         id="tmp-r-fb3d33cf-4a61-4c23-85e2-3e0bbba699a6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
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
         id="tmp-r-b6be4044-5abc-48d4-8b91-7c7cf87b0c2b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9269-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:statusCode[@code='completed']"
         id="tmp-r-011d00ba-2ed4-4127-90a2-ecf9fe0a4aeb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text"
         id="tmp-r-784f3cf0-669e-4ead-b87d-6dbbdbc79b41">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(GlasgowComaScale): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(GlasgowComaScale): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/hl7:reference
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/hl7:reference"
         id="tmp-r-5601fc60-1d8c-457d-8e70-4e14cf26adea">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:effectiveTime
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:effectiveTime"
         id="tmp-r-1c4f7fae-4848-47e1-94d5-637bc40ea3e5">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:value"
         id="tmp-r-6d1932af-d956-4afd-8721-9719b4504f61">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=3 and number($theValue)&lt;=15))">(GlasgowComaScale): value MUSS im Bereich [3..15] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-41f6c05a-2d2a-498e-8d09-e808c4caebde">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-aa8e8ce4-710d-46ba-9f7e-73755ad17688">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-37946af0-e3e4-4262-8426-107759c3ad66">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9267-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-f3df5d8a-8793-4039-8a1d-d333ad243695">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-e60ca5be-e4ec-4b92-a019-2bc1fe8ae009">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=4))">(GlasgowComaScale): value MUSS im Bereich [1..4] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-5e50777b-4883-4e5f-8b51-8677a541d66d">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-5ea9b55d-9558-41ed-b1b0-f304551a4ced">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-7cb7e2bc-a70f-4f25-b53e-2dafe280607c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9270-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-046a74b1-dad9-4315-be97-9ad38421196a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-03392f54-1850-4760-b2dd-b324062d82a2">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=5))">(GlasgowComaScale): value MUSS im Bereich [1..5] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-a31e1d32-7ffa-4a75-9d1d-e52c82d52200">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-fa8aa3c1-68fe-4662-86a6-90347127df0e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-3e98cf31-a56b-445f-a4ab-69bf85f7eb07">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9268-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-ab1e057c-f8a4-4d99-9984-aa36e8c02dac">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-68ce62fc-b20f-402f-af81-86fcb1115473">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=6))">(GlasgowComaScale): value MUSS im Bereich [1..6] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150920T212437/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
</pattern>
