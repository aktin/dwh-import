<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../../aktin-runtime-develop/aktin-basism.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>

<!-- java -classpath C:\ProgramData\Oracle\Java\javaclasses\xalan.jar org.apache.xalan.xslt.Process -in basismodul-beispiel-storyboard01_complete02.xml -xsl dwh-eav-test-VT.xsl -out dwh-eav-TESTOUT.xml -->
    
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xs xsi cda eav"
    version="2.0"
    xmlns:cda="urn:hl7-org:v3"
    xmlns:eav="http://sekmi.de/histream/dwh-eav"
    xmlns="http://sekmi.de/histream/dwh-eav">
    
    <!-- xmlns="urn:hl7-org:v3" -->
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
<!--Identity template, provides default behavior that copies all content into the output -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/> <!-- #ToDo Node() in den Templates ergänzen um Modifier und Values mitzunehmen?! -->
        </xsl:copy>
    </xsl:template>
    

    <!-- #ToDo: Einige Valuesets könnten vereinfacht werden durch komplexe Match-Bedingungen und Ausgabe der Werte mit substring-after
    => nur jeweils eine Ausgabe pro Codesystem => weniger Redundanz im XSL-Code --> 

<!-- Specific templates to produce enriched facts to facilitate step2 transformation -->
 
    <!-- TemplateID 1.2.276.0.76.10.2036 
        Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:DISCHARGE:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.2036</xsl:attribute>
            <xsl:choose>
                <xsl:when test="./@concept='AKTIN:DISCHARGE:OTH'">
                    <xsl:attribute name="NullFlavor"><xsl:value-of select="substring-after(./@concept,'AKTIN:DISCHARGE:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code"><xsl:value-of select="substring-after(./@concept,'AKTIN:DISCHARGE:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.2.60.3.5.56</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
 
    <!-- TemplateID 1.2.276.0.76.10.3045 / 1.2.276.0.76.10.4037
        Value Set 1.2.276.0.76.11.41 Transportmethode -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:TRANSPORT:')]">
        <xsl:copy>                 
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:choose>
                <xsl:when test="./@concept='AKTIN:TRANSPORT:OTH' or ./@concept='AKTIN:TRANSPORT:NA'">
                    <xsl:attribute name="NullFlavor"><xsl:value-of select="substring-after(./@concept,'AKTIN:TRANSPORT:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code"><xsl:value-of select="substring-after(./@concept,'AKTIN:TRANSPORT:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.2.60.3.5.41</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- TemplateID 1.2.276.0.76.10.3046 / 1.2.276.0.76.10.4038
        Value Set 1.2.276.0.76.11.42 AKTIN:REFERRAL -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:REFERRAL:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:choose>
                <xsl:when test="./@concept='AKTIN:REFERRAL:OTH'">
                    <xsl:attribute name="NullFlavor"><xsl:value-of select="substring-after(./@concept,'AKTIN:REFERRAL:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code"><xsl:value-of select="substring-after(./@concept,'AKTIN:REFERRAL:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">1.2.276.0.76.5.440</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
   
    <!-- TemplateID 1.2.276.0.76.10.3048 / 1.2.276.0.76.10.4039 / 1.2.276.0.76.10.4040
        Value Set 1.2.276.0.76.11.61 CEDIS Presenting Complaint List 3.0 -->
    <xsl:template match="eav:fact[starts-with(@concept,'CEDIS30:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4040</xsl:attribute>   
            <xsl:choose>
                <xsl:when test="./@concept='CEDIS30:OTH' or ./@concept='CEDIS30:UNK'">
                    <xsl:attribute name="NullFlavor"><xsl:value-of select="substring-after(./@concept,'CEDIS30:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code"><xsl:value-of select="substring-after(./@concept,'CEDIS30:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">1.2.276.0.76.5.439</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
 
    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4043
        Value Set 1.2.276.0.76.11.46 Schwangerschafts-Status -->
    <xsl:template match="eav:fact[starts-with(@concept,'11449-6:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4043</xsl:attribute>
            <xsl:choose>
                <xsl:when test="./@concept='11449-6:UNK'">
                    <xsl:attribute name="NullFlavor"><xsl:value-of select="substring-after(./@concept,'11449-6:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code"><xsl:value-of select="substring-after(./@concept,'11449-6:')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.2.60.3.5.46</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   

    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4044 Clostridiumtetaniimmunization -->
    <xsl:template match="eav:fact[@concept = '11458-7:NEG']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4044</xsl:attribute>
            <xsl:attribute name="negationInd">true</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[@concept = '11458-7']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4044</xsl:attribute>
            <xsl:attribute name="negationInd">false</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[@concept = '11458-7:NI']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4044</xsl:attribute>
            <xsl:attribute name="negationInd">false</xsl:attribute>
            <xsl:attribute name="nullFlavor">NI</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   

    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4045 Modifiedrankinscale -->
    <xsl:template match="eav:fact[contains(@concept,'RANKIN:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4045</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="substring-after(./@concept,'RANKIN:')"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4072  / 1.2.276.0.76.10.4073 
        Value Set 1.2.276.0.76.11.60 
        e.g. PATHOGENE:AMRO:OPB -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:PATHOGENE:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4073</xsl:attribute>
            <xsl:choose>
                <xsl:when test="contains(./@concept,'AKTIN:PATHOGENE:OTH')">
                    <xsl:attribute name="code"><xsl:value-of select="substring-after(substring-after(./@concept,'AKTIN:PATHOGENE:'),':')"/></xsl:attribute>
                    <xsl:attribute name="NullFlavor"><xsl:value-of select="substring-before(substring-after(./@concept,'AKTIN:PATHOGENE:'),':')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code"><xsl:value-of select="substring-after(substring-after(./@concept,'AKTIN:PATHOGENE:'),':')"/></xsl:attribute>
                    <xsl:attribute name="value"><xsl:value-of select="substring-before(substring-after(./@concept,'AKTIN:PATHOGENE:'),':')"/></xsl:attribute>
                    <xsl:attribute name="codeSystem">1.2.276.0.76.5.441</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>  
     
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4030 RespiratoryRate -->
    <xsl:template match="eav:fact[@concept = 'LOINC:9279-1']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4030</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
        
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4031 OxygenSaturation -->
    <xsl:template match="eav:fact[@concept = 'LOINC:20564-1']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4031</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
       
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4032 Systolicbloodpressure -->
    <xsl:template match="eav:fact[@concept = 'LOINC:8480-6']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4032</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
       
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4033 HeartRate -->
    <xsl:template match="eav:fact[@concept = 'LOINC:8867-4']">
        <xsl:copy>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4033</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
      
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale Eye Opening -->
    <xsl:template match="eav:fact[@concept = 'LOINC:9267-6']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034_9267-6</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale Verbal Response -->
    <xsl:template match="eav:fact[@concept = 'LOINC:9270-0']">
        <xsl:copy>             
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034_9270-0</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale Motor Response -->
    <xsl:template match="eav:fact[@concept = 'LOINC:9268-4']">
        <xsl:copy>                  
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034_9268-4</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale -->
    <xsl:template match="eav:fact[@concept = 'LOINC:9269-2']">
        <xsl:copy>                
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4046 - Pupilsize 
        Value Set 1.2.276.0.76.11.49 Pupillenweite (quantitativ)
        Value Set 1.2.276.0.76.11.48 Auge links/rechts/beidseits -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:SPPL:')]">
        <xsl:copy>                
            <xsl:attribute name="templateId">1.2.276.0.76.10.4046</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.2.60.3.5.49</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'AKTIN:SPPL:')"/>
            </xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>  

    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4047 - Pupilreaction 
        Value Set 1.2.276.0.76.11.50 Pupillenreaktion
        Value Set 1.2.276.0.76.11.48 Auge links/rechts/beidseits -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:RPPL')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4047</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.2.60.3.5.50</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'AKTIN:RPPL')"/>
            </xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
     
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4035 BodyTemperatureCore -->
    <xsl:template match="eav:fact[@concept = 'LOINC:8329-5']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4035</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 

    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4036 Painseverity -->
    <xsl:template match="eav:fact[@concept = 'LOINC:72514-3']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4036</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
    
    <!-- TemplateID 1.2.276.0.76.10.3050 -->     
    <xsl:template name="SetFinding">
        <xsl:if test="ends-with(./@concept,':NEG')">
            <xsl:attribute name="negationInd">true</xsl:attribute>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="./eav:modifier/@code='OPB'">
                <xsl:attribute name="findingCode">OPB</xsl:attribute>
            </xsl:when>
            <xsl:when test="./eav:modifier/@code='PB'">
                <xsl:attribute name="findingCode">PB</xsl:attribute>
            </xsl:when>
            <xsl:when test="./eav:modifier/@code='UNK'">
                <xsl:attribute name="nullFlavor">UNK</xsl:attribute>
            </xsl:when>
            <xsl:when test="./eav:modifier/@code='SUSP'"> <!-- should not be used here -->
                <xsl:attribute name="findingCode">SUSP</xsl:attribute>
            </xsl:when>
            <xsl:when test="./eav:modifier/@code='NAV'"> <!-- should not be used here -->
                <xsl:attribute name="nullFlavor">NAV</xsl:attribute>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:30745-4')]">
        <xsl:copy>          
            <xsl:attribute name="code">30745-4</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4050</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:38008-9')]">
        <xsl:copy>          
            <xsl:attribute name="code">38008-9</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4051</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>      
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:28561-9')]">
        <xsl:copy>          
            <xsl:attribute name="code">28561-9</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4052</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>         
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:37637-6')]">
        <xsl:copy>          
            <xsl:attribute name="code">37637-6</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4053</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>  
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:43468-8')]">
        <xsl:copy>          
            <xsl:attribute name="code">43468-8</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4054</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> 
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:24725-4')]">
        <xsl:copy>          
            <xsl:attribute name="code">24725-4</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4055</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>        
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:46305-9')]">
        <xsl:copy>          
            <xsl:attribute name="code">46305-9</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4056</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>    
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:26436-6')]">
        <xsl:copy>          
            <xsl:attribute name="code">26436-6</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4057</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>         
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:25056-3')]">
        <xsl:copy>          
            <xsl:attribute name="code">25056-3</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4058</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>        
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:18767-4')]">
        <xsl:copy>          
            <xsl:attribute name="code">18767-4</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4059</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>       
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:50556-0')]">
        <xsl:copy>          
            <xsl:attribute name="code">50556-0</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4060</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>         
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:34534-8')]">
        <xsl:copy>                     
            <xsl:attribute name="code">34534-8</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4061</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>         
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:25061-3')]">
        <xsl:copy>                   
            <xsl:attribute name="code">25061-3</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4062</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>        
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:25045-6')]">
        <xsl:copy>          
            <xsl:attribute name="code">25045-6</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4063</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>        
    <xsl:template match="eav:fact[starts-with(@concept,'LOINC:42148-7')]">
        <xsl:copy>          
            <xsl:attribute name="code">42148-7</xsl:attribute>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4064</xsl:attribute>
            <xsl:call-template name="SetFinding"/>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
       
    <!-- TemplateID 1.2.276.0.76.10.3051  / 1.2.276.0.76.10.4065 / 1.2.276.0.76.10.4066
        Value Set 1.2.276.0.76.11.52 Allergy / intolerance substances  -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:ALLERGY:')]">
        <xsl:copy>                
            <xsl:attribute name="templateId">1.2.276.0.76.10.4066</xsl:attribute>
            <xsl:choose>
                <xsl:when test="contains(substring-after(./@concept,'AKTIN:ALLERGY:'),':NEG')">
                    <xsl:attribute name="code">
                        <xsl:value-of select="substring-before(substring-after(./@concept,'AKTIN:ALLERGY:'),':NEG')"/>
                    </xsl:attribute>
                    <xsl:attribute name="negationInd">true</xsl:attribute> <!-- #ToDo diese Umsetzung von negationInd auf alle Vorkommenübertragen? -->
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code">
                        <xsl:value-of select="substring-after(./@concept,'AKTIN:ALLERGY:')"/>
                    </xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- TemplateID 1.2.276.0.76.10.3054  / 1.2.276.0.76.10.4068 / 1.2.276.0.76.10.4069
        Value Set 1.2.276.0.76.11.55 Isolation reason -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:ISOLATION:')]">
        <xsl:copy>            
            <xsl:attribute name="templateId">1.2.276.0.76.10.4068</xsl:attribute>
            <xsl:choose>
                <xsl:when test="contains(substring-after(./@concept,'AKTIN:ISOLATION:'),':NEG')">
                    <xsl:attribute name="code">
                        <xsl:value-of select="substring-before(substring-after(./@concept,'AKTIN:ISOLATION:'),':NEG')"/>
                    </xsl:attribute>
                    <xsl:attribute name="negationInd">true</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code">
                        <xsl:value-of select="substring-after(./@concept,'AKTIN:ISOLATION:')"/>
                    </xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:ISOREASON:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4069</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'AKTIN:ISOREASON:')"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>  

    <!-- TemplateID 1.2.276.0.76.10.3055  / 1.2.276.0.76.10.4048 / 1.2.276.0.76.10.4049 Problemobservationeddiagnosis -->
    <xsl:template match="eav:fact[starts-with(@concept,'ICD10GM:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4048</xsl:attribute>
            <xsl:attribute name="codeSystem">1.2.276.0.76.5.413</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'ICD10GM:')"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- #ToDo NullFlavor nicht vorgesehen, aber theoretisch möglich -->
    
    <!-- TemplateID 1.2.276.0.76.10.3049 / 1.2.276.0.76.10.4042 Acuityobservation -->
    <xsl:template match="eav:fact[starts-with(@concept,'MTS:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4042</xsl:attribute>
            <xsl:attribute name="codeSystem">1.2.276.0.76.5.438</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'MTS:')"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[starts-with(@concept,'ESI:')]">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4042</xsl:attribute>
            <xsl:attribute name="codeSystem">1.2.276.0.76.5.437</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'ESI:')"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>  
    
    <!-- TemplateID 1.2.276.0.76.10.3056 / 1.2.276.0.76.10.4067 
         Value Set 1.2.276.0.76.11.53 AKTIN:TRANSFER actions -->
    <xsl:template match="eav:fact[starts-with(@concept,'AKTIN:TRANSFER:')]">
        <xsl:copy>       
            <xsl:attribute name="templateId">1.2.276.0.76.10.4067</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.2.60.3.5.53</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'AKTIN:TRANSFER:')"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>  
    
    <!-- TemplateID 1.2.276.0.76.10.3057 / 1.2.276.0.76.10.4070 / 1.2.276.0.76.10.4071
         Value Set 1.2.276.0.76.11.57 Modules document types -->
    <xsl:template match="eav:fact[@concept = 'LOINC:68552-9']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">68552-9</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[@concept = 'LOINC:11488-4']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">11488-4</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[@concept = 'LOINC:53576-5']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">53576-5</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[@concept = 'LOINC:74198-3']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">74198-3</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[@concept = 'LOINC:34750-0']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">34750-0</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:fact[@concept = 'LOINC:34905-0']">
        <xsl:copy>          
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">34905-0</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    
    <!-- Copy concept codes to templateId for easier use of templateSetTimeValues -->
    <xsl:template match="eav:fact[@concept = 'AKTIN:ZeitpunktErsterArztkontakt']">
        <xsl:copy>     
            <xsl:attribute name="templateId">
                <xsl:value-of select="./@concept"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>   
    
</xsl:stylesheet>