<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../../aktin-runtime-develop/aktin-basism.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>

<!-- #Todo alle effectiveTimes zusätzlich als Attribute ergänzen um alle Zeiten rekonstruieren zu können (start wird automatisch gesetzt und kann beim Export aus I2B2 nicht mehr verwendet werden) 
=> Am besten noch die Aufrufe besser zusammenfassen über TemplateGetConceptCode und nicht immer einzeln
Allgemein noch möglichst vieles über if/choose in die globalen Templates auslagern!

#ToDo: Alle Zugriffe auf effectiveTimes@value benötigen eine Abfrage für NullFlavors

#ToDo Display Name hinzufügen  / +Codesystem - Notarzt=NA :(
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs func cda eav"
    version="2.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:func="http://for.func"
    xmlns:cda="urn:hl7-org:v3"
    xmlns:eav="http://sekmi.de/histream/ns/eav-data"
    xmlns="http://sekmi.de/histream/ns/eav-data">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    
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
    
    <!-- Concept Code Prefix for Transfer Codes -->
    <xsl:variable name="Verlegung-Prefix">AKTIN:TRANSFER</xsl:variable>
    
    <!-- Concept Code Prefix for Discharge Codes -->
    <xsl:variable name="Entlassung-Prefix">AKTIN:DISCHARGE:</xsl:variable> 
    
    <!-- Concept Code Prefix for Pregnancy Codes -->
    <xsl:variable name="Schwangerschaft-Prefix">AKTIN:PREGNANCY:</xsl:variable> 
    
    <!-- Concept Code Prefix for Transportmethod Codes -->
    <xsl:variable name="Transport-Prefix">AKTIN:TRANSPORT:</xsl:variable> 
   
<!-- MAIN Template -->   

    <xsl:template match="/">
        <eav-data> 
            <meta>
                <etl-strategy>replace-visit</etl-strategy>
                <source>
                    <xsl:attribute name="timestamp">
                        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:effectiveTime/@value)"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:setId"/>                        
                    </xsl:attribute>  
                </source>           
            </meta>
            <patient>   
                <xsl:attribute name="id">
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole"/>                        
                </xsl:attribute>  
                <given-name>information privacy</given-name>
                <surname>information privacy</surname>
                <gender><xsl:call-template name="EAV-Geschlecht"></xsl:call-template></gender>
                <birthdate><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime"/></birthdate>
                <!-- <deathdate></deathdate> -->
                <encounter>
                    <xsl:attribute name="id">
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:setId"/>                      
                    </xsl:attribute>  
                    <start>
                        <xsl:call-template name="ZeitpunktAufnahme"/>                        
                    </start>  
                    <end>
                        <xsl:call-template name="ZeitpunktEntlassung"/>                        
                    </end>  
                    <location>
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization"/>  <!-- #ToDo: Es können mehrere IDs angegeben werden, Ausgabe dann doppelt -->
                    </location>
                    <!-- <provider></provider> -->
                    <!-- <source></source> -->
                    <facts>
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode"/>
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode"/>
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time"/>  
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:effectiveTime"/>   
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime"/>
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode"/>
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:participant/cda:associatedEntity"/>   
                        <!-- Alle Fact-Templates auf Body/Component/Section Ebene aufrufen -->
                        <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section"/>                                
                    </facts>
                </encounter>
            </patient>     
        </eav-data> 
    </xsl:template>
    
    <xsl:template match="text()"/>   <!-- Match plain text nodes and do nothing, i.e. mask default output for text nodes     -->
 
 
