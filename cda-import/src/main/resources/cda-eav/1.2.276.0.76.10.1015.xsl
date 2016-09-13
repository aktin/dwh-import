<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../../aktin-runtime-develop/aktin-basism.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs func cda eav aktin"
    version="2.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:func="http://for.func"
	xmlns:aktin="http://aktin.org/cda/functions"
	xmlns:cda="urn:hl7-org:v3"
	xmlns:eav="http://sekmi.de/histream/ns/eav-data"
	xmlns="http://sekmi.de/histream/ns/eav-data">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
	<!-- RESERVED VARIABLES -->
	<!-- 
		these variables are used outside of the XSLT file
		to modify the cda-import configuration.
		Do not remove!
	-->
    <!-- identify to which logical module the submitted data belongs -->
    <!-- for the value-set, see README.md -->
	<xsl:variable name="aktin.module.id">base</xsl:variable>
	<xsl:variable name="aktin.module.template">1.2.276.0.76.10.1015</xsl:variable>
    <xsl:variable name="aktin.release.version">${project.version}</xsl:variable>

	<!-- CONSTANT Definitions -->
              
    <!-- Concept Code Prefix for LOINC Codes -->
    <xsl:variable name="LOINC-Prefix">LOINC:</xsl:variable>
    
    <!-- Concept Code Prefix for ICD10GM Codes -->
    <xsl:variable name="ICD10GM-Prefix">ICD10GM:</xsl:variable>
    
    <!-- Concept Code Prefix for Rankin Codes -->
    <xsl:variable name="Rankin-Prefix">RANKIN:</xsl:variable> 
    
    <!-- Concept Code Prefix for CEDIS Codes -->
    <xsl:variable name="CEDIS-Prefix">CEDIS30:</xsl:variable>
    
    <!-- Concept Code Prefix for AKTIN Codes --> 
    <xsl:variable name="AKTIN-Prefix">AKTIN:</xsl:variable>
    
    <!-- Concept Code Prefix for Zuweiser Codes -->
    <xsl:variable name="Zuweiser-Prefix">AKTIN:REFERRAL:</xsl:variable>
    
    <!-- Concept Code Prefix for Signifikante Pathogene Codes -->
    <xsl:variable name="Pathogen-Prefix">AKTIN:PATHOGENE:</xsl:variable> 
    
    <!-- Concept Code Prefix for Allergy Codes -->
    <xsl:variable name="Allergie-Prefix">AKTIN:ALLERGY:</xsl:variable> 
    
    <!-- Concept Code Prefix for Isolation Codes -->
    <xsl:variable name="Isolation-Prefix">AKTIN:ISOLATION:</xsl:variable> 
    
    <!-- Concept Code Prefix for Isolation Reason Codes -->
    <xsl:variable name="IsolationReason-Prefix">AKTIN:ISOREASON:</xsl:variable> 
    
    <!-- Concept Code Prefix for Transfer Codes -->
    <xsl:variable name="Verlegung-Prefix">AKTIN:TRANSFER:</xsl:variable>
    
    <!-- Concept Code Prefix for Discharge Codes -->
    <xsl:variable name="Entlassung-Prefix">AKTIN:DISCHARGE:</xsl:variable> 
    
    <!-- Concept Code Prefix for Pregnancy Codes -->
    <xsl:variable name="Schwangerschaft-Prefix">AKTIN:PREGNANCY:</xsl:variable> 
    
    <!-- Concept Code Prefix for Transportmethod Codes -->
    <xsl:variable name="Transport-Prefix">AKTIN:TRANSPORT:</xsl:variable> 
    
    <!-- Prefix for Target Site Modifiers -->
    <xsl:variable name="TargetSite-Prefix">AKTIN:TSITE:</xsl:variable> 
    
    <!-- Prefix for Diagnosis Modifiers -->
    <xsl:variable name="Diagnosis-Prefix">AKTIN:DIAG:</xsl:variable> 
    
    <!-- Prefix for Diagnostic Result Modifiers -->
    <xsl:variable name="Diagnostic-Prefix">AKTIN:RESULT:</xsl:variable> 
       
    <!-- Prefix for Import Transformation Version Information -->
    <xsl:variable name="ImportVersion-Prefix">AKTIN:ITVI:</xsl:variable> 
    
