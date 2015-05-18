<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt">
 
	<xsl:key name="myKey" match="person" use="@xml:id"/>
 
	<pattern id="p3">
		<rule context="autor">
			<assert test="key('myKey', @ref)">[p3] autor/@ref muss auf ein person/@xml:id verweisen</assert>
		</rule>
	</pattern>
 
</schema>