<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../../aktin-runtime-develop/aktin-basism.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>

<!-- java -classpath C:\ProgramData\Oracle\Java\javaclasses\xalan.jar org.apache.xalan.xslt.Process -in basismodul-beispiel-storyboard01_complete02.xml -xsl dwh-eav-test-VT.xsl -out dwh-eav-TESTOUT.xml -->
    
<xsl:stylesheet 
    xmlns="urn:hl7-org:v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:sdtc="urn:hl7-org:sdtc"
    xsi:schemaLocation="urn:hl7-org:v3 CDA.xsd"
    
    exclude-result-prefixes="xsl xs cda eav "
    
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:cda="urn:hl7-org:v3"
    xmlns:eav="http://sekmi.de/histream/dwh-eav">


    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    

<!-- MAIN Template -->   
    
    <!-- #ToDo z.T. sind noch "optionale" TypeCodes in den 1..M Templates . Entweder mit abbilden oder einheitliches Vorgehen (immer weglassen oder immer hinschreiben - inhaltlich egal. Evtl. ändern sich dadurch die Dokumente -> Strip-Transformation für Vergleich?! --> 

    <xsl:template match="/">
        
        <ClinicalDocument>                     
            <!-- Realmcode (fix) -->
            <realmCode code="DE"/>
            <!-- Type Id (fix) -->
            <typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040"/>
            <!-- Template Id (fix) -->
            <templateId root="1.2.276.0.76.10.1015"/>
            <!-- Identifikation des Dokuments 
            <id root="1.2.276.0.76.4.17.9814184919" extension="14025fda-3f25-4c64-8883-4f7e6cabc0b6"/> -->
            <xsl:call-template name="ClinicalDocument.id"/>
            <!-- Fixer Dokumententype-Code -->
            <code code="34878-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Emergency medicine Note"/>
            <!-- <title>CDATitle</title> -->
            <xsl:call-template name="ClinicalDocument.title"/>
            <!-- Datum und Zeit der Erstellung 
            <effectiveTime value="20150117163300"/> -->
            <xsl:call-template name="ClinicalDocument.effectiveTime"/>
            <!-- Vertraulichkeitsstufe
            <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25"/> -->
            <xsl:call-template name="ClinicalDocument.confidentialityCode"/>
            <!-- Sprache und Länderkennung 
            <languageCode code="de-DE"/> -->
            <xsl:call-template name="ClinicalDocument.languageCode"/>
            <!-- Set-ID und Versionsnummer des Dokuments 
            <setId root="1.2.276.0.76.4.17.9814184919" extension="0ff0f2d6-ddc2-4300-a5e6-b0aecd1a7dcf"/>
            <versionNumber value="1"/> -->
            <xsl:call-template name="ClinicalDocument.setId"/>
            
            <!-- Patient -->
            <recordTarget typeCode="RCT" contextControlCode="OP">
                <patientRole classCode="PAT">
                    <xsl:call-template name="ClinicalDocument.PatientDetails"/>
                </patientRole>
            </recordTarget>
            
            <!-- Author -->
            <xsl:call-template name="ClinicalDocument.Author"/>
    
            <!-- Verwaltungsorganisation des Dokuments -->
            <custodian>
                <assignedCustodian>
                    <xsl:call-template name="ClinicalDocument.representedCustodianOrganization"/>
                </assignedCustodian>
            </custodian>
            
            <!-- informationRecipient -->
            <xsl:call-template name="ClinicalDocument.informationRecipient"/>
            
            <!-- informationRecipient -->
            <xsl:call-template name="ClinicalDocument.participant"/>
            
            <!-- Aufnahme -->
            <documentationOf typeCode="DOC">
                <serviceEvent classCode="ACT" moodCode="EVN">
                    <effectiveTime>
                        <!-- Aufnahmedatum/Uhrzeit --> 
                        <xsl:call-template name="Zeitpunkt.Aufnahme"/>
                        <!-- Zeitpunkt Übergabe/Entlassung #ToDo ACHTUNG soll an dieser Stelle entfallen, Template wird aktuell 2x verwendet-->
                        <xsl:call-template name="Zeitpunkt.Entlassung"/>
                    </effectiveTime>
                    <performer typeCode="PRF">
                        <time>
                            <!-- Begin des Arztkontaktes -->
                            <xsl:call-template name="Zeitpunkt.Arztkontakt"/>
                            <!-- Ende des Arztkontaktes #ToDo Prüfen ob es entfernt wurde, ggf. NullFlavor anpassen -->
                            <high nullFlavor="NA"/>   
                        </time>
                        <assignedEntity classCode="ASSIGNED">
                            <id nullFlavor="NA"/>
                        </assignedEntity>
                    </performer>
                </serviceEvent>
            </documentationOf>
            
            <!-- Patientenkontakt -->
            <componentOf>
                <encompassingEncounter classCode="ENC" moodCode="EVN">
                    <effectiveTime>
                        <!-- Start Patientenkontakt -->
                        <xsl:call-template name="Zeitpunkt.Therapiebeginn"/>
                        <!-- Ende Patientenkontakt = Zeitpunkt der Verlegung/Entlassung -->
                        <xsl:call-template name="Zeitpunkt.Entlassung"/>
                    </effectiveTime>
                    <!-- Entlassung des Patienten mit Entlassungsgrund -->
                    <xsl:call-template name="dischargeDispositionCode"/>
                </encompassingEncounter>
            </componentOf>
                 
            <component>
                <structuredBody>
                    <xsl:call-template name="Section.Transportmittel"/>
                    <xsl:call-template name="Section.Zuweisung"/>
                    <xsl:call-template name="Section.Notfallanamnese"/>
                    <xsl:call-template name="Section.Beschwerden"/>
                    <xsl:call-template name="Section.Basisinformationen"/>
                    <xsl:call-template name="Section.Vitalparameter"/>
                    <xsl:call-template name="Section.Diagnostik"/>
                    <xsl:call-template name="Section.Allergien"/>
                    <xsl:call-template name="Section.Befunde"/>
                    <xsl:call-template name="Section.Abschlussdiagnosen"/>
                    <xsl:call-template name="Section.Ersteinschaetzung"/>
                    <xsl:call-template name="Section.Weiterbehandler"/>
                    <xsl:call-template name="Section.Zusatzmodule"/>
                </structuredBody>
            </component>
        </ClinicalDocument>

    </xsl:template>
    
    
    