<!-- MAIN Template -->   

    <xsl:template match="/">
        <eav-data> 
            <meta>
                <etl-strategy>replace-source</etl-strategy>
                <source>
                    <xsl:attribute name="timestamp">
						<xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:effectiveTime/@value)"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">
						<xsl:call-template name="encounter-module-id"/>
                    </xsl:attribute>
                </source>           
            </meta>
            <patient>   
                <xsl:attribute name="id">
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole"/>                        
                </xsl:attribute>
                <!-- 
                <given-name>information privacy</given-name>
                <surname>information privacy</surname>
                 -->
                <gender><xsl:call-template name="EAV-Geschlecht"></xsl:call-template></gender>
                <birthdate><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime"/></birthdate>
                <xsl:if test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode/@code='1'">
                    <deceased><xsl:value-of select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value"/></deceased>
                </xsl:if>
                <encounter>
                    <xsl:attribute name="id">
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:setId"/>                      
                    </xsl:attribute>  
                    <start>
                        <xsl:call-template name="ZeitpunktAufnahme"/>                        
                    </start>  
                    <xsl:call-template name="ZeitpunktEntlassungOptional"/>
                    <!-- <location></location> -->
                    <!-- <provider></provider> -->
                    <!-- <source></source> -->
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:city"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time"/>  
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:effectiveTime"/>   
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:participant/cda:associatedEntity"/>   
                    <!-- Alle Fact-Templates auf Body/Component/Section Ebene aufrufen -->
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section"/>                                                    
                </encounter>
            </patient>     
        </eav-data> 
    </xsl:template>
    
    <xsl:template match="text()"/>   <!-- Match plain text nodes and do nothing, i.e. mask default output for text nodes     -->
 
 
