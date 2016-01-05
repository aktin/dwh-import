<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/2005/sparql-results#"
    xmlns:spql="http://www.w3.org/2005/sparql-results#"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
     
    <xsl:template match="spql:sparql">
        <xsl:processing-instruction name="cocoon-format">type="text/xslfo"</xsl:processing-instruction>
        
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master 
                    master-name="one" 
                    page-height="15cm"
                    page-width="21cm"
                    margin-left="1cm" 
                    margin-right="1cm">
                    <fo:region-body margin-top="20pt" margin-bottom="20pt"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="one" page-break-inside="always">
                
                <fo:flow flow-name="xsl-region-body" font-size="6pt">
                    <xsl:call-template name="titel"/>                    
                    <fo:table border="solid 0.3mm black">
                        <fo:table-header>
                            <xsl:apply-templates select="spql:head"/>
                        </fo:table-header>
                        <fo:table-body>
                            <xsl:apply-templates select="spql:results"/>    
                        </fo:table-body>
                    </fo:table>                 
                    <fo:block text-align="center">
                        <fo:inline font-style="italic">http://www.aktin.org/</fo:inline>
                    </fo:block>                               
                </fo:flow>          
            </fo:page-sequence>      
        </fo:root>
    </xsl:template>
      
    <xsl:template name="titel">
        <fo:block text-align="center" 
            font-size="16pt"  
            
            line-height="20pt">
            AKTIN Ontology Export
        </fo:block>
    </xsl:template>

    <xsl:template match="spql:head">
    <fo:table-row>
        <xsl:apply-templates select="spql:variable"/>
    </fo:table-row>
    </xsl:template>
    
    <xsl:template match="spql:variable">
        <fo:table-cell>
            <fo:block font-weight="bold">
                <xsl:value-of select="./@name"/>
            </fo:block>
        </fo:table-cell>       
    </xsl:template>
    
    <xsl:template match="spql:results">   
            <xsl:apply-templates select="spql:result"/>
    </xsl:template>
    
    <xsl:template match="spql:result">
        <xsl:if test="not(contains(./spql:binding[@name='notation']/spql:literal,'CEDIS') or contains(./spql:binding[@name='root']/spql:uri,'CEDIS') or contains(./spql:binding[@name='root']/spql:uri,'ICD10GM') or contains(./spql:binding[@name='notation']/spql:literal,'ICD10GM'))">
            <fo:table-row>
                <xsl:for-each select="./spql:binding">
                    <fo:table-cell xsl:use-attribute-sets="myTableBorder">
                        <fo:block>
                            <xsl:if test="./spql:literal">
                                <xsl:value-of select="./spql:literal"/>
                            </xsl:if>
                            <xsl:if test="./spql:uri">
                                <xsl:value-of select="substring-after(./spql:uri,'#')"/>
                            </xsl:if>
                        </fo:block>
                    </fo:table-cell>
                </xsl:for-each>
            </fo:table-row>
        </xsl:if>
    </xsl:template>
    
    <!-- Global Table Cell Border Setting -->
    <xsl:attribute-set name="myTableBorder">
        <xsl:attribute name="border">solid 0.1mm black</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>