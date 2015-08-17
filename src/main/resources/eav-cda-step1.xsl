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
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    
    
    <!-- #ToDo: Einige Valuesets könnten vereinfacht werden durch komplexe Match-Bedingungen und Ausgabe der Werte mit substring-after
    => nur jeweils eine Ausgabe pro Codesystem => weniger Redundanz im XSL-Code --> 
    
    
    
    
<!-- Specific templates to produce enriched eav-items to facilitate step2 transformation -->
 
    <!-- TemplateID 1.2.276.0.76.10.2036
        Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes -->
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:371828006']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.2036</xsl:attribute>
            <xsl:attribute name="code">371828006</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:225928004']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.2036</xsl:attribute>
            <xsl:attribute name="code">225928004</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:34596002']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.2036</xsl:attribute>
            <xsl:attribute name="code">34596002</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:306689006']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.2036</xsl:attribute>
            <xsl:attribute name="code">306689006</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:118661008:408730004=385660001']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.2036</xsl:attribute>
            <xsl:attribute name="code">118661008:408730004=385660001</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'XXX:OTH']">  <!-- #ToDo Prefix -->
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.2036</xsl:attribute>
            <xsl:attribute name="NullFlavor">OTH</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>
 
 
 
    <!-- TemplateID 1.2.276.0.76.10.3045 / 1.2.276.0.76.10.4037
        Value Set 1.2.276.0.76.11.41 Transportmethode -->
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:52387005:408730004=107724000']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:attribute name="code">52387005:408730004=107724000</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:44613004']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:attribute name="code">44613004</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:83887000']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:attribute name="code">83887000</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:73957001']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:attribute name="code">73957001</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = '11459-5:UNK']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:attribute name="NullFlavor">UNK</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = '11459-5:OTH']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:attribute name="NullFlavor">OTH</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = '11459-5:NA']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4037</xsl:attribute>
            <xsl:attribute name="NullFlavor">NA</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>



    <!-- TemplateID 1.2.276.0.76.10.3046 / 1.2.276.0.76.10.4038
        Value Set 1.2.276.0.76.11.42 Zuweiser -->
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:310000008']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="code">310000008</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:309294001']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="code">309294001</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:43741000']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="code">43741000</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'KVNPIK']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="code">KVNPIK</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'KVNDAK']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="code">KVNDAK</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'NPHYS']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="code">NPHYS</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = '3457005:UNK']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="NullFlavor">UNK</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = '3457005:OTH']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4038</xsl:attribute>
            <xsl:attribute name="NullFlavor">OTH</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    



    <!-- TemplateID 1.2.276.0.76.10.3048 / 1.2.276.0.76.10.4039 / 1.2.276.0.76.10.4040
        Value Set 1.2.276.0.76.11.61 CEDIS Presenting Complaint List 3.0 -->
    <xsl:template match="eav:eav-item[contains(@concept,'CEDIS:')]">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4040</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'CEDIS:')"/>
            </xsl:attribute>
            <xsl:attribute name="codeSystem">1.2.276.0.76.5.439</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'CEDIS:UNK']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4040</xsl:attribute>
            <xsl:attribute name="code">UNK</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-item[@concept = 'CEDIS:OTH']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4040</xsl:attribute>
            <xsl:attribute name="code">OTH</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:copy>
    </xsl:template>
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4043
        Value Set 1.2.276.0.76.11.46 Schwangerschafts-Status -->
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:77386006']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4043</xsl:attribute>
            <xsl:attribute name="code">77386006</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:60001007']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4043</xsl:attribute>
            <xsl:attribute name="code">60001007</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>  
    <!-- #ToDo Check NullFlavors - sollte wegfallen -->
    
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4044 Clostridiumtetaniimmunization -->
    <xsl:template match="eav:eav-item[@concept = '11458-7:negtrue']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4044</xsl:attribute>
            <xsl:attribute name="negationInd">true</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = '11458-7:negfalse']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4044</xsl:attribute>
            <xsl:attribute name="negationInd">false</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = '11458-7:NI']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4044</xsl:attribute>
            <xsl:attribute name="negationInd">false</xsl:attribute>
            <xsl:attribute name="nullFlavor">NI</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <!-- #ToDo Check NullFlavors -->
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4045 Modifiedrankinscale -->
    <xsl:template match="eav:eav-item[contains(@concept,'Rankin:')]">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4045</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="substring-after(./@concept,'Rankin:')"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3047 / 1.2.276.0.76.10.4072  / 1.2.276.0.76.10.4073 
        Value Set 1.2.276.0.76.11.60 -->

    <!-- #ToDo CDA Anpassungen abwarten -->
    
        
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4030 RespiratoryRate -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:9279-1']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4030</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    
       
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4031 OxygenSaturation -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:20564-1']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4031</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4032 Systolicbloodpressure -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:8480-6']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4032</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4033 HeartRate -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:8867-4']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4033</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template> 
    
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale Eye Opening -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:9267-6']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034_9267-6</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale Verbal Response -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:9270-0']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034_9270-0</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template> 
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale Motor Response -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:9268-4']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034_9268-4</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template> 
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4034 GlasgowComaScale 
        Glasgow Coma Scale -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:9269-2']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4034</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template> 
    


    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4046 - Pupilsize 
        Value Set 1.2.276.0.76.11.49 Pupillenweite (quantitativ)
        Value Set 1.2.276.0.76.11.48 Auge links/rechts/beidseits -->
    <xsl:template match="eav:eav-group[@concept = 'SNOMED:37125009']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4046</xsl:attribute>
            <xsl:attribute name="code">37125009</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-group[@concept = 'SNOMED:420335002']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4046</xsl:attribute>
            <xsl:attribute name="code">420335002</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-group[@concept = 'SNOMED:301939004']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4046</xsl:attribute>
            <xsl:attribute name="code">301939004</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <!-- #ToDo Prüfen nach CDA Änderung, Nullflavor? -->

    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4047 - Pupilreaction 
        Value Set 1.2.276.0.76.11.50 Pupillenreaktion
        Value Set 1.2.276.0.76.11.48 Auge links/rechts/beidseits -->
    <xsl:template match="eav:eav-group[@concept = 'SNOMED:301949001']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4047</xsl:attribute>
            <xsl:attribute name="code">301949001</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-group[@concept = 'SNOMED:301948009']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4047</xsl:attribute>
            <xsl:attribute name="code">301948009</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="eav:eav-group[@concept = 'SNOMED:13353005']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4047</xsl:attribute>
            <xsl:attribute name="code">13353005</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
            <xsl:attribute name="targetSiteCode ">
                <xsl:value-of select="./eav:value/@modifier"/> <!-- #ToDo Prüfen nach CDA Änderung, geht so nicht bei Nullflavor Werten -->
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    <!-- #ToDo Prüfen nach CDA Änderung, Nullflavor? -->
     
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4035 BodyTemperatureCore -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:8329-5']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4035</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template> 
    
    
    <!-- TemplateID 1.2.276.0.76.10.3044 / 1.2.276.0.76.10.4036 Painseverity -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:72514-3']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4036</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="./text()"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template> 
    
    


    <!-- TemplateID 1.2.276.0.76.10.3050 #ToDo: Coding noch unklar für Diagnostik, CDA Änderung abwarten
    <xsl:template name="Section.Diagnostik.Code">                                                  #ToDo Negation!!!
        <xsl:if test="eav:eav-item[@concept = 'SNOMED:373573001']">
            <xsl:attribute name="code">373573001</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:if>
        <xsl:if test="eav:eav-item[@concept = 'SNOMED:373572006']">
            <xsl:attribute name="code">373572006</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:if>
        <xsl:if test="eav:eav-item[@concept = 'xxx:UNK']">               
            <xsl:attribute name="NullFlavor">UNK</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:if>
        <xsl:if test="eav:eav-item[@concept = 'xxx:NAV']">
            <xsl:attribute name="NullFlavor">NAV</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.5.1008</xsl:attribute>
        </xsl:if>
        </xsl:template>  -->
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3051  / 1.2.276.0.76.10.4065 / 1.2.276.0.76.10.4066
        Value Set 1.2.276.0.76.11.52 Allergy / intolerance substances
    #ToDo: Coding noch unklar, CDA Änderung abwarten  -->
    
    
    <!-- TemplateID 1.2.276.0.76.10.3054  / 1.2.276.0.76.10.4068 / 1.2.276.0.76.10.4069
        Value Set 1.2.276.0.76.11.55 Isolation reason
    #ToDo: Coding noch unklar, CDA Änderung abwarten
    vgl. Entwurf in cda-eav und step2!!!!
    -->
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3055  / 1.2.276.0.76.10.4048 / 1.2.276.0.76.10.4049 Problemobservationeddiagnosis -->
    <xsl:template match="eav:eav-item[contains(@concept,'ICD10GM:')]">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4048</xsl:attribute>
            <xsl:attribute name="code">
                <xsl:value-of select="substring-after(./@concept,'ICD10GM:')"/>
            </xsl:attribute>
            <!-- #ToDo CodeSystem für ICD10 GM xxxx spezifizieren
            <xsl:attribute name="codeSystem">1.2.276.0.76.5.413</xsl:attribute> -->
        </xsl:copy>
    </xsl:template>
    <!-- #ToDo NullFlavor nicht vorgesehen, aber theoretisch möglich -->
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3049 / 1.2.276.0.76.10.4042 Acuityobservation 
    #ToDo: Coding noch unklar, muss erst in CDA->EAV abgebildet werden (Prefix?)-->
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3056 / 1.2.276.0.76.10.4067 
         Value Set 1.2.276.0.76.11.53 Referral actions -->
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:304566005:260686004=37729005']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4067</xsl:attribute>
            <xsl:attribute name="code">304566005:260686004=37729005</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:304566005:260686004=19712007']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4067</xsl:attribute>
            <xsl:attribute name="code">304566005:260686004=19712007</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:76464004:260686004=37729005']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4067</xsl:attribute>
            <xsl:attribute name="code">76464004:260686004=37729005</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:76464004:260686004=19712007']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4067</xsl:attribute>
            <xsl:attribute name="code">76464004:260686004=19712007</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:305342007:260686004=37729005']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4067</xsl:attribute>
            <xsl:attribute name="code">305342007:260686004=37729005</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'SNOMED:305342007:260686004=19712007']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4067</xsl:attribute>
            <xsl:attribute name="code">305342007:260686004=19712007</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.96</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <!-- #ToDo Check NullFlavors - sollte wegfallen -->
    
    
    
    <!-- TemplateID 1.2.276.0.76.10.3057 / 1.2.276.0.76.10.4070 / 1.2.276.0.76.10.4071
         Value Set 1.2.276.0.76.11.57 Modules document types -->
    <xsl:template match="eav:eav-item[@concept = 'LOINC:68552-9']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">68552-9</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'LOINC:11488-4']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">11488-4</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'LOINC:53576-5']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">53576-5</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'LOINC:74198-3']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">74198-3</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'LOINC:34750-0']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">34750-0</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    <xsl:template match="eav:eav-item[@concept = 'LOINC:34905-0']">
        <xsl:copy>          
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="templateId">1.2.276.0.76.10.4071</xsl:attribute>
            <xsl:attribute name="code">34905-0</xsl:attribute>
            <xsl:attribute name="codeSystem">2.16.840.1.113883.6.1</xsl:attribute>
        </xsl:copy>
    </xsl:template>   
    
</xsl:stylesheet>