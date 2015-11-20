<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4036
Name: Schmerz
Description: Schmerz
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4036-2014-09-16T000000">
   <title>Schmerz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]"
         id="tmp-r-c4e67595-baf1-4108-97f6-553c818a7689">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])&gt;=1 ">(Painseverity): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'])&lt;=1">(Painseverity): Element hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']"
         id="tmp-r-472c02d7-74b5-4426-8e5f-9168e768e934">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@classCode)=('OBS')">(Painseverity): Der Wert von @classCode MUSS 'OBS' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@moodCode)=('EVN')">(Painseverity): Der Wert von @moodCode MUSS 'EVN' sein.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4036'])&gt;=1 ">(Painseverity): Element hl7:templateId[@root='1.2.276.0.76.10.4036'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:templateId[@root='1.2.276.0.76.10.4036'])&lt;=1">(Painseverity): Element hl7:templateId[@root='1.2.276.0.76.10.4036'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:id)&gt;=1 ">(Painseverity): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:id)&lt;=1">(Painseverity): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 and not(hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]/@nullFlavor)">(Painseverity): Element hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Painseverity): Element hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:text)&lt;=1">(Painseverity): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1 and not(hl7:statusCode[@code='completed']/@nullFlavor)">(Painseverity): Element hl7:statusCode[@code='completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(Painseverity): Element hl7:statusCode[@code='completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Painseverity): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:value)&gt;=1 ">(Painseverity): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:value)&lt;=1">(Painseverity): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:templateId[@root='1.2.276.0.76.10.4036']
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:templateId[@root='1.2.276.0.76.10.4036']"
         id="tmp-r-05a223f9-1cbf-42d6-8383-ecea5b2201f1">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="II"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@root)=('1.2.276.0.76.10.4036')">(Painseverity): Der Wert von @root MUSS '1.2.276.0.76.10.4036' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:id
Item: (Painseverity)
-->

   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:code[(@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="tmp-r-53bdc426-e9c6-47a6-99d0-7eb0837e3c25">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CE"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@nullFlavor or (@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')">(Painseverity): Der Elementinhalt MUSS einer von 'code '72514-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text"
         id="tmp-r-5de7aa4d-387f-4d9b-bd60-83b753483aa9">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="ED"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:reference)&gt;=1 ">(Painseverity): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:reference)&lt;=1">(Painseverity): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/hl7:reference
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:text/hl7:reference"
         id="tmp-r-18b082eb-e735-4940-951b-8f4a38d2a3fb">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='URL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="URL"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:statusCode[@code='completed']
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:statusCode[@code='completed']"
         id="tmp-r-a855c7e4-4ea9-47d9-a97d-96a4cf2f9dbd">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="CS"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Painseverity): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:effectiveTime
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:effectiveTime"
         id="tmp-r-1617c3e9-8155-4388-a02f-3f5a2ef61001">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="TS"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:value
Item: (Painseverity)
-->

   <rule context="*[hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']]/hl7:observation[hl7:templateId/@root='1.2.276.0.76.10.4036']/hl7:value"
         id="tmp-r-afe76cd1-5af2-4ec6-8d68-7ef22ab2691e">
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Painseverity): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben, gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <extends rule="PQ"/>
      <let name="theValue" value="@value"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(@nullFlavor or (number($theValue)&gt;=0 and number($theValue)&lt;=10))">(Painseverity): value MUSS im Bereich [0..10] liegen  </assert>
      <let name="digitok"
           value="matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')"/>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="$digitok or @nullFlavor">(Painseverity): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Painseverity): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@value">(Painseverity): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://aktin.art-decor.org/aktin-html-20151118T102028/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@unit)=('{score}')">(Painseverity): Der Wert von @unit MUSS '{score}' sein.</assert>
   </rule>
</pattern>
