<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../../aktin-runtime-develop/aktin-basism.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>

<!-- java -classpath C:\ProgramData\Oracle\Java\javaclasses\xalan.jar org.apache.xalan.xslt.Process -in basismodul-beispiel-storyboard01_complete02.xml -xsl dwh-eav-test-VT.xsl -out dwh-eav-TESTOUT.xml -->


<!-- #Todo alle effectiveTimes zusätzlich als Attribute ergänzen um alle Zeiten rekonstruieren zu können (start wird automatisch gesetzt und kann beim Export aus I2B2 nicht mehr verwendet werden) -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs func cda eav"
    version="2.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:func="http://for.func"
    xmlns:cda="urn:hl7-org:v3"
    xmlns:eav="http://sekmi.de/histream/dwh-eav"
    xmlns="http://sekmi.de/histream/dwh-eav">
    

    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    
<!-- CONSTANT Definitions -->
    
    <!-- Concept Code Prefix for Snomed-CT Codes -->
    <xsl:variable name="Snomed-Prefix">SNOMED:</xsl:variable>
            
    <!-- Concept Code Prefix for LOINC Codes -->
    <xsl:variable name="LOINC-Prefix">LOINC:</xsl:variable>
    
    <!-- Concept Code Prefix for ICD10GM Codes -->
    <xsl:variable name="ICD10GM-Prefix">ICD10GM:</xsl:variable>
    
    <!-- Concept Code Prefix for Rankin Codes -->
    <xsl:variable name="Rankin-Prefix">Rankin:</xsl:variable>
    
    <!-- Concept Code Prefix for CEDIS Codes -->
    <xsl:variable name="CEDIS-Prefix">CEDIS:</xsl:variable>
   
   
<!-- MAIN Template -->   

    <xsl:template match="/">
        <dwh-eav> 
            <meta>
                <etl strategy="replace-visit" />
                <source>
                    <xsl:attribute name="timestamp">
                        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:effectiveTime/@value)"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:setId"/>                        
                    </xsl:attribute>  
                </source>           
            </meta>
            <visit>   
                <patid><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole"/></patid>
                <surname>information privacy</surname>
                <names>information privacy</names>
                <birthdate><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime"/></birthdate>
                <!-- <deathdate></deathdate> -->
                <sex><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode"/></sex>
                <encounter>
                    <xsl:attribute name="start">
                        <xsl:call-template name="ZeitpunktAufnahme"/>                        
                    </xsl:attribute>  
                    <xsl:attribute name="end">
                        <xsl:call-template name="ZeitpunktEntlassung"/>                        
                    </xsl:attribute>  
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:setId"/>
                </encounter>
                <!-- <location></location> -->
                <!-- <provider></provider> -->
                <facts>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization"/>                
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time/cda:low"/>                   
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode"/>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:participant/cda:associatedEntity"/>
            
                    <!-- Alle Fact-Templates auf Body/Component/Section Ebene aufrufen -->
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section"/>                                
                </facts>
            </visit>     
        </dwh-eav> 
    </xsl:template>
    
    <xsl:template match="text()"/>   <!-- Match plain text nodes and do nothing, i.e. mask default output for text nodes     -->
 