<!-- COMPONENT Templates -->    
 
 
    <!-- Eindeutiger Identifier (~Fallnummer), identisch bei Updates des gleichen Dokuments (nicht PatID!) -->
    <!-- SetID(@root/@extension) identisch, versionNumer für Updates! // ClinicalDocument/setId shall be present to enable further updates to this ClinicalDocument. This identifier is to remain the same across all revisions   -->
    <xsl:template match="/cda:ClinicalDocument/cda:setId">
        <!-- <xsl:value-of select="./@root"/>:<xsl:value-of select="./@extension"/> -->
        <xsl:value-of select="func:hash(concat(./@root,':',./@extension))"/>
    </xsl:template>
 
    <!-- 1	ID des Krankenhauses 
    Die KrankenhausID muss nicht im DWH gespeichert werden.
    Bei der Zusammenführung ist dem Broker die Quelle bekannt und kann ggf. ergänzt werden.
    Im CDA ist es über Custodian vermutlich am sinnvollsten abbildbar.
    -->
    <xsl:template match="cda:representedCustodianOrganization">
        <!-- <xsl:comment>1/2	ID des Krankenhauses/ der Notaufnahme</xsl:comment> -->
        <!-- <xsl:value-of select="./cda:id/@root"/>:<xsl:value-of select="./cda:id/@extension"/> -->
        <xsl:value-of select="func:hash(concat(./cda:id[1]/@root,':',./cda:id[1]/@extension))"/>  <!-- #todo multiple IDs possible -->
    </xsl:template>
    
    <!-- 2	ID der Notaufnahme
    siehe 1 - Falls es zwei Notaufnahmen gibt, haben sie ein seperates DWH oder ein gemeinsames und werden nicht getrennt ausgewertet. In beiden Fällen ist die Frage nicht wirklich relevant.
    -->
    
    <!-- 3	PatientenId im Basismodul -->
    <!-- <xsl:comment>3	PatientenId im Basismodul</xsl:comment> -->
    <xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
        <!-- <xsl:value-of select="./cda:id/@root"/>:<xsl:value-of select="./cda:id/@extension"/> -->
        <xsl:value-of select="func:hash(concat(./cda:id/@root,':',./cda:id/@extension))"/>
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
            <xsl:attribute name="concept">xxx</xsl:attribute>  <!-- #ToDo Coding -->
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
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>PLZ</xsl:attribute>
            <value>
                <!-- <xsl:attribute name="unit"></xsl:attribute> -->
                <xsl:attribute name="xsi:type">numeric</xsl:attribute>
                <xsl:value-of select="."/>
            </value>
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
        <fact>     
            <xsl:attribute name="concept"><xsl:value-of select="$LOINC-Prefix"/>75859-9</xsl:attribute>
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
            <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>
        </fact>
    </xsl:template>
    
    <!-- 7 Isolation und 8 Isolation Begründung -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4068']">
        <xsl:comment>7 Isolation / 8 Isolation Begründung</xsl:comment>
        <xsl:if test="../cda:code/@code = 'RISO'"> <!-- Reverse Isolation -->
            <fact> 
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix"/>RISO</xsl:attribute>
            </fact>
        </xsl:if>
        <xsl:if test="../cda:code/@code = 'ISO' and ../../cda:procedure/@negationInd = 'true'"> <!-- No Isolation -->
            <fact> 
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix"/>ISO:NEG</xsl:attribute>
            </fact>
        </xsl:if>
        <xsl:if test="../cda:code/@code = 'ISO' and not(../../cda:procedure/@negationInd = 'true')">
            <fact> 
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix"/>ISO</xsl:attribute>
                <xsl:call-template name="Isolationreason"/>
            </fact>       
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="Isolationreason">
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4069']">
            <modifier> 
                <xsl:attribute name="code">
                    <xsl:choose>
                        <xsl:when test="../cda:value/@code">
                            <xsl:value-of select="../cda:code/@code"/>:<xsl:value-of select="../cda:value/@code"/>
                        </xsl:when>
                        <xsl:otherwise>  
                            <xsl:value-of select="../cda:code/@code"/>:<xsl:value-of select="../cda:value/@nullFlavor"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </modifier>
        </xsl:for-each>
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
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 14 GCS verbale Antwort
    <fact concept="L:9270-0"/fact> -->
    <xsl:template match="cda:code[@code='9270-0']">
        <xsl:comment>14 Glasgow Coma Scale Verbal Response(</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>
    
    <!-- 16 GCS motorische Antwort 
    <fact concept="L:9268-4" > -->
    <xsl:template match="cda:code[@code='9268-4']">
        <xsl:comment>16 Glasgow Coma Scale Motor Response(</xsl:comment>
        <fact>
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
                    <xsl:value-of select="../cda:targetSiteCode/@code"/>
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
                    <xsl:value-of select="../cda:targetSiteCode/@code"/>
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
                <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>
            </fact>
        </xsl:for-each>
    </xsl:template>
    
    <!-- 36 Beschwerden bei Vorstellung / Freitext-->
    
    <!-- 212 Symptomdauer 
    siehe 805 CEDIS-->
    
    <!-- 37 Zeitpunkt erster Arztkontakt-->
    <xsl:template match="cda:documentationOf/cda:serviceEvent/cda:performer/cda:time">
        <xsl:if test="./cda:low/@value">
            <xsl:comment>37 Zeitpunkt erster Arztkontakt</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>ZeitpunktErsterArztkontakt</xsl:attribute>
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
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>ZeitpunktTherapiebeginn</xsl:attribute>
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
        <xsl:for-each select="../cda:entry/cda:act/cda:entryRelationship">
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix"/><xsl:value-of select="./cda:observation/cda:value/@code"/></xsl:attribute>
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
        
        <xsl:if test="../cda:effectiveTime/@width">  <!-- #ToDo Nur Width ist sinnvoll/interessant, aber die CDA-Beschreibung ist anders - Berechnung aus low und Aufnahmedatum ergänzen?!-->
            <xsl:comment>212 Symptomdauer</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>Symptomdauer</xsl:attribute>
                <xsl:value-of select="../cda:effectiveTime/@width"/>
            </fact>   
        </xsl:if>
    </xsl:template>
    
    <!-- 806 multiresistente Erreger -->   <!-- #ToDo Checks für Qualifier funktionieren nicht -->
    <!-- 807 multiresistente Erreger: Erregertyp 
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4072']">
        <xsl:comment>806/807 multiresistente Erreger</xsl:comment>
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4073']">           
            <fact>
                <xsl:if test="../cda:value/cda:qualifier[/cda:name/@code='URAG']/cda:value/@code"> 
                    <xsl:attribute name="concept">
                        <xsl:value-of select="$Pathogen-Prefix"/><xsl:value-of select="../cda:value/cda:qualifier[/cda:name/@code='URAG']/cda:value/@code"/>:<xsl:value-of select="../cda:value/@code"/> 
                    </xsl:attribute>             
                </xsl:if>
                <xsl:if test="../cda:value/cda:qualifier[/cda:name/@code='URAG']/cda:value/@nullFlavor"> 
                    <xsl:attribute name="concept">
                        <xsl:value-of select="$Pathogen-Prefix"/><xsl:value-of select="../cda:value/cda:qualifier[/cda:name/@code='URAG']/cda:value/@nullFlavor"/>:<xsl:value-of select="../cda:value/@code"/> 
                    </xsl:attribute>             
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
            </fact>
        </xsl:for-each>
    </xsl:template>-->
    
    <!-- 808 Versicherungsnummer -->
    <!-- siehe 60 Versicherungsname / 771 Versicherungsträger -->
    
    <!-- 882 Uhrzeit Verlegung / Entlassung -->
    <!-- incl. 57/58 Aufnahmedatum/uhrzeit -->
    <xsl:template match="cda:componentOf/cda:encompassingEncounter/cda:effectiveTime">
        <xsl:if test="./cda:high/@value">
            <xsl:comment>882 Uhrzeit Verlegung / Entlassung</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$Verlegung-Prefix"/>ZeitpunktVerlegung</xsl:attribute> 
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
    <!-- Zusätzliches Template für visit/encounter -->
    <xsl:template name="ZeitpunktEntlassung">
        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value)"/>
    </xsl:template>
    
    <!-- Zusätzliches Template für visit/encounter -->
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
            <xsl:call-template name="templateGetConcept"/>
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
  
     
<!-- GLOBAL TEMPLATES -->
   
   
    <!-- Generic GetConcept-Functions -->
    <xsl:template name="templateGetConceptCode">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:code/@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when>  
            </xsl:choose>
            <xsl:value-of select="../cda:code/@code"/>
        </xsl:attribute>
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
        <xsl:call-template name="GetEffectiveTimes"/>
    </xsl:template>  
    
    <xsl:template name="templateGetConcept">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="./@code">
                    <xsl:choose>
                        <xsl:when test="./@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when>  
                        <xsl:when test="./@codeSystem='2.16.840.1.113883.2.60.3.5.56'"><xsl:value-of select="$Entlassung-Prefix"/></xsl:when> 
                    </xsl:choose>
                    <xsl:value-of select="./@code"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="./@nullFlavor"/> <!-- #ToDo Bei Discharge Disposition Codes gibt es keinen Code auf den man zurückverweisen kann!-->
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
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
        <xsl:if test="../cda:effectiveTime/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTimeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:low/@value"/>
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
        <xsl:if test="../cda:time/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">timeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:low/@value"/>
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
    
    
<!-- Hash Function, reduce ID length to 50, one-way pseudonym -->
    <xsl:function name="func:hash"> <!-- #todo this is not a hash :) -->
        <xsl:param name="StringValue"></xsl:param>
        <xsl:if test="$StringValue">
            <xsl:choose>
                <xsl:when test="string-length($StringValue)>50"><xsl:value-of select="substring($StringValue,1,50)"/></xsl:when>
                <xsl:otherwise><xsl:value-of select="$StringValue"/></xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>

</xsl:stylesheet>