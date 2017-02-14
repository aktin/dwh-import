<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="cda"
	version="1.0"
	extension-element-prefixes="date"
	xmlns:date="http://exslt.org/dates-and-times" 
	xmlns:cda="urn:hl7-org:v3">
	<xsl:param name="cedis" select="cedis"/>

	<!-- copy unmatched elements -->
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>

	<!-- override cedis code -->
   <xsl:template match="cda:value[../cda:templateId/@root='1.2.276.0.76.10.4040']/@code">
		<xsl:attribute name="code">
		   <xsl:value-of select="substring-after($cedis,'CEDIS30:')"/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>