<?xml version="1.0" encoding="UTF-8"?>

<!-- java -classpath C:\ProgramData\Oracle\Java\javaclasses\xalan.jar org.apache.xalan.xslt.Process -in basismodul-beispiel-storyboard01_complete02.xml -xsl dwh-eav-test-VT.xsl -out dwh-eav-TESTOUT.xml -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns:cda="urn:hl7-org:v3">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <patient-visit xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:noNamespaceSchemaLocation="dwh-eav.xsd">
            <idat>
                <patid>
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole"/>
                </patid>
                <visit>xxx</visit>
            </idat>
            <last-modified>xxx</last-modified>
            
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4045']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4043']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:substanceAdministration/cda:templateId[@root='1.2.276.0.76.10.4044']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4030']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4031']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4032']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4033']"/>
           
            <!-- Pfad wird geändert! -->
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:component/cda:observation/cda:code[@code='9267-6']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:component/cda:observation/cda:code[@code='9270-0']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:component/cda:observation/cda:code[@code='9268-4']"/>
            
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4034']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4046']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4047']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4035']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4036']"/>            
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.276.0.76.10.3045']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.276.0.76.10.3046']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.276.0.76.10.3049']"/>
            <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4042']"/>
            
            
        </patient-visit>
    </xsl:template>
    
    <xsl:template match="text()"/>   <!-- Match plain text nodes and do nothing, i.e. mask default output for text nodes     -->
    
    <!-- 1	ID des Krankenhauses 
    ???
    -->
    <xsl:template match="cda:representedCustodianOrganization">
        <xsl:comment>1	ID des Krankenhauses</xsl:comment>
        <eav-item concept="Krankenhaus-ID" type="xsi:string">
            <xsl:value-of select="./cda:id/@root"/>.<xsl:value-of select="./cda:id/@extension"/>
        </eav-item>
    </xsl:template>
    
    <!-- 2	ID der Notaufnahme
    ???
    -->
    
    <!-- 3	PatientenId im Basismodul 
    <eav-item concept="L:21866-9" type="xsi:string">XX23412XXX</eav-item>
    -->
    <xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
        <xsl:comment>3	PatientenId im Basismodul</xsl:comment>
        <eav-item concept="Patienten-ID" type="xsi:string">
            <xsl:value-of select="./cda:id/@root"/>.<xsl:value-of select="./cda:id/@extension"/>
        </eav-item>
    </xsl:template>
    
    <!-- 60 Versicherungsname -->  
    <!-- 771 Versicherungsträger -->
    
    <!-- 53 Patientenname -->
    <!-- 54 Patientenadresse (Strasse) -->
    <!-- 55 Patientenadresse (Ort) -->
    <!-- 772 Patientenadresse (PLZ) -->
    <!-- 56 Patientenadresse (Telefonnummer) -->
    
    <!-- 59 Geburtsdatum -->
    
    <!-- 114 Rankin Scale (0..6) 
    <eav-item concept="L:75859-9" type="xsi:integer">0</eav-item>
    <templateId root="1.2.276.0.76.10.4045"/>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4045']">
        <xsl:comment>114 Rankin Scale</xsl:comment>
        <eav-item concept="L:75859-9" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 65 Patientengeschlecht
    <eav-item concept="" type="xsi:integer">1=männlich/2=weiblich</eav-item>
    -->
    <xsl:template match="cda:patient/cda:administrativeGenderCode">
        <xsl:comment>65 Patientengeschlecht</xsl:comment>
        <eav-item concept="L:21840-4" type="xsi:integer">
            <xsl:choose>
                <xsl:when test="./@code = 'M'">
                    1
                </xsl:when>
                <xsl:when test="./@code = 'F'">
                    2
                </xsl:when>
            </xsl:choose>
        </eav-item>
    </xsl:template>
    
    <!-- 57/58 Aufnahmedatum/uhrzeit 
    <eav-item concept="S:305056002" timestamp="2014-09-07T10:40:03"/>
    -->
    <xsl:template match="cda:encompassingEncounter/cda:effectiveTime">
        <xsl:comment>57/58 Aufnahmedatum/uhrzeit</xsl:comment>
        <eav-item concept="S:305056002">
            <xsl:attribute name="timestamp">
                <xsl:value-of select="./cda:low/@value"/>
            </xsl:attribute>
        </eav-item>
    </xsl:template>
    
    <!-- 5 Schwanger L:11449-6'-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4043']">
        <xsl:comment>5 Schwanger</xsl:comment>
        <eav-item concept="L:11449-6" type="xsi:string">
            <xsl:value-of select="../cda:value/@code"/>
        </eav-item>
    </xsl:template>
    
    <!-- 6 Tetanusschutz L:11458-7-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4044']">
        <xsl:comment>6 Tetanusschutz</xsl:comment>
        <eav-item concept="L:11458-7" type="xsi:string">
            <xsl:choose>
                <xsl:when test="../@negationInd = 'true'">
                    true
                </xsl:when>
                <xsl:when test="../@negationInd = 'false' and not (@nullFlavor = 'NI')">
                    false
                </xsl:when>
                <xsl:when test="../@negationInd = 'false' and  @nullFlavor = 'NI'">
                    unkown
                </xsl:when>
            </xsl:choose>
        </eav-item>
    </xsl:template>
    
    <!-- 7 Isolation -->
    <!-- CDA entspricht überhaupt nicht dem Dokumentationsbogen.... (Frage Isolation und Multires. Keim bzw. 8 Isolation Begründung)
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4068']">
        <xsl:comment>7 Isolation</xsl:comment>
        <eav-item concept="Isolation" type="xsi:string">
            <xsl:value-of select="../cda:code/@code"/>
        </eav-item>
    </xsl:template>
    -->
    
    <!-- 8 Isolation Begründung 
    vgl. 7 Isolation -->
    
    <!-- 9 Atemfrequenz
    <eav-item concept="L:9279-1" type="xsi:integer">0</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4030']">
        <xsl:comment>9 Atemfrequenz</xsl:comment>
        <eav-item concept="L:9279-1" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 10 Sauerstoffsättigung 59408-5
    <eav-item concept="L:59408-5" type="xsi:integer">0</eav-item>
    LOINC Code ist im CDA anders gewählt
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4031']">
        <xsl:comment>10 Sauerstoffsättigung</xsl:comment>
        <eav-item concept="L:59408-5" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 11 Systolischer Blutdruck 8480-6
    <eav-item concept="L:8480-6" type="xsi:integer">0</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4032']">
        <xsl:comment>11 Systolischer Blutdruck</xsl:comment>
        <eav-item concept="L:8480-6" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 12 Herzfrequenz 8867-4
    <eav-item concept="L:8867-4" type="xsi:integer">0</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4033']">
        <xsl:comment>12 Herzfrequenz</xsl:comment>
        <eav-item concept="L:8867-4" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 13 GCS Augenöffnen -->    
    <xsl:template match="cda:code[@code='9267-6']">
        <xsl:comment>13 Glasgow Coma Scale Eye Opening(</xsl:comment>
        <eav-item concept="L:9267-6" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 14 GCS verbale Antwort -->
    <xsl:template match="cda:code[@code='9270-0']">
        <xsl:comment>14 Glasgow Coma Scale Verbal Response(</xsl:comment>
        <eav-item concept="L:9270-0" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 16 GCS motorische Antwort -->
    <xsl:template match="cda:code[@code='9268-4']">
        <xsl:comment>16 Glasgow Coma Scale Motor Response(</xsl:comment>
        <eav-item concept="L:9268-4" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 17 GCS Summe -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4034']">
        <xsl:comment>17 Glasgow Coma Scale(</xsl:comment>
        <eav-item concept="L:9269-2" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 18 Pupillenweite bei Aufnahme in der Notaufnahme (links)
    <eav-group concept="246095009" timestamp="xxx">   condition of pupil
        <value modifier="8966001"/> left eye
        

        <value modifier="408094002"/> no value 
        <value modifier="37125009"/> wide pupil
        <value modifier="420335002"/> medium sized pupil 
        <value modifier="301939004"/> small pupil 
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4046']">
        <xsl:comment>18 Pupillenweite bei Aufnahme in der Notaufnahme</xsl:comment>
        <eav-group concept="S:363953003" timestamp="xxx">
            <value>
                <xsl:attribute name="modifier">
                    <xsl:value-of select="../cda:value/@code"/>
                </xsl:attribute>
            </value>
            <value>
                <xsl:attribute name="modifier">
                    <xsl:value-of select="../cda:targetSiteCode/@code"/>
                </xsl:attribute>
            </value>          
        </eav-group>
    </xsl:template>
        
     <!-- 19 Pupillenreaktion-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4047']">
        <xsl:comment>19 Pupillenreaktion</xsl:comment>
        <eav-group concept="S:271733001" timestamp="xxx">
            <value>
                <xsl:attribute name="modifier">
                    <xsl:value-of select="../cda:value/@code"/>
                </xsl:attribute>
            </value>
            <value>
                <xsl:attribute name="modifier">
                    <xsl:value-of select="../cda:targetSiteCode/@code"/>
                </xsl:attribute>
            </value>          
        </eav-group>
    </xsl:template>

                    
     <!-- 20 Körperkerntemperatur
     <eav-item concept="S:276885007" type="xsi:decimal">40.00</eav-item>
     -->  
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4035']">
        <xsl:comment>20 Körperkerntemperatur</xsl:comment>
        <eav-item concept="L:8329-5" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
                   
    <!-- 21 Schmerz bei Aufnahme, loinc-schmerzskala 0-10 ggf. Answer list LL2335-9            
    <eav-item concept="L:72514-3" type="xsi:integer">0</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4036']">
        <xsl:comment>21 Schmerz bei Aufnahme</xsl:comment>
        <eav-item concept="L:72514-3" type="xsi:integer">
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
                
    <!-- 22 Zuweisung -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3046']">
        <xsl:comment>22 Zuweisung</xsl:comment>
        <eav-item concept="L:11293-8" type="xsi:integer">
            <xsl:value-of select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code"/>
        </eav-item>
    </xsl:template>
    
    <!-- 62 Zuweiser -->
    <!-- Auf dem Bogen nicht vorgesehen -->
    
    <!-- 884 Transportmittel -->
    <!-- LOINC Code passend? In Terminologie-Tabelle nicht aufgeführt. Valueset abweichend -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3045']">
        <xsl:comment>884 Transportmittel</xsl:comment>
        <eav-item concept="L:11459-5" type="xsi:integer">
            <xsl:value-of select="../cda:entry/cda:observation/cda:value/@code"/>
        </eav-item>
    </xsl:template>
    
        
    
    <!-- 804 verwendetes Ersteinschätzungssystem -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3049']">
        <xsl:comment>804 verwendetes Ersteinschätzungssystem</xsl:comment>
        <eav-item concept="Ersteinschätzungssystem" type="xsi:integer">
            <xsl:value-of select="../cda:entry/cda:observation/cda:value/@codeSystem"/>
        </eav-item>
    </xsl:template>
    
    <!-- 23 Ersteinschätzung -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4042']">
        <xsl:comment>23 Ersteinschätzung</xsl:comment>
        <eav-item concept="L:11283-9" type="xsi:integer">
            <xsl:value-of select="../cda:value/@code"/>
        </eav-item>
    </xsl:template>
    
    <!-- 770 Zeitpunkt der Ersteinschätzung -->
    
    <!-- 24 Diagnostik -->
    
    <!-- 25 Modul Überwachung -->
    <!-- 26 Modul Trauma -->
    <!-- 27 Modul Anästhesie -->
    <!-- 28 Modul Konsil -->
    <!-- 29 Modul Präklinik -->
    <!-- 30 Modul Chargendokumentation -->
    <!-- 767 Modul Neurologie -->
    <!-- Zusatz-Modul ja/nein nicht explizit abgebildet im Basismodul -->
    
    <!-- 31 Allergie 
    ja/nein => Umsetzung?
    Falls Eintrag "48765-2" vorhanden "JA" annehmen? Dies scheint nicht 100%ig kodiert zu sein-->
    
        
    <!--  
    <xsl:template match="*">
        <dl><dt>Untranslated node:
            <strong><xsl:value-of select="name()"/></strong></dt>
            <dd>
                <xsl:copy>
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="node()"/>
                </xsl:copy>
            </dd>
        </dl>
    </xsl:template>
    <xsl:template match="text()|@*">
        Contents: <xsl:value-of select="."/>
    </xsl:template>
 -->           
        
</xsl:stylesheet>