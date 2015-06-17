<?xml version="1.0" encoding="ISO-8859-1"?> 

<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/TR/REC-html40"
  xmlns:svrl="http://purl.oclc.org/dsdl/svrl"> 
  
<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/> 

  <xsl:template match="svrl:failed-assert">
    <FailedAssertFound/>
  </xsl:template>

</xsl:stylesheet>