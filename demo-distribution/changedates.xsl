<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="cda"
	version="1.0"
	xmlns:cda="urn:hl7-org:v3">
	<xsl:param name="pid" select="pid"/>
	<xsl:param name="newtime" select="newtime"/>

	<xsl:variable name="basetime" select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low/@value"/>

	<!-- copy unmatched elements -->
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>

	<!-- override patient id -->
	<xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension">
		<xsl:attribute name="extension">
			<xsl:value-of select="$pid"/>
		</xsl:attribute>
	</xsl:template>

	<!-- override timestamp values -->
	<xsl:template match="cda:effectiveTime/cda:low/@value">
		<xsl:attribute name="value">
			<xsl:value-of select="$newtime"/>
		</xsl:attribute>
	</xsl:template>
	<xsl:template match="cda:effectiveTime/cda:high/@value">
		<xsl:attribute name="value">
			<xsl:value-of select="$newtime+1"/>
		</xsl:attribute>
	</xsl:template>
	<xsl:template match="cda:effectiveTime/@value">
		<xsl:attribute name="value">
			<xsl:value-of select="$newtime"/>
		</xsl:attribute>
	</xsl:template>
	<xsl:template match="cda:time/@value">
		<xsl:attribute name="value">
			<xsl:value-of select="$newtime"/>
		</xsl:attribute>
	</xsl:template>
</xsl:stylesheet>