<!-- COMPONENT Templates -->    
 
 
    <!-- Eindeutiger Identifier (~Fallnummer), identisch bei Updates des gleichen Dokuments (nicht PatID!) -->
    <!-- SetID(@root/@extension) identisch, versionNumer für Updates! // ClinicalDocument/setId shall be present to enable further updates to this ClinicalDocument. This identifier is to remain the same across all revisions   -->
	<!-- eigentlich ist die Set-ID nicht dafür vorgesehen, im nächsten Release wird das geändert -->
    <xsl:template match="/cda:ClinicalDocument/cda:setId">
        <xsl:value-of select="aktin:encounter-hash(./@root, ./@extension)"/>
    </xsl:template>
 
    <!-- 1	ID des Krankenhauses 
    Die KrankenhausID muss nicht im DWH gespeichert werden.
    Bei der Zusammenführung ist dem Broker die Quelle bekannt und kann ggf. ergänzt werden.
    Im CDA ist es über Custodian vermutlich am sinnvollsten abbildbar.
    
    <!-- 2	ID der Notaufnahme
    siehe 1 - Falls es zwei Notaufnahmen gibt, haben sie ein seperates DWH oder ein gemeinsames und werden nicht getrennt ausgewertet. In beiden Fällen ist die Frage nicht wirklich relevant.
    -->
    
    <!-- 3	PatientenId im Basismodul -->
    <!-- <xsl:comment>3	PatientenId im Basismodul</xsl:comment> -->
    <xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
        <xsl:value-of select="aktin:patient-hash(./cda:id/@root, ./cda:id/@extension)"/>
    </xsl:template>
   
    <!-- 60 Versicherungsname -->  
    <!-- 771 Versicherungsträger -->
    <!-- 808 Versicherungsnummer -->
    <xsl:template match="cda:participant/cda:associatedEntity">
        <xsl:comment>60 Versicherungsname</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>KKNAME</xsl:attribute>  <!-- Name der Krankenkasse als Freitext -->
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="./cda:scopingOrganization/cda:name"/>
            </value>
        </fact>

        <!-- kann die ID (IKNR) in scopingOrganisation auch weggelassen werden? -->
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>IKNR</xsl:attribute>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.5']/@extension"/>
            </value>
        </fact>
        <!-- VK-Nummer, wenn vorhanden -->
        <xsl:if test="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.7']">
		<fact>
		    <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>VKNR</xsl:attribute>
		    <value>
		        <xsl:attribute name="xsi:type">string</xsl:attribute>
		        <xsl:value-of select="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.7']/@extension"/>
		    </value>
		</fact>
	</xsl:if>

    </xsl:template>
    
    <!-- 53 Patientenname -->
    <!-- 54 Patientenadresse (Strasse) -->
    <!-- 55 Patientenadresse (Ort) -->
    <!-- 772 Patientenadresse (PLZ) -->
    <!-- 56 Patientenadresse (Telefonnummer) -->    
    <!-- information privacy (alles außer PLZ), ggf. an dieser Stelle schon Stellen weglassen? -->
    <xsl:template match="cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode">
        <xsl:comment>772 Patientenadresse (PLZ)</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>ZIPCODE</xsl:attribute>
            <value>
                <!-- <xsl:attribute name="unit"></xsl:attribute> -->
                <xsl:attribute name="xsi:type">numeric</xsl:attribute>
                <xsl:value-of select="."/>
            </value>
        </fact>
    </xsl:template>
    
    <!-- Auswertung des Ortsnamens (für Kreis/Gemeindekennziffer) aktuell nicht vorgesehen
    <xsl:template match="cda:recordTarget/cda:patientRole/cda:addr/cda:city">
        <xsl:comment>Patientenadresse (Ort)</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>Ort</xsl:attribute>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="."/>
            </value>
        </fact>
    </xsl:template> -->
    
    <!-- 59 Geburtsdatum 
        HL7.TS =>  	YYYY[MM[DD]] -->
    <xsl:template match="cda:patient/cda:birthTime">
        <xsl:value-of select="func:ConvertDateTime(./@value)"/>
    </xsl:template>
    
    <!-- 114 Rankin Scale als einzelne Konzept (0..6)-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4045']">
        <!--
        <xsl:comment>114 Rankin Scale (Konzeptcode)</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../cda:value/@value = '0'"><xsl:value-of select="$Rankin-Prefix"/>0</xsl:when>
                    <xsl:when test="../cda:value/@value = '1'"><xsl:value-of select="$Rankin-Prefix"/>1</xsl:when>
                    <xsl:when test="../cda:value/@value = '2'"><xsl:value-of select="$Rankin-Prefix"/>2</xsl:when>
                    <xsl:when test="../cda:value/@value = '3'"><xsl:value-of select="$Rankin-Prefix"/>3</xsl:when>
                    <xsl:when test="../cda:value/@value = '4'"><xsl:value-of select="$Rankin-Prefix"/>4</xsl:when>
                    <xsl:when test="../cda:value/@value = '5'"><xsl:value-of select="$Rankin-Prefix"/>5</xsl:when>
                    <xsl:when test="../cda:value/@value = '6'"><xsl:value-of select="$Rankin-Prefix"/>6</xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <xsl:call-template name="GetEffectiveTimes"/>
        </fact> -->
      
     <!-- 114 Rankin Scale numerisch (0..6) -->
        <xsl:comment>114 Rankin Scale</xsl:comment>
        <fact>     
            <xsl:attribute name="concept"><xsl:value-of select="$LOINC-Prefix"/>75859-9</xsl:attribute>
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetNumericValues"/>
            <xsl:call-template name="GetEffectiveTimes"/>
        </fact>
    </xsl:template>
    
    <!-- 65 Patientengeschlecht
    I2B2: keine Einschränkung
    EAV: female, male, indeterminate
    Datensatz: M/F/UN + beliebige NullFlavor (min. "unbekannt" und "nicht angegeben")
   
    <xsl:template match="cda:patient/cda:administrativeGenderCode">
        <xsl:comment>65 Patientengeschlecht</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>          
                    <xsl:when test="./@code">              
                        <xsl:value-of select="$LOINC-Prefix"/>21840-4:<xsl:value-of select="./@code"/>            
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$LOINC-Prefix"/>21840-4:<xsl:value-of select="./@nullFlavor"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        </fact>       
    </xsl:template> -->
    
        <xsl:template name="encounter-module-id">
    	<!-- generate a unique id for encounter and module  -->
		<xsl:value-of select="aktin:import-hash(
		concat(/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@root,'',
		'',/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension),'',
		'',concat(/cda:ClinicalDocument/cda:setId/@root,'',
		'',/cda:ClinicalDocument/cda:setId/@extension),
		$aktin.module.id)"/>
    </xsl:template>
    
    <xsl:template name="EAV-Geschlecht">
        <xsl:choose>
            <xsl:when test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='F'">female</xsl:when>  
            <xsl:when test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='M'">male</xsl:when>  
            <xsl:when test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='UN'">indeterminate</xsl:when>  
            <!-- Unknown as explicit value not supported by EAV (= not answered)-->
        </xsl:choose>
    </xsl:template>   
    
    <!-- 57/58 Aufnahmedatum/uhrzeit 
    vgl. 882
    -->
    
    <!-- 5 Schwanger L:11449-6'-->
    <!-- Unterscheidung Unknown und Nicht ausgefüllt? -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4043']">
        <xsl:comment>5 Schwangerschaftsstatus</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>          
                    <xsl:when test="../cda:value/@code">
                        <xsl:value-of select="$Schwangerschaft-Prefix"/><xsl:value-of select="../cda:value/@code"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$Schwangerschaft-Prefix"/><xsl:value-of select="../cda:value/@nullFlavor"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes"/>
        </fact>        
    </xsl:template>
    
    <!-- 6 Tetanusschutz L:11458-7-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4044']">
        <xsl:comment>6 Tetanusschutz</xsl:comment>
        <fact> 
            <xsl:attribute name= "concept">
                <xsl:choose>
                    <xsl:when test="../@negationInd = 'true'"><xsl:value-of select="$LOINC-Prefix"/>11458-7:NEG</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and not (@nullFlavor = 'NI')"><xsl:value-of select="$LOINC-Prefix"/>11458-7</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and  @nullFlavor = 'NI'"><xsl:value-of select="$LOINC-Prefix"/>11458-7:NI</xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>
        </fact>
    </xsl:template>
    
    <!-- 7 Isolation -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4068']">
        <xsl:comment>7 Isolation</xsl:comment>
        <xsl:if test="../cda:code/@code = 'RISO'"> <!-- Reverse Isolation -->
            <fact> 
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix"/>RISO</xsl:attribute>
                <xsl:call-template name="GetEffectiveTimes"/> <!-- No times in Isolation -->
            </fact>
        </xsl:if>
        <xsl:if test="../cda:code/@code = 'ISO' and ../../cda:procedure/@negationInd = 'true'"> <!-- No Isolation -->
            <fact> 
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix"/>ISO:NEG</xsl:attribute>
                <xsl:call-template name="GetEffectiveTimes"/> <!-- No times in Isolation -->
            </fact>
        </xsl:if>
        <xsl:if test="../cda:code/@code = 'ISO' and not(../../cda:procedure/@negationInd = 'true')">
            <fact> 
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix"/>ISO</xsl:attribute>
                <xsl:call-template name="GetEffectiveTimes"/> <!-- No times in Isolation -->
            </fact>       
        </xsl:if>
    </xsl:template>
    
    <!-- 8 Isolation Begründung -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4069']">
        <xsl:comment>8 Isolation Begründung</xsl:comment>
        <fact> 
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../cda:value/@code">
                        <xsl:value-of select="$IsolationReason-Prefix"/><xsl:value-of select="../cda:value/@code"/>
                    </xsl:when>
                    <xsl:otherwise>  
                        <xsl:value-of select="$IsolationReason-Prefix"/><xsl:value-of select="../cda:value/@nullFlavor"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:call-template name="GetEffectiveTimes"/> <!-- No times in Isolation -->
        </fact>
    </xsl:template>
   
    <!-- 9 Atemfrequenz
    <fact concept="L:9279-1">
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4030']">
        <xsl:comment>9 Atemfrequenz</xsl:comment>
        <fact>     
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 10 Sauerstoffsättigung 59408-5
    <fact concept="L:59408-5">
    LOINC Code ist im CDA anders gewählt
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4031']">
        <xsl:comment>10 Sauerstoffsättigung</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 11 Systolischer Blutdruck 8480-6
    <fact concept="L:8480-6">
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4032']">
        <xsl:comment>11 Systolischer Blutdruck</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 12 Herzfrequenz 8867-4
    <fact concept="L:8867-4" </fact>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4033']">
        <xsl:comment>12 Herzfrequenz</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 13 GCS Augenöffnen 
    <fact concept="L:9267-6"</fact> -->
    <xsl:template match="cda:code[@code='9267-6']">
        <xsl:comment>13 Glasgow Coma Scale Eye Opening(</xsl:comment>
        <fact>         
            <xsl:if test="../../../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 14 GCS verbale Antwort
    <fact concept="L:9270-0"/fact> -->
    <xsl:template match="cda:code[@code='9270-0']">
        <xsl:comment>14 Glasgow Coma Scale Verbal Response(</xsl:comment>
        <fact>           
            <xsl:if test="../../../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 16 GCS motorische Antwort 
    <fact concept="L:9268-4" > -->
    <xsl:template match="cda:code[@code='9268-4']">
        <xsl:comment>16 Glasgow Coma Scale Motor Response(</xsl:comment>
        <fact>         
            <xsl:if test="../../../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 17 GCS Summe 
    <fact concept="L:9269-2" > -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4034']">
        <xsl:comment>17 Glasgow Coma Scale(</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 18 Pupillenweite bei Aufnahme in der Notaufnahme -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4046']">
        <xsl:comment>18 Pupillenweite bei Aufnahme in der Notaufnahme</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue"/>                    
            <modifier>
                <xsl:attribute name="code">
                    <xsl:value-of select="$TargetSite-Prefix"/><xsl:value-of select="../cda:targetSiteCode/@code"/>
                </xsl:attribute>
            </modifier> 
        </fact>
    </xsl:template>
        
     <!-- 19 Pupillenreaktion -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4047']">
        <xsl:comment>19 Pupillenreaktion</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue"/>      
            <modifier>
                <xsl:attribute name="code">
                    <xsl:value-of select="$TargetSite-Prefix"/><xsl:value-of select="../cda:targetSiteCode/@code"/>
                </xsl:attribute>
            </modifier>   
        </fact>
    </xsl:template>
                   
     <!-- 20 Körperkerntemperatur -->  
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4035']">
        <xsl:comment>20 Körperkerntemperatur</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
                   
    <!-- 21 Schmerz bei Aufnahme, loinc-schmerzskala 0-10 ggf. Answer list LL2335-9            
    <fact concept="L:72514-3" >
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4036']">
        <xsl:comment>21 Schmerz bei Aufnahme</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 22 Zuweisung -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3046']">
        <xsl:comment>22 Zuweisung</xsl:comment>
        <fact>
            <xsl:if test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code">               
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Zuweiser-Prefix"/><xsl:value-of select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@nullFlavor">               
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Zuweiser-Prefix"/><xsl:value-of select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@nullFlavor"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes"/> <!-- no Times in Zuweisung -->
        </fact>
    </xsl:template>
    
    <!-- 62 Zuweiser -->
    <!-- Auf dem Bogen nicht vorgesehen / Freitext -->
    
    <!-- 23 Ersteinschätzung -->
    <!-- incl. 770 Zeitpunkt der Ersteinschätzung
         incl. 804	Verwendetes Ersteinschätzungssystem
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4042']">
        <!-- <xsl:comment>804 Verwendetes Ersteinschätzungssystem</xsl:comment> => Information in 23/770 enthalten 
        <fact>
            <xsl:attribute name="concept">          
                <xsl:choose>
                    <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.438'"><xsl:value-of select="../cda:code/@code"/>:MTS</xsl:when>
                    <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.437'"><xsl:value-of select="../cda:code/@code"/>:ESI</xsl:when>
                </xsl:choose>     
            </xsl:attribute>       
        </fact>  => Information in 23/770 enthalten -->
        <xsl:comment>804 Verwendetes Ersteinschätzungssystem/23 Ersteinschätzung/770 Zeitpunkt der Ersteinschätzung</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="not(../cda:value)"><xsl:value-of select="$AKTIN-Prefix"/>ASSESSMENT</xsl:when>
                    <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.438'">MTS:<xsl:value-of select="../cda:value/@code"/></xsl:when>
                    <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.437'">ESI:<xsl:value-of select="../cda:value/@code"/></xsl:when>
                </xsl:choose>
            </xsl:attribute>       
            <xsl:if test="../cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>         
        </fact>
    </xsl:template>
    
    <!-- 24 Diagnostik  Überschrift/Freitext -->
    
    <!-- Zusatzmodule -->
    <!-- 25 Modul Überwachung -->
    <!-- 26 Modul Trauma -->
    <!-- 27 Modul Anästhesie -->
    <!-- 28 Modul Konsil -->
    <!-- 29 Modul Präklinik -->
    <!-- 30 Modul Chargendokumentation -->
    <!-- 767 Modul Neurologie -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4070']">
        <xsl:comment>25-30+767 Zusatzmodule</xsl:comment>
        <xsl:for-each select="../cda:reference/cda:externalDocument">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$LOINC-Prefix"/>
                    <xsl:value-of select="./cda:code/@code"/>
                </xsl:attribute>
            </fact>     
        </xsl:for-each>
    </xsl:template>   
    
    <!-- 31 Allergie -->
    <!-- 33 Antibiotikaallergie -->
    <!-- 32 Kontrastmittelallergie -->
    <!-- 34 Allergie Sonstige -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4065']">
        <xsl:comment>31/32/33/34 Allergien</xsl:comment>
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4066']">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Allergie-Prefix"/>
                    <xsl:choose>
                        <xsl:when test="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code">
                            <xsl:value-of select="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@nullFlavor"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:if test="../@negationInd = 'true'">:NEG</xsl:if>                  
                </xsl:attribute>
                <xsl:if test="../cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>
            </fact>
        </xsl:for-each>
    </xsl:template>
    
    <!-- Freitext für anamnestisch bestehende Unverträglichkeiten / Allergien -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3051']">
        <xsl:comment>Freitext für anamnestisch bestehende Unverträglichkeiten / Allergien</xsl:comment> 
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$Allergie-Prefix"/>TXT</xsl:attribute>
            <xsl:if test="../cda:entry/cda:act/cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:entry/cda:act/cda:effectiveTime/cda:low/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="../cda:text"/>                
            </value>
        </fact>         
    </xsl:template>
     
    <!-- 36 Beschwerden bei Vorstellung / Freitext-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3048']">
        <xsl:comment>Beschwerden bei Vorstellung (Freitext)</xsl:comment> 
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>COMPLAINT</xsl:attribute>
            <xsl:if test="../cda:entry/cda:act/cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:entry/cda:act/cda:effectiveTime/cda:low/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="../cda:text"/>
            </value>
        </fact>         
    </xsl:template>
    
    <!-- 212 Symptomdauer 
    siehe 805 CEDIS-->
    
    <!-- 37 Zeitpunkt erster Arztkontakt-->
    <xsl:template match="cda:documentationOf/cda:serviceEvent/cda:performer/cda:time">
        <xsl:if test="./cda:low/@value">
            <xsl:comment>37 Zeitpunkt erster Arztkontakt</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>PHYSENCOUNTER</xsl:attribute>
                <xsl:if test="./cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(./cda:low/@value)"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
            </fact>
        </xsl:if>
    </xsl:template>
    
    <!-- 38 Zeitpunkt Therapiebeginn-->
    <xsl:template match="cda:documentationOf/cda:serviceEvent/cda:effectiveTime">
        <xsl:if test="./cda:low/@value">
            <xsl:comment>38 Zeitpunkt Therapiebeginn</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>STARTTHERAPY</xsl:attribute>
                <xsl:if test="./cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(./cda:low/@value)"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
            </fact>
        </xsl:if>
    </xsl:template>
    
    <!-- 40 Notfallanamnese / Freitext-->
    
    <!-- 41 Befunde / Freitext-->
    
    <!-- 46 Procedere / Freitext-->
    
    <!-- 42 Abschlussdiagnosen / Freitext--> 
    <!-- 44 Abschlussdiagnosen-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3055']">
        <xsl:comment>44 Abschlussdiagnosen</xsl:comment>
        <xsl:for-each select="../cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4049']">
            <fact>
                <xsl:choose>
                    <xsl:when test="../cda:value/@code">
                        <xsl:choose>
                            <xsl:when test="../cda:value/@code='SUSP'">
                                <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix"/><xsl:value-of select="../cda:value/cda:qualifier/cda:value/@code"/></xsl:attribute>
                                <xsl:if test="../cda:effectiveTime/cda:low/@value">
                                    <xsl:attribute name="start">
                                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)"/>
                                    </xsl:attribute>
                                </xsl:if>
                                <modifier>
                                    <xsl:attribute name="code">Verdacht</xsl:attribute>
                                </modifier>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix"/><xsl:value-of select="../cda:value/@code"/></xsl:attribute>
                                <xsl:if test="../cda:effectiveTime/cda:low/@value">
                                    <xsl:attribute name="start">
                                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)"/>
                                    </xsl:attribute>
                                </xsl:if>
                            </xsl:otherwise>
                        </xsl:choose>                      
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix"/>NULL<xsl:value-of select="position()"/></xsl:attribute>
                        <xsl:if test="../cda:effectiveTime/cda:low/@value">
                            <xsl:attribute name="start">
                                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)"/>
                            </xsl:attribute>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="../../cda:sequenceNumber/@value='1'">
                    <modifier>
                        <xsl:attribute name="code">fuehrend</xsl:attribute>
                    </modifier>
                </xsl:if>
                <xsl:if test="../cda:value/cda:originalText">
                    <modifier>
                        <xsl:attribute name="code">originalText</xsl:attribute>
                        <value>
                            <xsl:attribute name="xsi:type">string</xsl:attribute>
                            <xsl:value-of select="../cda:value/cda:originalText"/>
                        </value>
                    </modifier>
                </xsl:if>
                <xsl:if test="../../cda:observation/@negationInd='true'">
                    <modifier>
                        <xsl:attribute name="code">Ausschluss</xsl:attribute>
                    </modifier>
                </xsl:if>
                <xsl:if test="../cda:effectiveTime/cda:high/@value">
                    <modifier>
                        <xsl:attribute name="code">Zustand nach</xsl:attribute>
                    </modifier>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
            </fact>     
        </xsl:for-each>
    </xsl:template>
    
    <!-- 804 verwendetes Ersteinschätzungssystem 
    siehe 23 Ersteinschätzung -->
    
    <!-- 805 Beschwerden bei Vorstellung (CEDIS) 
    incl. 212 Symptomdauer -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4040']">
        <xsl:comment>805 Beschwerden bei Vorstellung (CEDIS)</xsl:comment> 
        <fact>
            <xsl:call-template name="templateGetConceptValue"/>
        </fact>
        
        <xsl:if test="../cda:effectiveTime/@width"> 
            <xsl:comment>212 Symptomdauer</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>SYMPTOMDURATION</xsl:attribute>
                <xsl:value-of select="../cda:effectiveTime/@width"/>
            </fact>   
        </xsl:if>
    </xsl:template> 
    
    <!-- 806 multiresistente Erreger -->
    <!-- 807 multiresistente Erreger: Erregertyp -->
    <!-- Es sind einige Angaben im CDA möglich, die nicht vorgesehen sind. OPB wird transformiert, sollte aber nicht verwendet werden; nullFlavor an dieser Stelle ignoriert den Eintrag; Negation ebenfalls nicht in allen Fällen inhaltlich sinnvoll -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4072']">
        <xsl:comment>806/807 multiresistente Erreger</xsl:comment>
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4073']">     
            <xsl:if test="../cda:value/@code">        
                <fact>
                    <xsl:choose>
                        <xsl:when test="../cda:value/cda:qualifier/cda:value[../cda:name/@code='URAG']/@code">      
                            <xsl:choose>
                                <xsl:when test="../@negationInd">
                                    <xsl:attribute name="concept"><xsl:value-of select="$Pathogen-Prefix"/><xsl:value-of select="../cda:value/cda:qualifier/cda:value[../cda:name/@code='URAG']/@code"/>:<xsl:value-of select="../cda:value/@code"/>:NEG</xsl:attribute>  
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="concept"><xsl:value-of select="$Pathogen-Prefix"/><xsl:value-of select="../cda:value/cda:qualifier/cda:value[../cda:name/@code='URAG']/@code"/>:<xsl:value-of select="../cda:value/@code"/></xsl:attribute>  
                                </xsl:otherwise>
                            </xsl:choose>           
                        </xsl:when>               
                        <xsl:when test="../cda:value/cda:qualifier/cda:value[../cda:name/@code='URAG']/@nullFlavor"> 
                            <xsl:attribute name="concept">
                                <xsl:value-of select="$Pathogen-Prefix"/><xsl:value-of select="../cda:value/cda:qualifier/cda:value[../cda:name/@code='URAG']/@nullFlavor"/>:<xsl:value-of select="../cda:value/@code"/>
                            </xsl:attribute>             
                        </xsl:when>
                    </xsl:choose>
    
                    <xsl:if test="../cda:effectiveTime/cda:low/@value">
                        <xsl:attribute name="start">
                            <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)"/>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:call-template name="GetEffectiveTimes"/>
                </fact>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <!-- 808 Versicherungsnummer -->
    <!-- siehe 60 Versicherungsname / 771 Versicherungsträger -->
    
    <!-- 882 Uhrzeit Verlegung / Entlassung -->
    <!-- incl. 57/58 Aufnahmedatum/uhrzeit 
        Aufnahme/Entlassung muss nicht als Konzept noch einmal abgebildet werden, da bereits in i2b2 Metadaten enthalten
    <xsl:template match="cda:componentOf/cda:encompassingEncounter/cda:effectiveTime">
        <xsl:if test="./cda:high/@value">
            <xsl:comment>882 Uhrzeit Verlegung / Entlassung</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>ZeitpunktVerlegung</xsl:attribute> 
                <xsl:if test="./cda:high/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(./cda:high/@value)"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
            </fact>
        </xsl:if>
        <xsl:if test="./cda:low/@value">
            <xsl:comment>57/58 Aufnahmedatum/uhrzeit</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$LOINC-Prefix"/>52455-3</xsl:attribute>  
                <xsl:if test="./cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(./cda:low/@value)"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
            </fact>
        </xsl:if>
    </xsl:template>
    -->
    <!-- Template für visit/encounter -->
	<xsl:template name="ZeitpunktEntlassungOptional">
		<xsl:variable name="ts" select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value"/>
		<xsl:if test="$ts">
			<end>
				<xsl:value-of select="func:ConvertDateTime($ts)"/>
			</end>
		</xsl:if>
	</xsl:template>
    
    <!-- Template für visit/encounter -->
    <xsl:template name="ZeitpunktAufnahme">
        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low/@value)"/>
    </xsl:template>
    
    
    <!-- 884 Transportmittel -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4037']">
        <xsl:comment>884 Transportmittel</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue"/>
        </fact>
    </xsl:template>

    <!-- 596	Patient verlegt / entlassen nach -->
    <xsl:template match="cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode">
        <xsl:comment>596 Patient verlegt / entlassen nach</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$Entlassung-Prefix"/>
                <xsl:choose>
                    <xsl:when test="./@code">
                        <xsl:value-of select="./@code"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="./@nullFlavor"/>
                    </xsl:otherwise>    
                </xsl:choose>
            </xsl:attribute>     
            <xsl:if test="../cda:effectiveTime/cda:high/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:high/@value)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes"/>
        </fact>
    </xsl:template>
    <xsl:template match="cda:code[../cda:templateId/@root='1.2.276.0.76.10.4067']">
        <xsl:comment>596 Patient verlegt / entlassen nach</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$Verlegung-Prefix"/>
                <xsl:choose>
                    <xsl:when test="./@code">
                        <xsl:value-of select="./@code"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="./@nullFlavor"/>
                    </xsl:otherwise>    
                </xsl:choose>
            </xsl:attribute>   
            <xsl:call-template name="GetEffectiveTimes"/>
        </fact>
    </xsl:template>

    <!-- Diagnostik 25ff @negationInd -->
    <!-- Diagnostik 25ff opB -->
    <!-- Diagnostik 25ff Zeitpunkt-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3050']">
        <xsl:for-each select="../cda:entry/cda:observation/cda:templateId">
            <xsl:comment><xsl:value-of select="../cda:code/@displayName"/></xsl:comment>
            <fact>
                <xsl:attribute name="concept">
                    <xsl:choose>
                        <xsl:when test="../@negationInd"><xsl:value-of select="$LOINC-Prefix"/><xsl:value-of select="../cda:code/@code"/>:NEG</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$LOINC-Prefix"/><xsl:value-of select="../cda:code/@code"/>
                        </xsl:otherwise>
                    </xsl:choose>                    
                </xsl:attribute>
                <xsl:if test="../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
                <modifier>   <!-- Mehr Ausprägungen +NullFlavor vorhanden als abgefragt (nur Ja/Nein+NAV oder UNK)-->
                    <xsl:attribute name="code">
                        <xsl:choose>
                            <xsl:when test="../cda:value/@code">
                                <xsl:value-of select="../cda:value/@code"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="../cda:value/@nullFlavor"/>
                            </xsl:otherwise>
                        </xsl:choose>                                
                    </xsl:attribute>
                </modifier>
            </fact>
        </xsl:for-each>
    </xsl:template>
    
    <!-- One fact per Import/CDA-Document to save the information about the Software-Release and the applied Template Script
    We need this information to be able to transform data during updates (in case of Concept-Code Changes, Bugfixes etc.) -->
    
        <xsl:template match="/cda:ClinicalDocument/cda:templateId">
            <xsl:comment>Import Transformation Version Information</xsl:comment>
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$ImportVersion-Prefix"/><xsl:value-of select="$aktin.module.template"/>:<xsl:value-of select="$aktin.release.version"/>
                </xsl:attribute>
            </fact>
    </xsl:template>
  
     
