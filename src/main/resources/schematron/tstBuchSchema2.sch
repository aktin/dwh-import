<schema
	xmlns="http://purl.oclc.org/dsdl/schematron"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	queryBinding="xslt2"
	>
 
	<xsl:include href="http://www.expedimentum.org/example/xslt/xslt-sb/files.xsl"/>
 
	<ns prefix="xsb" uri="http://www.expedimentum.org/XSLT/SB"/>
 
	<pattern id="p4">
		<rule context="href">
			<assert test="xsb:is-url(.)">[p4] href muss eine gültige URL beinhalten</assert>
		</rule>
	</pattern>
 
</schema>