<!-- COMPONENT Templates -->    
 
    <!-- Eindeutiger Identifier (~Fallnummer), identisch bei Updates des gleichen Dokuments (nicht PatID!) -->
    <!-- SetID(@root/@extension) identisch, versionNumer für Updates! // ClinicalDocument/setId shall be present to enable further updates to this ClinicalDocument. This identifier is to remain the same across all revisions   -->
    <xsl:template match="/cda:ClinicalDocument/cda:setId">
        <xsl:value-of select="./@root"/>.<xsl:value-of select="./@extension"/>
    </xsl:template>
 
    <!-- 1	ID des Krankenhauses 
    Die KrankenhausID muss nicht im DWH gespeichert werden.
    Bei der Zusammenführung ist dem Broker die Quelle bekannt und kann ggf. ergänzt werden.
    Im CDA ist es über Custodian vermutlich am sinnvollsten abbildbar.
    -->
    <xsl:template match="cda:representedCustodianOrganization">
        <xsl:comment>1	ID des Krankenhauses</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="./cda:id/@root"/>.<xsl:value-of select="./cda:id/@extension"/>
            </xsl:attribute>
        </fact>
    </xsl:template>
    
    <!-- 2	ID der Notaufnahme
    siehe 1 - Falls es zwei Notaufnahmen gibt, haben sie ein seperates DWH oder ein gemeinsames und werden nicht getrennt ausgewertet. In beiden Fällen ist die Frage nicht wirklich relevant.
    -->
    
    <!-- 3	PatientenId im Basismodul -->
    <!-- <xsl:comment>3	PatientenId im Basismodul</xsl:comment> -->
    <xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
            <xsl:value-of select="./cda:id/@root"/>.<xsl:value-of select="./cda:id/@extension"/>
    </xsl:template>
   
    <!-- 60 Versicherungsname -->  
    <!-- 771 Versicherungsträger -->
    <!-- 808 Versicherungsnummer -->
    <xsl:template match="cda:participant/cda:associatedEntity">
        <xsl:comment>60 Versicherungsname</xsl:comment>
        <fact>
            <xsl:attribute name="concept">  <!-- #ToDo Coding -->
                <xsl:value-of select="./cda:scopingOrganization/cda:name"/>
            </xsl:attribute>
        </fact>

        <xsl:comment>771 Versicherungsträger</xsl:comment>
        <fact>
            <xsl:attribute name="concept">  <!-- #ToDo Coding -->
                <xsl:value-of select="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.5']/@extension"/>
            </xsl:attribute>
        </fact>
        
        <xsl:comment>808 Versicherungsnummer</xsl:comment>
        <fact>
            <xsl:attribute name="concept">1.2.276.0.76.4.8</xsl:attribute>  <!-- #ToDo Coding -->
            <xsl:value-of select="./id/@extension"/>
        </fact>
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
            <!-- #ToDo temp. ConceptCode -->
            <xsl:attribute name="concept">PLZ</xsl:attribute>
            <xsl:value-of select="."/>
        </fact>
    </xsl:template>
    
    <!-- 59 Geburtsdatum 
        HL7.TS =>  	YYYY[MM[DD]] -->
    <xsl:template match="cda:patient/cda:birthTime">
        <xsl:value-of select="func:ConvertDateTime(./@value)"/>
    </xsl:template>
    
    <!-- 114 Rankin Scale als einzelne Konzept (0..6)-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4045']">
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
        </fact>
      
     <!-- 114 Rankin Scale numerisch (0..6) -->
        <xsl:comment>114 Rankin Scale (numerisch)</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="concept"><xsl:value-of select="$LOINC-Prefix"/>75859-9</xsl:attribute>
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 65 Patientengeschlecht
    <fact concept="L:21840-4" type="xsi:integer">1=männlich/2=weiblich</fact>
    -->
    <xsl:template match="cda:patient/cda:administrativeGenderCode"> <!-- #ToDo nullFlavor bzw. ggf. Undifferenziert -->
        <!--  <xsl:comment>65 Patientengeschlecht</xsl:comment>  -->
        <xsl:value-of select="./@code"/>       
    </xsl:template>
    
    <!-- 57/58 Aufnahmedatum/uhrzeit 
    <fact concept="S:305056002" start="2014-09-07T10:40:03"/>
    -->
    <xsl:template match="cda:encompassingEncounter/cda:effectiveTime/cda:low">
        <xsl:comment>57/58 Aufnahmedatum/uhrzeit</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$Snomed-Prefix"/>305056002</xsl:attribute>
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(./@value)"/>
            </xsl:attribute>
            <xsl:attribute name="effectiveTimeLow">
                <xsl:value-of select="./@value"/>
            </xsl:attribute>
        </fact>
    </xsl:template>
    <!-- Zusätzliches Template für visit/encounter -->
    <xsl:template name="ZeitpunktAufnahme">
        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low/@value)"/>
    </xsl:template>
    
    <!-- 5 Schwanger L:11449-6'-->
    <!-- Unterscheidung Unknown und Nicht ausgefüllt? -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4043']">
        <xsl:comment>5 Schwangerschaftsstatus</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue"/>
        </fact>        
    </xsl:template>
    
    <!-- 6 Tetanusschutz L:11458-7-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4044']">
        <xsl:comment>6 Tetanusschutz</xsl:comment>
        <fact> 
            <xsl:attribute name= "concept">
                <xsl:choose>
                    <xsl:when test="../@negationInd = 'true'">11458-7:negtrue</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and not (@nullFlavor = 'NI')">11458-7:negfalse</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and  @nullFlavor = 'NI'">11458-7:NI</xsl:when>
                </xsl:choose>
            </xsl:attribute>
        </fact>
    </xsl:template>
    
    <!-- 7 Isolation und 8 Isolation Begründung -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4068']">
        <xsl:comment>7 Isolation / 8 Isolation Begründung</xsl:comment>
        <xsl:if test="../cda:code/@code = '275829005'"> <!-- Reverse Isolation -->
            <fact> 
                <xsl:attribute name= "concept">
                    <xsl:value-of select="$Snomed-Prefix"/>275829005
                </xsl:attribute>
            </fact>
        </xsl:if>

        <xsl:if test="../cda:code/@code = '170497006' and ../../cda:procedure/@negationInd = 'true'"> <!-- No Isolation -->
            <fact> 
                <xsl:attribute name= "concept">
                    <xsl:value-of select="$Snomed-Prefix"/>170497006:negtrue
                </xsl:attribute>
            </fact>
        </xsl:if>

        <xsl:if test="../cda:code/@code = '170497006' and not(../../cda:procedure/@negationInd = 'true')">
            <xsl:call-template name="Isolationreason"/>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="Isolationreason">
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4069']">
            <fact> 
                <xsl:attribute name="xsi:type">
                    <xsl:value-of select="../cda:value/@xsi:type"/>
                </xsl:attribute>
                <xsl:call-template name="templateGetConceptValue"/>
            </fact>
        </xsl:for-each>
    </xsl:template>
   
    <!-- 9 Atemfrequenz
    <fact concept="L:9279-1" type="xsi:integer">0</fact>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4030']">
        <xsl:comment>9 Atemfrequenz</xsl:comment>
        <fact type="xsi:integer">            
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 10 Sauerstoffsättigung 59408-5
    <fact concept="L:59408-5" type="xsi:integer">0</fact>
    LOINC Code ist im CDA anders gewählt
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4031']">
        <xsl:comment>10 Sauerstoffsättigung</xsl:comment>
        <fact type="xsi:decimal">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 11 Systolischer Blutdruck 8480-6
    <fact concept="L:8480-6" type="xsi:integer">0</fact>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4032']">
        <xsl:comment>11 Systolischer Blutdruck</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 12 Herzfrequenz 8867-4
    <fact concept="L:8867-4" type="xsi:integer">0</fact>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4033']">
        <xsl:comment>12 Herzfrequenz</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 13 GCS Augenöffnen 
    <fact type="xsi:integer" concept="L:9267-6" unit="{score}">4</fact> -->
    <xsl:template match="cda:code[@code='9267-6']">
        <xsl:comment>13 Glasgow Coma Scale Eye Opening(</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 14 GCS verbale Antwort
    <fact type="xsi:integer" concept="L:9270-0" unit="{score}">3</fact> -->
    <xsl:template match="cda:code[@code='9270-0']">
        <xsl:comment>14 Glasgow Coma Scale Verbal Response(</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 16 GCS motorische Antwort 
    <fact type="xsi:integer" concept="L:9268-4" unit="{score}">2</fact> -->
    <xsl:template match="cda:code[@code='9268-4']">
        <xsl:comment>16 Glasgow Coma Scale Motor Response(</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 17 GCS Summe 
    <fact type="xsi:integer" concept="L:9269-2" unit="{score}">9</fact> -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4034']">
        <xsl:comment>17 Glasgow Coma Scale(</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="unit">                
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 18 Pupillenweite bei Aufnahme in der Notaufnahme -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4046']">
        <xsl:comment>18 Pupillenweite bei Aufnahme in der Notaufnahme</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:call-template name="templateGetConceptValue"/>
            </xsl:attribute>
            <value>
                <xsl:attribute name="modifier">
                    <xsl:value-of select="$Snomed-Prefix"/>:<xsl:value-of select="../cda:targetSiteCode/@code"/>
                </xsl:attribute>
            </value>    
        </fact>
    </xsl:template>
        
     <!-- 19 Pupillenreaktion -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4047']">
        <xsl:comment>19 Pupillenreaktion</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:call-template name="templateGetConceptValue"/>
            </xsl:attribute>
            <value>
                <xsl:attribute name="modifier">
                    <xsl:value-of select="$Snomed-Prefix"/>:<xsl:value-of select="../cda:targetSiteCode/@code"/>
                </xsl:attribute>
            </value>    
        </fact>
    </xsl:template>
                   
     <!-- 20 Körperkerntemperatur
     <fact concept="S:276885007" type="xsi:decimal">40.00</fact>
     -->  
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4035']">
        <xsl:comment>20 Körperkerntemperatur</xsl:comment>
        <fact type="xsi:decimal">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
                   
    <!-- 21 Schmerz bei Aufnahme, loinc-schmerzskala 0-10 ggf. Answer list LL2335-9            
    <fact concept="L:72514-3" type="xsi:integer">0</fact>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4036']">
        <xsl:comment>21 Schmerz bei Aufnahme</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@value"/>
        </fact>
    </xsl:template>
    
    <!-- 22 Zuweisung -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3046']">  <!-- #ToDo nullFlavor-->
        <xsl:comment>22 Zuweisung</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/>:</xsl:when>  
                    <xsl:when test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@codeSystem='2.16.840.1.113883.6.96'"><xsl:value-of select="$Snomed-Prefix"/></xsl:when>
                </xsl:choose>
                <xsl:value-of select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code"/>
            </xsl:attribute>
        </fact>
    </xsl:template>
    
    <!-- 62 Zuweiser -->
    <!-- Auf dem Bogen nicht vorgesehen / Freitext -->
    
    <!-- 23 Ersteinschätzung -->
    <!-- incl. 770 Zeitpunkt der Ersteinschätzung
    <fact type="xsi:integer" concept="S:273887006" start="201501171603">4</fact>
      
    #ToDo Abbildung "TriageSystem:Value" als Konzept-Code? momentan fixes Snomed Code für "Triage index (assessment scale)"
    incl. 804	Verwendetes Ersteinschätzungssystem??? 
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4042']">
        <xsl:comment>23 Ersteinschätzung/770 Zeitpunkt der Ersteinschätzung</xsl:comment>
        <fact type="xsi:integer">
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)"/>
            </xsl:attribute>
            <xsl:attribute name="effectiveTimeLow">
                <xsl:value-of select="../cda:effectiveTime/cda:low/@value"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="../cda:value/@xsi:type"/>
            </xsl:attribute>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:value/@code"/>
        </fact>
    </xsl:template>
    
    <!-- 24 Diagnostik  Überschrift/Freitext???-->
    
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
    
    <!-- 31 Allergie 
    ja/nein => Umsetzung?
    Falls Eintrag "48765-2" vorhanden "JA" annehmen? Dies scheint nicht 100%ig kodiert zu sein
    Wahrscheinlich ist es so, dass man noch ausschließen muss, dass auf der untersten Ebene eine Negation codiert ist
    -Heisst also eigentlich nur, dass irgendwas ausgefüllt ist?-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3051']">
        <xsl:comment>31 Allergie</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 33 Antibiotikaallergie -->
    <!-- 32 Kontrastmittelallergie -->
    <!-- 34 Allergie Sonstige 
    <xsl:template match="/cda:templateId[@root='1.2.276.0.76.10.4066']">
        <xsl:comment>33 Antibiotikaallergie</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../@negationInd = 'true'">Keine Allergie</xsl:when>  CODING!              
                    <xsl:otherwise>
                        <xsl:call-template name="templateGetConceptCode"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        </fact>
        </xsl:template>
    -->
    
    <!-- 36 Beschwerden bei Vorstellung / Freitext-->
    
    <!-- 212 Symptomdauer  #ToDo -->
    
    <!-- 37 Zeitpunkt erster Arztkontakt-->
    <xsl:template match="cda:documentationOf/cda:serviceEvent/cda:performer/cda:time/cda:low">
        <xsl:comment>37 Zeitpunkt erster Arztkontakt</xsl:comment>
        <fact>
            <xsl:attribute name="concept">2.16.840.1.113883.5.88</xsl:attribute> <!-- #ToDo ConceptCode "admitting physician" -->
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(./@value)"/>
            </xsl:attribute>
            <xsl:attribute name="timeLow">
                <xsl:value-of select="./@value"/>
            </xsl:attribute>
        </fact>
    </xsl:template>
    
    <!-- 38 Zeitpunkt Therapiebeginn-->
    <xsl:template match="cda:documentationOf/cda:serviceEvent/cda:effectiveTime/cda:low">
        <xsl:comment>38 Zeitpunkt Therapiebeginn</xsl:comment>
        <fact>
            <xsl:attribute name="concept">1.2.276.0.76.10.2035</xsl:attribute> <!-- #ToDo ConceptCode TemplateID -->
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(./@value)"/>
            </xsl:attribute>
            <xsl:attribute name="effectiveTimeLow">
                <xsl:value-of select="./@value"/>
            </xsl:attribute>
        </fact>
    </xsl:template>
    
    <!-- 40 Notfallanamnese / Freitext-->
    
    <!-- 41 Befunde / Freitext-->
    
    <!-- 46 Procedere / Freitext-->
    
    <!-- 42 Abschlussdiagnosen / Freitext-->
    
    <!-- 44 Abschlussdiagnosen-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3055']">
        <xsl:comment>44 Abschlussdiagnosen</xsl:comment>
        <xsl:for-each select="../cda:entry/cda:act/cda:entryRelationship">
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix"/><xsl:value-of select="./cda:observation/cda:value/@code"/></xsl:attribute>
            </fact>     
        </xsl:for-each>
    </xsl:template>
    
    <!-- 804 verwendetes Ersteinschätzungssystem -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3049']">
        <xsl:comment>804 verwendetes Ersteinschätzungssystem</xsl:comment>
        <fact concept="Ersteinschätzungssystem" type="xsi:string">
            <xsl:value-of select="../cda:entry/cda:observation/cda:value/@codeSystem"/>
        </fact>
    </xsl:template>
    
    <!-- 805 Beschwerden bei Vorstellung (CEDIS) -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3048']">
        <xsl:comment>805 Beschwerden bei Vorstellung (CEDIS)</xsl:comment>
        <xsl:for-each select="../cda:entry/cda:act/cda:entryRelationship">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$CEDIS-Prefix"/>
                    <xsl:value-of select="./cda:observation/cda:value/@code"/>
                </xsl:attribute>
            </fact>     
        </xsl:for-each>
    </xsl:template>
    
    <!-- 806 multiresistente Erreger -->        <!-- #ToDo Codierung-->
    <!-- 807 multiresistente Erreger: Erregertyp -->
    
    <!-- 808 Versicherungsnummer -->
    <!-- siehe oben: 60 Versicherungsname / 771 Versicherungsträger -->
    
    <!-- 882 Uhrzeit Verlegung / Entlassung -->
    <xsl:template match="cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high">
        <xsl:comment>882 Uhrzeit Verlegung / Entlassung</xsl:comment>
        <fact>
            <xsl:attribute name="concept">ZeitpunktVerlegung</xsl:attribute>  <!-- #ToDo ConceptCode -->
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(./@value)"/>
            </xsl:attribute>
            <xsl:attribute name="effectiveTimeHigh">
                <xsl:value-of select="./@value"/>
            </xsl:attribute>
        </fact>
    </xsl:template>
    <!-- Zusätzliches Template für visit/encounter -->
    <xsl:template name="ZeitpunktEntlassung">
        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value)"/>
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
            <xsl:call-template name="templateGetConcept"/>
        </fact>
    </xsl:template>

    <!-- Diagnostik 25ff @negationInd auswerten? Wie soll ja/nein abgebildet werden?-->
    <!-- Diagnostik 25ff opB >> 373573001 	Clinical finding present (situation) = opB unchecked; Clinical finding absent (situation) = opB checked-->
    <!-- Diagnostik 25ff Zeitpunkt-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3050']">
        <xsl:for-each select="../cda:entry/cda:observation">
            <xsl:comment><xsl:value-of select="./cda:code/@displayName"/></xsl:comment>
            <fact type="xsi:string">
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Snomed-Prefix"/><xsl:value-of select="./cda:code/@code"/>  <!-- for-each auf der falschen Ebene für Standardroutine templateGetConceptCode-->
                </xsl:attribute>
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(./cda:effectiveTime/@value)"/>
                </xsl:attribute>
                <xsl:attribute name="effectiveTime">
                    <xsl:value-of select="./cda:effectiveTime/@value"/>
                </xsl:attribute>
                <xsl:value-of select="./cda:value/@code"/>
            </fact>
        </xsl:for-each>
    </xsl:template>
   
     
<!-- GLOBAL TEMPLATES -->
   
   
<!-- Generic GetConcept-Functions for LOINC and SNOMED-->  
    <xsl:template name="templateGetConceptCode">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:code/@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when>  
                <xsl:when test="../cda:code/@codeSystem='2.16.840.1.113883.6.96'"><xsl:value-of select="$Snomed-Prefix"/></xsl:when>
            </xsl:choose>
            <xsl:value-of select="../cda:code/@code"/>
        </xsl:attribute>
    </xsl:template>   
    
    <xsl:template name="templateGetConceptValue">  <!-- #ToDo Prefix for custom Values? -->
        <xsl:choose>
            <xsl:when test="../cda:value/@code">
                <xsl:attribute name="concept">
                    <xsl:choose>
                        <xsl:when test="../cda:value/@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when>  
                        <xsl:when test="../cda:value/@codeSystem='2.16.840.1.113883.6.96'"><xsl:value-of select="$Snomed-Prefix"/></xsl:when>
                    </xsl:choose>
                    <xsl:value-of select="../cda:value/@code"/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="nullFlavor">
                    <xsl:value-of select="../cda:code/@code"/>:<xsl:value-of select="../cda:value/@nullFlavor"/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>  
    
    <xsl:template name="templateGetConcept">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="./@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when>  
                <xsl:when test="./@codeSystem='2.16.840.1.113883.6.96'"><xsl:value-of select="$Snomed-Prefix"/></xsl:when>
            </xsl:choose>
            <xsl:value-of select="./@code"/>
        </xsl:attribute>
    </xsl:template>  


<!-- Data/Time Conversions -->
    <xsl:function name="func:ConvertDateTime">
        <xsl:param name="DateTimeString"></xsl:param>
        <xsl:choose>
            <xsl:when test="string-length($DateTimeString) = 4"><xsl:value-of select="$DateTimeString"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) = 6"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) = 8"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) = 12"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) > 13"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/>:<xsl:value-of select="substring($DateTimeString,13,2)"/></xsl:when>
            <xsl:otherwise>XSL-Transformation Error: Datetime Format not recognized</xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
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

</xsl:stylesheet>