<!-- GLOBAL TEMPLATES -->
   
   
    <!-- Generic GetConcept-Functions -->
    <xsl:template name="templateGetConceptCode">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:code/@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when>  
            </xsl:choose>
            <xsl:value-of select="../cda:code/@code"/>
        </xsl:attribute>
        <xsl:if test="../cda:effectiveTime/@value">
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:call-template name="GetNumericValues"/>
        <xsl:call-template name="GetEffectiveTimes"/>
    </xsl:template>   
    
    
    <xsl:template name="templateGetConceptValue">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:value/@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when> <!-- not used -->
                <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.439'"><xsl:value-of select="$CEDIS-Prefix"/></xsl:when>
                <xsl:when test="../cda:code/@code='11459-5'"><xsl:value-of select="$Transport-Prefix"/></xsl:when> 
                <xsl:when test="../cda:code/@code='RPPL'"><xsl:value-of select="$AKTIN-Prefix"/>RPPL:</xsl:when> 
                <xsl:when test="../cda:code/@code='SPPL'"><xsl:value-of select="$AKTIN-Prefix"/>SPPL:</xsl:when> 
                <xsl:when test="../cda:value/@codeSystem='2.16.840.1.113883.6.3' and ../cda:code/@code='DX'"><xsl:value-of select="$ICD10GM-Prefix"/></xsl:when> <!-- Abschlussdiagnosen --> <!-- not used --> 
                <xsl:otherwise><xsl:value-of select="../cda:code/@code"/>:</xsl:otherwise>  <!-- Default Prefix code/code -->
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="../cda:value/@code">
                    <xsl:value-of select="../cda:value/@code"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="../cda:value/@nullFlavor"/> 
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
        <xsl:if test="../cda:effectiveTime/@value">
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:if test="../cda:value/@codeSystem">
            <modifier>
                <xsl:attribute name="code">codeSystem</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:value/@codeSystem"/> <!-- mostly static/fixed -->        
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:value/@displayName">
            <modifier>
                <xsl:attribute name="code">displayName</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:value/@displayName"/>    
                </value>
            </modifier>
        </xsl:if>
        <xsl:call-template name="GetEffectiveTimes"/>
    </xsl:template>  
    
    <xsl:template name="GetEffectiveTimes">
        <xsl:if test="../cda:effectiveTime/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTime</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/@value"/>
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:effectiveTime/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTime</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/@nullFlavor"/>
                </value>
            </modifier>
        </xsl:if>
        
        <xsl:if test="../cda:effectiveTime/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTimeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:low/@value"/>
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:effectiveTime/cda:low/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTimeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:low/@nullFlavor"/>
                </value>
            </modifier>
        </xsl:if>
        
        <xsl:if test="../cda:effectiveTime/cda:high/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTimeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:high/@value"/>
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:effectiveTime/cda:high/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTimeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:high/@nullFlavor"/>
                </value>
            </modifier>
        </xsl:if>
        
        <xsl:if test="../cda:time/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">timeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:low/@value"/>
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:time/cda:low/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">timeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:low/@nullFlavor"/>
                </value>
            </modifier>
        </xsl:if>
        
        <xsl:if test="../cda:time/cda:high/@value">
            <modifier>
                <xsl:attribute name="code">timeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:high/@value"/>
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:time/cda:high/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">timeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:high/@nullFlavor"/>
                </value>
            </modifier>
        </xsl:if>
    </xsl:template>  
    
    <xsl:template name="GetNumericValues">
        <xsl:if test="../cda:value/@unit">
            <value>
                <xsl:attribute name="unit">
                    <xsl:value-of select="../cda:value/@unit"/>
                </xsl:attribute>
                <xsl:attribute name="xsi:type">numeric</xsl:attribute>   
                <xsl:value-of select="../cda:value/@value"/>
            </value>
        </xsl:if>
    </xsl:template>