<!-- COMPONENT Templates -->    
    
    <!-- ClinicalDocument-ID #ToDo --> 
    <xsl:template name="ClinicalDocument.id">
        <id root="1.2.276.0.76.4.17.9814184919" extension="14025fda-3f25-4c64-8883-4f7e6cabc0b6"/>
    </xsl:template>  
    
    <!-- ClinicalDocument Title --> 
    <xsl:template name="ClinicalDocument.title">
        <title>CDATitle</title> 
    </xsl:template>  
    
    <!-- Datum und Zeit der Erstellung #ToDo -->
    <xsl:template name="ClinicalDocument.effectiveTime">
        <effectiveTime value="20150117163300"/>
    </xsl:template>  
    
    <!-- Vertraulichkeitsstufe -->
    <xsl:template name="ClinicalDocument.confidentialityCode">
        <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25"/>
    </xsl:template> 
    
    <!-- Sprache und Länderkennung -->
    <xsl:template name="ClinicalDocument.languageCode">
        <languageCode code="de-DE"/>
    </xsl:template> 
    
    <!-- Set-ID und Versionsnummer des Dokuments #ToDo  WICHTIG - Identifier "Fallnummer" -->
    <xsl:template name="ClinicalDocument.setId">
        <setId root="1.2.276.0.76.4.17.9814184919" extension="0ff0f2d6-ddc2-4300-a5e6-b0aecd1a7dcf"/>
        <versionNumber value="1"/>
    </xsl:template> 

    <!-- PatientDetails #ToDo  weiter zerlegen -->
    <xsl:template name="ClinicalDocument.PatientDetails"> 
        <!-- Identifikation -->
        <id extension="1234567890" root="1.2.276.0.76.4.8"/>
        <!-- Adresse -->
        <addr use="WP">
            <houseNumber>1050</houseNumber>
            <direction>W</direction>
            <streetName>Wishard Blvd</streetName>
            <additionalLocator>RG 5th floor</additionalLocator>
            <city>Indianapolis</city>
            <state>IN</state>
            <postalCode>46240</postalCode>
        </addr>        
        <telecom use="H" value="tel:+43.1.40400"/>
        <telecom use="MC" value="tel:+43.664.1234567"/>
        <telecom value="mailto:herberthannes.mustermann@provider.de"/>
        <patient classCode="PSN" determinerCode="INSTANCE">
            <!-- Name -->           
            <name>
                <given>Timo</given>
                <family>Kicker</family>
            </name>
            <!-- Geschlecht -->
            <administrativeGenderCode code="M" codeSystem="2.16.840.1.113883.5.1"/>
            <!-- Geburtsdatum -->
            <birthTime value="19960531"/>
        </patient>
    </xsl:template> 
 
    <!-- Author #ToDo -->
    <xsl:template name="ClinicalDocument.Author"> 
        <author typeCode="AUT" contextControlCode="OP">
            <time value="20150117160900"/>
            <assignedAuthor classCode="ASSIGNED">
                <id root="1.2.276.0.76.3.2.123456789"/>
                <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                    <name>
                        <prefix>Dr. med. </prefix>
                        <given>Martin</given>
                        <family>Regensburger</family>
                    </name>
                </assignedPerson>
                <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id root="1.2.276.0.76.4.17" extension="9814184919"/>
                    <name>Städtisches Klinikum München GmbH</name>
                </representedOrganization>
            </assignedAuthor>
        </author>
    </xsl:template> 
 
    <!-- representedCustodianOrganization #ToDo -->
    <xsl:template name="ClinicalDocument.representedCustodianOrganization"> 
        <representedCustodianOrganization>
            <id root="1.2.276.0.76.4.17" extension="9814184919"/>
            <!-- &Complete Zweite ID eingefügt -->
            <id root="1.2.276.0.76.4.17" extension="9814184920"/>
            <name>Städtisches Klinikum München GmbH</name>
            <telecom use="H" value="tel:+43.1.40400"/>
            <addr use="WP">
                <streetName>Wishard Blvd</streetName>
                <city>Indianapolis</city>
                <postalCode>46240</postalCode>
            </addr>
        </representedCustodianOrganization>
    </xsl:template> 
    
    <!-- informationRecipient #ToDo Achtung 0..N + 1..N aus informationRecipient/receivedOrganization, keine relevante Information, daher zunächt auskommentiert -->
    <xsl:template name="ClinicalDocument.informationRecipient"> 
        <!--
        <informationRecipient typeCode="PRCP">
            <intendedRecipient>
                <id extension="4736437" root="2.16.840.1.113883.3.933"/>
                <informationRecipient>
                    <name>
                        <prefix>Dr.med.</prefix>
                        <given>Kai</given>
                        <family>Heitmann</family>
                    </name>
                </informationRecipient>
                <receivedOrganization>
                    <name>Heitmann CS</name>
                    <telecom use="WP" value="fax:0247365746"/>
                    <addr>
                        <streetAddressLine>Mühlenweg 1a</streetAddressLine>
                        <houseNumber>1a</houseNumber>
                        <postalCode>52152</postalCode>
                        <city>Simmerath</city> 
                    </addr>    
                </receivedOrganization>  
            </intendedRecipient>
        </informationRecipient> -->
    </xsl:template> 
    
    <!-- Participant #ToDo -->
    <xsl:template name="ClinicalDocument.participant"> 
      <participant typeCode="HLD">
          <templateId root="1.2.276.0.76.10.2022"/>        
          <time>
              <high value="20131231"/>  <!-- Hier muss immer ein Quartalsende angegeben (MM/JJ) => YYYYMMDD. -->
          </time>
          <associatedEntity classCode="POLHOLD">
              <!-- eGK Nummer -->
              <id extension="A123456789" root="1.2.276.0.76.4.8"/>
              <!-- Versicherungsnummer -->
              <id extension="123456789" root="1.2.276.0.76.3.1.131.1.4.3.9999.9999.999955"/>
              <associatedPerson>
                  <name>
                      <given>Fred</given>
                      <family>Mustermann</family>
                  </name>
              </associatedPerson>
              <scopingOrganization>
                  <!-- IK-NR -->
                  <id extension="987654321" root="1.2.276.0.76.4.5"/>
                  <!-- VK-NR -->
                  <id extension="54321" root="1.2.276.0.76.4.7"/>
                  <name>AOK Süd-Ostwestfalen Nord</name>
              </scopingOrganization>
          </associatedEntity>
      </participant>
    </xsl:template> 
    
    <!-- Aufnahmedatum/Uhrzeit #ToDo -->   
    <xsl:template name="Zeitpunkt.Aufnahme">
        <low value="20150117160300"/>
    </xsl:template> 
    
    <!-- Zeitpunkt Übergabe/Entlassung #ToDo -->
    <xsl:template name="Zeitpunkt.Entlassung">
        <high value="20150117173500"/>
    </xsl:template> 

    <!-- Begin des Arztkontaktes #ToDo -->
    <xsl:template name="Zeitpunkt.Arztkontakt">
        <low value="201501171632"/>
    </xsl:template> 
    
    <!-- Start Therapiebeginn #ToDo -->
    <xsl:template name="Zeitpunkt.Therapiebeginn ">
        <low value="201501171603"/>
    </xsl:template> 
    
    <!-- Entlassung 0..1 R #ToDo   XXXXXXXXXXXXXX  foreach -->
    <xsl:template name="dischargeDispositionCode">
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.2036']"> 
            <dischargeDispositionCode>
                  <xsl:call-template name="templateSetConceptValues">
                    <xsl:with-param name="templateId">1.2.276.0.76.10.2036</xsl:with-param>
                </xsl:call-template>
            </dischargeDispositionCode>
        </xsl:if>
    </xsl:template> 
    
    <!-- Transportmittel -->
    <xsl:template name="Section.Transportmittel">
        <component typeCode="COMP" contextConductionInd="true">     
            <section classCode="DOCSECT">
                <templateId root="1.2.276.0.76.10.3045"/>
                <code code="11459-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Transport mode"/>
                <title>Transportmittel</title>
                <!-- #TextElement MANDATORY-->
                <entry typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                        <templateId root="1.2.276.0.76.10.4037"/>
                        <!-- #id -->
                        <code code="11459-5" codeSystem="2.16.840.1.113883.6.1" displayName="Transport method"/>
                        <!-- #TextElement --> 
                        <statusCode code="completed"/>
                        <!-- #OptionalTime -->
                        <value xsi:type="CV">                         
                            <xsl:call-template name="templateSetConceptValues">
                                <xsl:with-param name="templateId">1.2.276.0.76.10.4037</xsl:with-param>
                            </xsl:call-template>                                  
                        </value>
                    </observation>
                </entry>
            </section>
        </component>
    </xsl:template>

    <xsl:template name="Section.Zuweisung">
        <component typeCode="COMP" contextConductionInd="true">
            <section classCode="DOCSECT">
                <templateId root="1.2.276.0.76.10.3046"/>
                <code code="11293-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Type of Referral source"/>
                <title>Zuweisung</title>
                <!-- #TextElement MANDATORY-->
                <entry typeCode="COMP" contextConductionInd="true">
                    <act classCode="PCPR" moodCode="RQO">
                        <templateId root="1.2.276.0.76.10.4038"/>
                        <code code="3457005" codeSystem="2.16.840.1.113883.6.96" displayName="Patient referral (procedure)"/>
                        <!-- #TextElement --> 
                        <participant typeCode="AUT">
                            <participantRole classCode="AGNT">
                                <code>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4038</xsl:with-param>
                                    </xsl:call-template>    
                                </code>                                
                            </participantRole>
                        </participant>
                    </act>
                </entry>
            </section>
        </component>
    </xsl:template>
   
    <!-- Notfallanamnese, keine relevante Information, daher zunächt auskommentiert -->
    <xsl:template name="Section.Notfallanamnese">
        <!-- 
        <component typeCode="COMP" contextConductionInd="true">       
            <section classCode="DOCSECT">
                <templateId root="1.2.276.0.76.10.3053"/>
                <code code="10164-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of present illness"/>
                <title>Notfallanamnese</title>
                #TextElement MANDATORY
            </section>
        </component>  -->
    </xsl:template>
    
    <!-- Beschwerden bei Vorstellung -->
    <xsl:template name="Section.Beschwerden">
        <component typeCode="COMP" contextConductionInd="true">
            
            <section classCode="DOCSECT">
                <templateId root="1.2.276.0.76.10.3048"/>
                <code code="46239-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Chief complaint+Reason for visit"/>
                <title>Beschwerden bei Vorstellung</title>
                <text>
                    <content ID="compl-1">Distorsionstrauma linker Fuß</content>
                </text>
                <entry typeCode="COMP">
                    <act classCode="ACT" moodCode="EVN">
                        <templateId root="1.2.276.0.76.10.4039"/>
                        <id root="b2e0e192-416a-4e9c-97ce-2f3e279826e9"/>
                        <code code="CONC" codeSystem="2.16.840.1.113883.5.6" displayName="Concern"/>
                        <statusCode code="active"/>
                        <effectiveTime>
                            <low value="201501171544"/>
                            <!-- &Complete high value-->
                            <high value="201501171554"/>
                        </effectiveTime>
                        
                        <entryRelationship typeCode="SUBJ">
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="1.2.276.0.76.10.4040"/>
                                <id root="1.2.276.0.76.4.17.9814184919" extension="08edb7c0-2111-43f2-a784-9a5fdfaa67f0"/>
                                <code code="409586006" codeSystem="2.16.840.1.113883.6.96" displayName="Complaint"/>
                                <text>
                                    <reference value="#compl-1"/>
                                </text>
                                <statusCode code="completed"/>
                                <effectiveTime>
                                    <low value="201501171544"/>                                      
                                </effectiveTime>
                                <value xsi:type="CE" code="557" codeSystem="1.2.276.0.76.5.439" displayName="Lower extremity injury"/>
                            </observation>
                        </entryRelationship>
                        
                        <!-- &Complete entryRelationship 2nd Entry-->
                        <entryRelationship typeCode="SUBJ">
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="1.2.276.0.76.10.4040"/>
                                <!-- &comment ID = Vetragsarzt? --> 
                                <id root="1.2.276.0.76.4.17.9814184919" extension="08edb7c0-2111-43f2-a784-9a5fdfaa67f0"/>
                                <!-- &comment Snomed Code "Chief complaint (finding)" --> 
                                <code code="409586006" codeSystem="2.16.840.1.113883.6.96" displayName="Complaint"/>
                                <text>
                                    <reference value="#compl-2"/>
                                </text>
                                <statusCode code="completed"/>
                                <effectiveTime>
                                    <low value="201501171544"/>                                       
                                    <high value="201501171659"/>
                                </effectiveTime>
                                <!-- &comment Beispiel aus HL7 Wiki --> 
                                <value xsi:type="CE" code="651" codeSystem="1.2.276.0.76.5.439" displayName="Shortness of breath"/>
                            </observation>
                        </entryRelationship>
                    </act>
                </entry>
            </section>
        </component>
    </xsl:template>
    
    <xsl:template name="Section.Basisinformationen"> <!-- #ToDo -->
    </xsl:template>
    
    <!-- Component/Section VitalSigns mit 9 Entries-->
    <xsl:template name="Section.Vitalparameter">
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4030' or @templateId = '1.2.276.0.76.10.4031' or @templateId = '1.2.276.0.76.10.4032'or @templateId = '1.2.276.0.76.10.4033'or @templateId = '1.2.276.0.76.10.4034'or @templateId = '1.2.276.0.76.10.4035'or @templateId = '1.2.276.0.76.10.4036'] or @templateId = '1.2.276.0.76.10.4046' or @templateId = '1.2.276.0.76.10.4047'"> 
            <component typeCode="COMP" contextConductionInd="true">
                <!-- VitalSigns -->
                <section classCode="DOCSECT">
                    <templateId root="1.2.276.0.76.10.3044"/>
                    <code code="8716-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Vital signs"/>
                    <!-- #TextElement MANDATORY
                    <title>Vitalparameter</title>  
                    <text>Vital signs</text> -->
                    <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4030']">
                        <entry typeCode="COMP" contextConductionInd="true">
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="1.2.276.0.76.10.4030"/>
                                <!-- #Id -->
                                <code code="9279-1" codeSystem="2.16.840.1.113883.6.1" displayName="Respiratory Rate"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4030</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                            </observation>
                        </entry>
                    </xsl:if>
                    <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4031']">
                        <entry typeCode="COMP" contextConductionInd="true">
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="1.2.276.0.76.10.4031"/>
                                <!-- #Id -->
                                <code code="20564-1" codeSystem="2.16.840.1.113883.6.1" displayName="Oxygen saturation"/> 
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4031</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                            </observation>
                        </entry>
                    </xsl:if>
                    <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4032']">
                        <entry typeCode="COMP" contextConductionInd="true">
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="1.2.276.0.76.10.4032"/>
                                <!-- #Id -->
                                <code code="8480-6" codeSystem="2.16.840.1.113883.6.1" displayName="Systolic blood pressure"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4032</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                            </observation>
                        </entry>
                    </xsl:if>
                    <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4033']">
                        <entry typeCode="COMP" contextConductionInd="true">                    
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="1.2.276.0.76.10.4033"/>
                                <!-- #Id -->
                                <code code="8867-4" codeSystem="2.16.840.1.113883.6.1" displayName="Heart Rate"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4033</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                            </observation>               
                        </entry>
                    </xsl:if>
                    <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4034']">
                        <entry typeCode="COMP" contextConductionInd="true"> 
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="1.2.276.0.76.10.4034"/>
                                <!-- #Id -->
                                <code code="9269-2" codeSystem="2.16.840.1.113883.6.1" displayName="Glasgow coma score total"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4034</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                                <entryRelationship typeCode="COMP" contextConductionInd="true">
                                    <observation classCode="OBS" moodCode="EVN">
                                        <code code="9267-6" codeSystem="2.16.840.1.113883.6.1" displayName="Glasgow coma score eye opening"/>
                                        <statusCode code="completed"/>
                                        <value>
                                            <xsl:call-template name="templateSetConceptValues">
                                                <xsl:with-param name="templateId">1.2.276.0.76.10.4034_9267-6</xsl:with-param>
                                            </xsl:call-template>    
                                        </value>
                                    </observation>
                                </entryRelationship>
                                <entryRelationship typeCode="COMP" contextConductionInd="true">
                                    <observation classCode="OBS" moodCode="EVN">
                                        <code code="9270-0" codeSystem="2.16.840.1.113883.6.1" displayName="Glasgow coma score verbal"/>
                                        <statusCode code="completed"/>
                                        <value>
                                            <xsl:call-template name="templateSetConceptValues">
                                                <xsl:with-param name="templateId">1.2.276.0.76.10.4034_9270-0</xsl:with-param>
                                            </xsl:call-template>    
                                        </value>
                                    </observation>
                                </entryRelationship>
                                <entryRelationship typeCode="COMP" contextConductionInd="true">
                                    <observation classCode="OBS" moodCode="EVN">
                                        <code code="9268-4" codeSystem="2.16.840.1.113883.6.1" displayName="Glasgow coma score motor"/>
                                        <statusCode code="completed"/>
                                        <value>
                                            <xsl:call-template name="templateSetConceptValues">
                                                <xsl:with-param name="templateId">1.2.276.0.76.10.4034_9268-4</xsl:with-param>
                                            </xsl:call-template>    
                                        </value>
                                    </observation>  
                                </entryRelationship>
                            </observation>                    
                        </entry>
                    </xsl:if>
                    <xsl:for-each select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-group[@templateId = '1.2.276.0.76.10.4046']"> 
                        <entry typeCode="COMP" contextConductionInd="true"> 
                            <observation classCode="OBS" moodCode="EVN">                        
                                <templateId root="1.2.276.0.76.10.4046"/>
                                <!-- #Id -->
                                <code code="363953003" codeSystem="2.16.840.1.113883.6.96" displayName="Size of pupil (observable entity)"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4046</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                                <targetSiteCode codeSystem="2.16.840.1.113883.6.96">
                                    <xsl:attribute name="targetSiteCode">
                                        <xsl:value-of select="./@targetSiteCode"/>
                                    </xsl:attribute>
                                </targetSiteCode>                         
                            </observation>                    
                        </entry>   
                    </xsl:for-each>
                    <xsl:for-each select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-group[@templateId = '1.2.276.0.76.10.4047']">
                        <entry typeCode="COMP" contextConductionInd="true"> 
                            <observation classCode="OBS" moodCode="EVN">                        
                                <templateId root="1.2.276.0.76.10.4047"/>
                                <!-- #Id -->
                                <code code="271733001" codeSystem="2.16.840.1.113883.6.96" displayName="Pupil reaction (observable entity)"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4047</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                                <targetSiteCode codeSystem="2.16.840.1.113883.6.96">
                                    <xsl:attribute name="targetSiteCode">
                                        <xsl:value-of select="./@targetSiteCode"/>
                                    </xsl:attribute>
                                </targetSiteCode>        
                            </observation>                    
                        </entry> 
                    </xsl:for-each>          
                    <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4035']">
                        <entry typeCode="COMP" contextConductionInd="true"> 
                            <observation classCode="OBS" moodCode="EVN">                        
                                <templateId root="1.2.276.0.76.10.4035"/>
                                <!-- #Id -->
                                <code code="8329-5" codeSystem="2.16.840.1.113883.6.1" displayName="Body temperature - Core"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4035</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                            </observation>                    
                        </entry>   
                    </xsl:if>
                    <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item[@templateId = '1.2.276.0.76.10.4036']">
                        <entry typeCode="COMP" contextConductionInd="true"> 
                            <observation classCode="OBS" moodCode="EVN">                        
                                <templateId root="1.2.276.0.76.10.4036"/>
                                <!-- #Id -->
                                <code code="72514-3" codeSystem="2.16.840.1.113883.6.1" displayName="Pain severity - 0-10 verbal numeric rating"/>
                                <statusCode code="completed"/>
                                <!-- #OptionalTime -->
                                <value>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4036</xsl:with-param>
                                    </xsl:call-template>    
                                </value>
                            </observation>                    
                        </entry>
                    </xsl:if>
                </section>
            </component>    
        </xsl:if>
    </xsl:template>
    
 
    <!-- Section Relevantdiagnostictestsorlaboratorydata -->    
    <xsl:template name="Section.Diagnostik">             
        <component typeCode="COMP" contextConductionInd="true">
            <section classCode="DOCSECT">
                <templateId root="1.2.276.0.76.10.3050"/>
                <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Relevant diagnostic tests &amp;or laboratory data"/>
                <title>Diagnostik</title>
                <!-- #TextElement MANDATORY-->
                <entry typeCode="COMP" contextConductionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                        <templateId root="1.2.276.0.76.10.4050"/>
                        <id root="944cd73e-4361-4fca-929b-9a404b063651"/>
                        <code code="399208008" codeSystem="2.16.840.1.113883.6.96" displayName="Plain chest X-ray (procedure)"/>
                        <!-- #MANDATORY TEXT -->
                        <statusCode code="completed"/>
                        <effectiveTime value="20150117"/>
                        <value xsi:type="CE" code="373572006" codeSystem="2.16.840.1.113883.6.96" displayName="Clinical finding absent (situation)"/>
                        <participant typeCode="LOC">
                            <participantRole classCode="SDLOC">
                                <code>
                                    <xsl:call-template name="templateSetConceptValues">
                                        <xsl:with-param name="templateId">1.2.276.0.76.10.4050</xsl:with-param>
                                    </xsl:call-template>    
                                </code>
                            </participantRole>
                        </participant>
                    </observation>
                </entry>
                
                <!-- #ToDo Relevantdiagnostictestsorlaboratorydata observations -->
                
            </section>
        </component>
    </xsl:template> 
    
    
    
    <xsl:template name="Section.Allergien"> <!-- #ToDo -->
    </xsl:template>
    
    <xsl:template name="Section.Befunde"> <!-- #ToDo -->
    </xsl:template>
    
    <xsl:template name="Section.Abschlussdiagnosen"> <!-- #ToDo -->
    </xsl:template>
    
    <xsl:template name="Section.Ersteinschaetzung"> <!-- #ToDo -->
    </xsl:template>
    
    <xsl:template name="Section.Weiterbehandler"> <!-- #ToDo -->
    </xsl:template>
    
    <xsl:template name="Section.Zusatzmodule"> <!-- #ToDo -->
    </xsl:template>

    
    
    <!-- Generic SetConceptValues Template -->  
    <xsl:template name="templateSetConceptValues">
        <xsl:param name="templateId" />
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@code[../@templateId = $templateId]">
            <xsl:attribute name="code">
                <xsl:value-of select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@code[../@templateId = $templateId]"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@codeSystem[../@templateId = $templateId]">
        <xsl:attribute name="codeSystem">
            <xsl:value-of select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@codeSystem[../@templateId = $templateId]"/>
        </xsl:attribute>
        </xsl:if>
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@displayName[../@templateId = $templateId]">
            <xsl:attribute name="displayName">
                <xsl:value-of select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@displayName[../@templateId = $templateId]"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@NullFlavor[../@templateId = $templateId]">
            <xsl:attribute name="NullFlavor">
                <xsl:value-of select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@NullFlavor[../@templateId = $templateId]"/>
            </xsl:attribute>
        </xsl:if>     
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@xsi:type[../@templateId = $templateId]">
            <xsl:attribute name="xsi:type">
                <xsl:value-of select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@xsi:type[../@templateId = $templateId]"/>
            </xsl:attribute>
        </xsl:if>  
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@value[../@templateId = $templateId]">
            <xsl:attribute name="value">
                <xsl:value-of select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@value[../@templateId = $templateId]"/>
            </xsl:attribute>
        </xsl:if>
        <xsl:if test="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@unit[../@templateId = $templateId]">
            <xsl:attribute name="unit">
                <xsl:value-of select="eav:dwh-eav/eav:visit/eav:facts/eav:eav-item/@unit[../@templateId = $templateId]"/>
            </xsl:attribute>
        </xsl:if>
    </xsl:template>   
    
    
</xsl:stylesheet>