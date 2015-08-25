<?xml version="1.0" encoding="ISO-8859-1"?> 

<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/TR/REC-html40"
  xmlns:svrl="http://purl.oclc.org/dsdl/svrl"> 

<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/> 

<!-- Copy ALL -->
<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
</xsl:template>

<!-- EXCEPT... -->
<xsl:template match="svrl:fired-rule"/> <!-- Uninteressante Ausgabe zu allen ausgeführten checks(?) -->
<xsl:template match="svrl:active-pattern"/>
<xsl:template match="svrl:ns-prefix-in-attribute-values"/> <!-- Uninteressante Meldungen zu hl7/cda prefix, zu klären, aber unkritisch -->

</xsl:stylesheet>