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
        <dwh-eav xmlns="http://aktin.org/dwh-import/dwh-eav">
            <meta>
                <!-- Zeitpunkt, an dem der Export erstellt wurde bzw. Datenstand -->
                <etl strategy="replace-visit" />
                <source timestamp="2015-04-21T08:58:00" id="test"/>                
                <!-- weitere metadaten n�tig? wertebereich, datentypen, ontologie, ...? -->                
            </meta>
            <visit>   
                <patid><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole"/></patid>
                <surname>xxx</surname>
                <names>xxx</names>
                <birthdate><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime"/></birthdate>
                <sex><xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode"/></sex>
                <encounter start="2014-01-01T10:30:00" end="2014-01-05T10:30:00">XXE12345</encounter>
                <facts>
                    
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization"/>           
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime"/>
            
                    <!-- Alle Fact-Tenplates auf Body/Component/Section Ebene aufrufen -->
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section"/>

            
                </facts>
            </visit>     
        </dwh-eav>
        
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
    <xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
        <xsl:comment>3	PatientenId im Basismodul</xsl:comment>
        <eav-item concept="Patienten-ID" type="xsi:string">
            <xsl:value-of select="./cda:id/@root"/>.<xsl:value-of select="./cda:id/@extension"/>
        </eav-item>
    </xsl:template>
     -->
    <xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
            <xsl:value-of select="./cda:id/@root"/>.<xsl:value-of select="./cda:id/@extension"/>
    </xsl:template>
    
    <!-- 60 Versicherungsname -->  
    <!-- 771 Versicherungsträger -->
    
    <!-- 53 Patientenname -->
    <!-- 54 Patientenadresse (Strasse) -->
    <!-- 55 Patientenadresse (Ort) -->
    <!-- 772 Patientenadresse (PLZ) -->
    <!-- 56 Patientenadresse (Telefonnummer) -->
    
    <!-- 59 Geburtsdatum 
        HL7.TS =>  	YYYY[MM[DD]]
    <xsl:template match="cda:patient/cda:birthTime">
        <xsl:comment>59 Geburtsdatum</xsl:comment>
        <eav-item concept="Geburtsdatum" type="xsi:string">
            <xsl:value-of select="./@value"/>
        </eav-item>
    </xsl:template>
    -->
    <xsl:template match="cda:patient/cda:birthTime">
        <xsl:call-template name="ConvertDateTime_Value"></xsl:call-template>
    </xsl:template>
    
    
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
    <eav-item concept="L:21840-4" type="xsi:integer">1=männlich/2=weiblich</eav-item>
    -->
    <xsl:template match="cda:patient/cda:administrativeGenderCode">
        <!--  <xsl:comment>65 Patientengeschlecht</xsl:comment>  -->
        <xsl:value-of select="./@code"/>       
        <!--  
        <eav-item concept="L:21840-4" type="xsi:string">
            <xsl:choose>
                <xsl:when test="./@code = 'M'">
                    1
                </xsl:when>
                <xsl:when test="./@code = 'F'">
                    2
                </xsl:when>
            </xsl:choose>
        </eav-item>
        -->
    </xsl:template>
    
    <!-- 57/58 Aufnahmedatum/uhrzeit 
    <eav-item concept="S:305056002" timestamp="2014-09-07T10:40:03"/>
    -->
    <xsl:template match="cda:encompassingEncounter/cda:effectiveTime">
        <xsl:comment>57/58 Aufnahmedatum/uhrzeit</xsl:comment>
        <eav-item concept="S:305056002">
            <xsl:attribute name="timestamp">
                <xsl:value-of select="cda:ConvertDateTime('1234')"/>
            </xsl:attribute>
        </eav-item>
    </xsl:template>
    
    <!-- 5 Schwanger L:11449-6'-->
    <!-- Unterscheidung Unknown und Nicht ausgefüllt? -->
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
                <xsl:when test="../@negationInd = 'true'">ja</xsl:when>
                <xsl:when test="../@negationInd = 'false' and not (@nullFlavor = 'NI')">nein</xsl:when>
                <xsl:when test="../@negationInd = 'false' and  @nullFlavor = 'NI'">unbekannt</xsl:when>
            </xsl:choose>
        </eav-item>
    </xsl:template>
    
    <!-- 7 Isolation -->
    <!-- CDA entspricht überhaupt nicht dem Dokumentationsbogen.... (Frage Isolation und Multires. Keim bzw. 8 Isolation Begründung)
        -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4068']">
        <xsl:comment>7 Isolation</xsl:comment>
        <eav-item concept="Isolation" type="xsi:string">
            <xsl:choose>
                <xsl:when test="../@negationInd = 'true'">Nein / Isolation not necessary</xsl:when> <!-- CODING! -->
                <xsl:when test="../cda:code/@code = '275829005'">Umkehriso / Reverse isolation</xsl:when>
                <xsl:when test="../cda:code/@code = '170497006'">Isolation necessary (Werte vgl. Ioslation Reason)</xsl:when>
            </xsl:choose>
        </eav-item>
        <xsl:if test="../cda:code/@code = '170497006'">
            <xsl:call-template name="Isolationreason"/>
        </xsl:if>
    </xsl:template>
    
    
    <!-- 8 Isolation Begründung 
    vgl. 7 Isolation -->
    <!--
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4069']">
        <xsl:comment>8 Isolation Begründung</xsl:comment>
        <eav-item concept="Isolation Reason" type="xsi:string">
            <xsl:choose>
                <xsl:when test="../../../cda:code/@code = '170497006'">
                    <xsl:value-of select="../cda:value/@code"/>
                </xsl:when>
            </xsl:choose>
        </eav-item>
        -->
    <xsl:template name="Isolationreason">
        <eav-group concept="Isolation Reason">
                <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4069']">
                    <value>
                        <xsl:attribute name="modifier">
                            <xsl:value-of select="../cda:value/@code"/>
                        </xsl:attribute>
                    </value>
                </xsl:for-each>
        </eav-group>
    </xsl:template>
   
    <!-- 9 Atemfrequenz
    <eav-item concept="L:9279-1" type="xsi:integer">0</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4030']">
        <xsl:comment>9 Atemfrequenz</xsl:comment>
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
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
        <eav-item type="xsi:decimal">
            <xsl:call-template name="templateGetConceptCode"/>
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
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
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
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 13 GCS Augenöffnen 
    <eav-item type="xsi:integer" concept="L:9267-6" unit="{score}">4</eav-item> -->
    <xsl:template match="cda:code[@code='9267-6']">
        <xsl:comment>13 Glasgow Coma Scale Eye Opening(</xsl:comment>
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 14 GCS verbale Antwort
    <eav-item type="xsi:integer" concept="L:9270-0" unit="{score}">3</eav-item> -->
    <xsl:template match="cda:code[@code='9270-0']">
        <xsl:comment>14 Glasgow Coma Scale Verbal Response(</xsl:comment>
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 16 GCS motorische Antwort 
    <eav-item type="xsi:integer" concept="L:9268-4" unit="{score}">2</eav-item> -->
    <xsl:template match="cda:code[@code='9268-4']">
        <xsl:comment>16 Glasgow Coma Scale Motor Response(</xsl:comment>
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 17 GCS Summe 
    <eav-item type="xsi:integer" concept="L:9269-2" unit="{score}">9</eav-item> -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4034']">
        <xsl:comment>17 Glasgow Coma Scale(</xsl:comment>
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:attribute name="unit">                
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- 18 Pupillenweite bei Aufnahme in der Notaufnahme (links)
    <eav-group concept="S:363953003">   size of pupil
        <value modifier="362503005"/> left eye
        <value modifier="362502000"/> right eye
        <value modifier="362508001"/> both eyes
        <value modifier="37125009"/> wide pupil
        <value modifier="420335002"/> medium sized pupil 
        <value modifier="301939004"/> small pupil 
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4046']">
        <xsl:comment>18 Pupillenweite bei Aufnahme in der Notaufnahme</xsl:comment>
        <eav-group>
            <xsl:call-template name="templateGetConceptCode"/>
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
        
     <!-- 19 Pupillenreaktion
    <eav-group concept="S:271733001">   Pupil reaction
        <value modifier="362503005"/> left eye
        <value modifier="362502000"/> right eye
        <value modifier="362508001"/> both eyes
        <value modifier="301949001"/> Brisk pupil near reaction
        <value modifier="301948009"/> Delayed pupil near reaction
        <value modifier="13353005"/> 	Absent pupil reaction
     </eav-group>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4047']">
        <xsl:comment>19 Pupillenreaktion</xsl:comment>
        <eav-group>
            <xsl:call-template name="templateGetConceptCode"/>
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
        <eav-item type="xsi:decimal">
            <xsl:call-template name="templateGetConceptCode"/>
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
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:attribute name="unit">
                <xsl:value-of select="../cda:value/@unit"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@value"/>
        </eav-item>
    </xsl:template>
    
    <!-- Diagnostik xxx @negationInd auswerten? Wie soll ja/nein abgebildet werden?-->
    <!-- Diagnostik xxx opB >> 373573001 	Clinical finding present (situation) = opB unchecked; Clinical finding absent (situation) = opB checked-->
    <!-- Diagnostik xxx Zeitpunkt-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3050']">
        <xsl:for-each select="../cda:entry/cda:observation">
            <xsl:comment><xsl:value-of select="./cda:code/@displayName"/></xsl:comment>
            <eav-item type="xsi:string">
                <xsl:attribute name="concept">S:<xsl:value-of select="./cda:code/@code"/>  <!-- for-each auf der falschen Ebene für Standardroutine templateGetConceptCode-->
                </xsl:attribute>
                <xsl:attribute name="start">
                    <xsl:value-of select="./cda:effectiveTime/@value"/>
                </xsl:attribute>
                <xsl:value-of select="./cda:value/@code"/>
            </eav-item>
        </xsl:for-each>
    </xsl:template>
    
    <!-- 42 Diagnosen-->
    <!-- Reihenfolge muss bei Diagnosen beachtet/codiert werden 
    <eav-group concept="L:11301-9">
    <value modifier="Xnn.n"/>  ICD-CODE
    </eav-group>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3055']">
        <xsl:comment>42 Diagnosen</xsl:comment>
        <eav-group>
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:for-each select="../cda:entry/cda:act/cda:entryRelationship">
                <value>
                    <xsl:attribute name="modifier">
                        <xsl:value-of select="./cda:observation/cda:value/@code"/>
                    </xsl:attribute>
                </value>
            </xsl:for-each>
        </eav-group>     
    </xsl:template>
                
    <!-- 22 Zuweisung
    <eav-item type="xsi:string" concept="L:11293-8">700232004</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3046']">
        <xsl:comment>22 Zuweisung</xsl:comment>
        <eav-item  type="xsi:string">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code"/>
        </eav-item>
    </xsl:template>
    
    <!-- 62 Zuweiser -->
    <!-- Auf dem Bogen nicht vorgesehen -->
    
    <!-- 884 Transportmittel 
    <eav-item type="xsi:string" concept="L:11459-5">83887000</eav-item>
    -->
    <!-- LOINC Code passend? In Terminologie-Tabelle nicht aufgeführt. Valueset abweichend -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3045']">
        <xsl:comment>884 Transportmittel</xsl:comment>
        <eav-item type="xsi:string">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:value-of select="../cda:entry/cda:observation/cda:value/@code"/>
        </eav-item>
    </xsl:template>
    
    <!-- 804 verwendetes Ersteinschätzungssystem 
    <eav-item type="xsi:string" concept="Ersteinschätzungssystem">1.2.276.0.76.5.438</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3049']">
        <xsl:comment>804 verwendetes Ersteinschätzungssystem</xsl:comment>
        <eav-item concept="Ersteinschätzungssystem" type="xsi:string">
            <xsl:value-of select="../cda:entry/cda:observation/cda:value/@codeSystem"/>
        </eav-item>
    </xsl:template>
    
    <!-- 23 Ersteinschätzung -->
    <!-- incl. 770 Zeitpunkt der Ersteinschätzung
    <eav-item type="xsi:integer" concept="S:273887006" start="201501171603">4</eav-item>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4042']">
        <xsl:comment>23 Ersteinschätzung/770 Zeitpunkt der Ersteinschätzung</xsl:comment>
        <eav-item type="xsi:integer">
            <xsl:call-template name="templateGetConceptCode"/>
            <xsl:attribute name="start">
                <xsl:value-of select="../cda:effectiveTime/cda:low/@value"/>
            </xsl:attribute>
            <xsl:value-of select="../cda:value/@code"/>
        </eav-item>
    </xsl:template>
    
    
    
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
    
    
    <!-- Global Templates -->
        
    <xsl:template name="templateGetConceptCode">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:code/@codeSystem='2.16.840.1.113883.6.1'">L:</xsl:when>  
                <xsl:when test="../cda:code/@codeSystem='2.16.840.1.113883.6.96'">S:</xsl:when>
            </xsl:choose>
            <xsl:value-of select="../cda:code/@code"/>
        </xsl:attribute>
    </xsl:template>   
    
    <!-- deprecated --> 
    <xsl:template match="@value|node()">
        <xsl:choose>
            <xsl:when test="parent::cda:effectiveTime">
                <xsl:call-template name="ConvertDateTime_Value"></xsl:call-template>
            </xsl:when>
            <xsl:when test="parent::cda:low">
                <xsl:call-template name="ConvertDateTime_Value"></xsl:call-template>
            </xsl:when>
            <xsl:when test="parent::cda:high">
                <xsl:call-template name="ConvertDateTime_Value"></xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- ??? -->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:function name="cda:ConvertDateTime">
        <xsl:param name="DateTimeString"></xsl:param>
        
        <xsl:value-of select="$DateTimeString"/>
        <!--  
        <xsl:choose>
            <xsl:when test="string-length($DateTimeString) = 4"><xsl:value-of select="$DateTimeString"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) = 6"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) = 8"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) = 12"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/></xsl:when>
            <xsl:when test="string-length($DateTimeString) > 13"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/>:<xsl:value-of select="substring($DateTimeString,13,2)"/></xsl:when>
            <xsl:otherwise>XSL-Transformation Error: Datetime Format not recognized</xsl:otherwise>
        </xsl:choose>
        -->
    </xsl:function>
            
    <!-- deprecated --> 
    <xsl:template name="ConvertDateTime_Value">
        <xsl:choose>
            <xsl:when test="string-length(./@value) = 4"><xsl:value-of select="./@value"/></xsl:when>
            <xsl:when test="string-length(./@value) = 6"><xsl:value-of select="substring(./@value,1,4)"/>-<xsl:value-of select="substring(./@value,5,2)"/></xsl:when>
            <xsl:when test="string-length(./@value) = 8"><xsl:value-of select="substring(./@value,1,4)"/>-<xsl:value-of select="substring(./@value,5,2)"/>-<xsl:value-of select="substring(./@value,7,2)"/></xsl:when>
            <xsl:when test="string-length(./@value) = 12"><xsl:value-of select="substring(./@value,1,4)"/>-<xsl:value-of select="substring(./@value,5,2)"/>-<xsl:value-of select="substring(./@value,7,2)"/>T<xsl:value-of select="substring(./@value,9,2)"/>:<xsl:value-of select="substring(./@value,11,2)"/></xsl:when>
            <xsl:when test="string-length(./@value) > 13"><xsl:value-of select="substring(./@value,1,4)"/>-<xsl:value-of select="substring(./@value,5,2)"/>-<xsl:value-of select="substring(./@value,7,2)"/>T<xsl:value-of select="substring(./@value,9,2)"/>:<xsl:value-of select="substring(./@value,11,2)"/>:<xsl:value-of select="substring(./@value,13,2)"/></xsl:when>
            <xsl:otherwise>XSL-Transformation Error: Datetime Format not recognized</xsl:otherwise>
        </xsl:choose>
    </xsl:template> 
        
        
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