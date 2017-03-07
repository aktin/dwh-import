<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="cda"
	version="1.0"
	extension-element-prefixes="date"
	xmlns:date="http://exslt.org/dates-and-times" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:cda="urn:hl7-org:v3">
	<xsl:param name="cedis" select="cedis"/>

	<!-- copy unmatched elements -->
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>

	<!-- override cedis code -->
	<xsl:template match="cda:value[../cda:templateId/@root='1.2.276.0.76.10.4040']">
		<xsl:choose>
			<xsl:when test="substring-after($cedis,'CEDIS30:')='999'">
				<xsl:element name="value" namespace="urn:hl7-org:v3">
					<xsl:attribute name="xsi:type">CE</xsl:attribute>
					<xsl:attribute name="nullFlavor">UNK</xsl:attribute>
				</xsl:element>
			</xsl:when>
			<xsl:otherwise>
				<xsl:element name="value" namespace="urn:hl7-org:v3">
					<xsl:attribute name="xsi:type">CE</xsl:attribute>
					<xsl:attribute name="code">
						<xsl:value-of select="substring-after($cedis,'CEDIS30:')"/>
					</xsl:attribute>
					<xsl:attribute name="codeSystem">1.2.276.0.76.5.439</xsl:attribute>
					<xsl:element name="originalText" namespace="urn:hl7-org:v3">automatisch generiert</xsl:element>
				</xsl:element>
			</xsl:otherwise>	
		</xsl:choose>
</xsl:template>

</xsl:stylesheet>