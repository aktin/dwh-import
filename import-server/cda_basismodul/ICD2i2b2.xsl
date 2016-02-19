<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="text"/>       
        
    <xsl:template match="/ClaML">
        @prefix rdf:	&#60;http:&#47;&#47;www.w3.org/1999/02/22-rdf-syntax-ns#&#62; .
        @prefix rdfs:	&#60;http://www.w3.org/2000/01/rdf-schema#&#62; .
        @prefix owl:	&#60;http://www.w3.org/2002/07/owl#&#62; .
        @prefix dc:	    &#60;http://purl.org/dc/elements/1.1/#&#62; .
        @prefix skos: 	&#60;http://www.w3.org/2004/02/skos/core#&#62; .
        @prefix xsd:	&#60;http://www.w3.org/2001/XMLSchema#&#62; .
        @prefix dwh:	&#60;http://sekmi.de/histream/dwh#&#62; .                  
        @prefix :       &#60;http://aktin.org/skos-cda#&#62; .
                                    
        :ICD10GM a skos:Concept ;
            skos:inScheme :EmergencyNote ;
            skos:prefLabel "Abschlussdiagnosen"@de ;
            dc:description "<xsl:value-of select="Meta/@value[../@name='titleLong']"/>" ;
        
        <xsl:for-each select="/ClaML/Class[@kind='chapter']">
            skos:narrower :ICD10GM_<xsl:value-of select="SubClass/@code"/>
            <xsl:choose>
                <xsl:when test="position() != last()">;</xsl:when>
                <xsl:when test="position() = last()">.</xsl:when>
            </xsl:choose>
        </xsl:for-each>
        
        <xsl:for-each select="/ClaML/Class[@kind='block']">
            :ICD10GM_<xsl:value-of select="./@code"/> a skos:Concept ;
            skos:prefLabel "<xsl:value-of select="./Rubric/Label"/>"@de ;
            <xsl:for-each select="./SubClass">
                skos:narrower :ICD10GM_<xsl:value-of select="./@code"/>
                <xsl:choose>
                    <xsl:when test="position() != last()">;</xsl:when>
                    <xsl:when test="position() = last()">.</xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
        
        <xsl:for-each select="/ClaML/Class[@kind='category']">
            :ICD10GM_<xsl:value-of select="./@code"/> a skos:Concept ;
            skos:prefLabel "<xsl:value-of select="./Rubric/Label"/>"@de ;
            skos:notation "ICD10GM:<xsl:value-of select="./@code"/>"<xsl:choose><xsl:when test="not(./SubClass)">.</xsl:when><xsl:when test="./SubClass">;</xsl:when></xsl:choose>
            <xsl:for-each select="./SubClass">
                skos:narrower :ICD10GM_<xsl:value-of select="./@code"/>
                <xsl:choose>
                    <xsl:when test="position() != last()">;</xsl:when>
                    <xsl:when test="position() = last()">.</xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
        
    </xsl:template>
    
    <xsl:template match="text()"/>   <!-- Match plain text nodes and do nothing, i.e. mask default output for text nodes     -->

</xsl:stylesheet>