<!-- Data/Time Conversions -->
    <xsl:function name="func:ConvertDateTime">
        <xsl:param name="DateTimeString"></xsl:param>
        <xsl:if test="$DateTimeString">
            <xsl:choose>
                <xsl:when test="string-length($DateTimeString) = 4"><xsl:value-of select="$DateTimeString"/></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 6"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 8"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 12"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/></xsl:when>
                <xsl:when test="string-length($DateTimeString) > 13"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/>:<xsl:value-of select="substring($DateTimeString,13,2)"/></xsl:when>
                <xsl:otherwise>XSL-Transformation Error: Datetime Format not recognized</xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>
    
    <!-- deprecated 
    <xsl:function name="func:age-in-months">
        <xsl:param name="date-of-birth" />
        <xsl:param name="current-date" />
        <xsl:variable name="y1" select="number(substring($date-of-birth, 1, 4))"/>
        <xsl:variable name="y2" select="number(substring($current-date, 1, 4))"/>
        <xsl:variable name="m1" select="number(substring($date-of-birth, 6, 2))"/>
        <xsl:variable name="m2" select="number(substring($current-date, 6, 2))"/>
        <xsl:variable name="d1" select="number(substring($date-of-birth, 9, 2))"/>
        <xsl:variable name="d2" select="number(substring($current-date, 9, 2))"/>
        <xsl:value-of select="12 * ($y2 - $y1) + $m2 - $m1 - number($d2 &lt; $d1)"/>
    </xsl:function>
    
    <xsl:function name="func:age-in-years">
        <xsl:param name="dob" />
        <xsl:param name="current" />
        <xsl:value-of select="floor(func:age-in-months($dob,$current) div 12)"/>
    </xsl:function>
    -->

</xsl:stylesheet>