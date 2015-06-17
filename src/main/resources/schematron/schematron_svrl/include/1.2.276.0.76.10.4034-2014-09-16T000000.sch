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
         id="tmp-r-97882321-52bf-4844-a6bd-33ead8bc93ef">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4034'])&gt;=1 and not(hl7:templateId[@root='1.2.276.0.76.10.4034']/@nullFlavor)">(GlasgowComaScale): Element hl7:templateId[@root='1.2.276.0.76.10.4034'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4034'])&lt;=1">(GlasgowComaScale): Element hl7:templateId[@root='1.2.276.0.76.10.4034'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(GlasgowComaScale): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(GlasgowComaScale): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(GlasgowComaScale): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(GlasgowComaScale): Element hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:templateId[@root='1.2.276.0.76.10.4034']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:templateId[@root='1.2.276.0.76.10.4034']"
         id="tmp-r-7f74a25d-ba9d-44a5-a254-b16dde6e51e1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
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
         id="tmp-r-b7836a58-af9a-44fc-9314-67ba1b863736">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9269-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:statusCode[@code='completed']"
         id="tmp-r-069e5b3d-727e-48fb-a55f-9921fec62a71">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text"
         id="tmp-r-c75e48c3-9faa-4dc9-b31b-b55577b48ecb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(GlasgowComaScale): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(GlasgowComaScale): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/hl7:reference
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:text/hl7:reference"
         id="tmp-r-505157d9-c188-4f0e-b8e7-d345d8e2a5b6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:effectiveTime
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:effectiveTime"
         id="tmp-r-ae82635d-42e9-43fe-b720-53f8dad08d3b">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:value"
         id="tmp-r-e9eb8b4a-034f-4297-9dfd-93a26df8f2bf">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=3 and number($theValue)&lt;=15))">(GlasgowComaScale): value MUSS im Bereich [3..15] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-204d1cd1-256f-430b-b13e-8fac87745613">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-8c149ace-e3eb-454b-9b2b-671e768682c6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-20998cb7-bfc3-446f-95dd-05ca670bfb95">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9267-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-e45e2764-4651-4a08-a189-5c6b259f4ec0">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-5b22c54e-ede3-490d-adaf-056687eb97d6">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=4))">(GlasgowComaScale): value MUSS im Bereich [1..4] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-9df52c80-0c6f-403e-9503-5143143d71fc">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-2fcf4e49-ea3d-43e8-866b-26ab56f721d9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-17b35bea-6a34-4d6f-9df5-97655c045a06">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9270-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-706c4332-c0e9-43e3-b158-772fbc50a9bb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-72d9d130-fc72-49a7-86d3-aa2f6bf7ce0c">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=5))">(GlasgowComaScale): value MUSS im Bereich [1..5] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]"
         id="tmp-r-1a144a07-c484-4fba-9812-9c94f80e9f8a">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode)=('COMP')">(GlasgowComaScale): Der Wert von @typeCode MUSS 'COMP' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd)=('true')">(GlasgowComaScale): Der Wert von @contextConductionInd MUSS 'true' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1 and not(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/@nullFlavor)">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(GlasgowComaScale): Element hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]"
         id="tmp-r-39b90587-55d6-4340-a842-a70a6fc7eb9e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(GlasgowComaScale): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(GlasgowComaScale): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(GlasgowComaScale): Element hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(GlasgowComaScale): Element hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(GlasgowComaScale): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(GlasgowComaScale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(GlasgowComaScale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-4432a47a-5ae8-448d-bb81-fb4c1a5e2018">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code '9268-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']"
         id="tmp-r-985e3b98-950c-4439-a14e-7b6338ddebbe">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(GlasgowComaScale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value
Item: (GlasgowComaScale)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4034']/hl7:entryRelationship[hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value"
         id="tmp-r-1cc42f10-5408-4dd5-ab77-fd86b2b4c106">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GlasgowComaScale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=1 and number($theValue)&lt;=6))">(GlasgowComaScale): value MUSS im Bereich [1..6] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(GlasgowComaScale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(GlasgowComaScale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(GlasgowComaScale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20150602T190802/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(GlasgowComaScale): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
</pattern>
