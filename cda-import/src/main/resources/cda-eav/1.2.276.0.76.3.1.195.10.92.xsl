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

    <xsl:output method="xml" indent="yes" />
    <xsl:strip-space elements="*" />

    <xsl:key name="byId"
             match="*[@ID or @id]"
             use="@ID | @id"/>

    <!-- RESERVED VARIABLES -->
    <!--
        these variables are used outside of the XSLT file
        to modify the cda-import configuration.
        Do not remove!
    -->
    <!-- identify to which logical module the submitted data belongs -->
    <!-- for the value-set, see README.md -->
    <xsl:variable name="aktin.module.id">base</xsl:variable>
    <xsl:variable name="aktin.module.template">1.2.276.0.76.3.1.195.10.92</xsl:variable>
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

    <!-- Concept Code Prefix for Suspicion of Substance Influence -->
    <xsl:variable name="SubstanceInfluence-Prefix">AKTIN:SUBINFLUENCE:</xsl:variable>

    <!-- Prefix for Target Site Modifiers -->
    <xsl:variable name="TargetSite-Prefix">AKTIN:TSITE:</xsl:variable>

    <!-- Prefix for Diagnosis Modifiers -->
    <xsl:variable name="Diagnosis-Prefix">AKTIN:DIAG:</xsl:variable>

    <!-- Prefix for Diagnostic Result Modifiers -->
    <xsl:variable name="Diagnostic-Prefix">AKTIN:RESULT:</xsl:variable>

    <!-- Prefix for Import Project Version Information -->
    <xsl:variable name="ProjectVersion-Prefix">AKTIN:IPVI:</xsl:variable>

    <!-- Prefix for Import Transformation Template Information -->
    <xsl:variable name="TemplateVersion-Prefix">AKTIN:ITTI:</xsl:variable>

    <!-- Concept Code Prefix for Medication Codes -->
    <xsl:variable name="Medikation-Prefix">AKTIN:MED:</xsl:variable>

    <!-- Concept Code Prefix for Wildcard Diagnostics -->
    <xsl:variable name="WildcardDiagnostik-Prefix">AKTIN:WDIAG:</xsl:variable>

    <!-- Concept Code Prefix for Wildcard Therapy -->
    <xsl:variable name="WildcardTherapie-Prefix">AKTIN:WTHERAPY:</xsl:variable>

    <!-- Concept Code Prefix for Future LOINC Codes -->
    <xsl:variable name="Future-LOINC-Prefix">AKTIN:FLN:</xsl:variable>

    <!-- Prefix for SNOMED-CT Codes -->
    <xsl:variable name="SNOMED-Prefix">SNOMED:</xsl:variable>

    <!-- Prefix for ICD10 (International) Codes -->
    <xsl:variable name="ICD10-Prefix">ICD10:</xsl:variable>

    <!-- Prefix for LOINC Answer List (LOI RC Component) Codes -->
    <xsl:variable name="LOIRC-Prefix">LOIRC:</xsl:variable>

    <!-- Prefix for Manchester Triage System -->
    <xsl:variable name="MTS-Prefix">MTS:</xsl:variable>

    <!-- Prefix for Emergency Severity Index -->
    <xsl:variable name="ESI-Prefix">ESI:</xsl:variable>

    <!-- Prefix for Generic Triage Score -->
    <xsl:variable name="GenericTriage-Prefix">AKTIN:TRIAGE:</xsl:variable>

    <!-- Prefix for Triage System -->
    <xsl:variable name="TriageSystem-Prefix">AKTIN:TRIAGESYSTEM:</xsl:variable>

    <!-- Prefix for ISO 3166-1 Country Codes -->
    <xsl:variable name="ISO3166-1-Prefix">ISO3166-1:</xsl:variable>

    <!-- Prefix for SNOMED-CT Postcoordinated Terms -->
    <xsl:variable name="SNOMED-Post-Prefix">SNOMEDPOC:</xsl:variable>

    <!-- Prefix for Travel Abroad Codes -->
    <xsl:variable name="TravelAbroad-Prefix">AKTIN:TRAVEL:</xsl:variable>

    <!-- Prefix for Other Triage Systems (Andere Triagesysteme - SmED, etc.) -->
    <xsl:variable name="SMED-Prefix">SMED:</xsl:variable>

    <!-- Prefix for Accident cinetics -->
    <xsl:variable name="acc-kin-Prefix">AKTIN:ACC:KIN:</xsl:variable>

    <!-- Prefix for Accident cause -->
    <xsl:variable name="acc-cause-Prefix">AKTIN:ACC:CAUSE:</xsl:variable>

    <!-- MAIN Template -->

    <xsl:template match="/">
        <eav-data>
            <meta>
                <etl-strategy>insert</etl-strategy>
                <source>
                    <xsl:attribute name="timestamp">
                        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:effectiveTime/@value)" />
                    </xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:call-template name="import-id" />
                    </xsl:attribute>
                </source>
            </meta>
            <patient>
                <xsl:attribute name="id">
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole" />
                </xsl:attribute>
                <!--
                <given-name>information privacy</given-name>
                <surname>information privacy</surname>
                 -->
                <gender>
                    <xsl:call-template name="EAV-Geschlecht"></xsl:call-template>
                </gender>
                <xsl:if test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value">
                    <!-- Date of Birth  HL7.TS =>  	YYYY[MM[DD]] -->
                    <birthdate>
                        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value)" />
                    </birthdate>
                </xsl:if>
                <!-- Discharge Disposition Code = 'Tod' ; then EncounterEnd=Death Date; If no
                Discharge Date = empty deceased-Element is sufficient for I2B2 -->
                <xsl:if test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode/@code='1'">
                    <deceased>
                        <xsl:if test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value">
                            <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value)" />
                        </xsl:if>
                    </deceased>
                </xsl:if>
                <encounter>
                    <xsl:attribute name="id">
                        <xsl:call-template name="encounter-id" />
                    </xsl:attribute>
                    <start>
                        <xsl:call-template name="ZeitpunktAufnahme" />
                    </start>
                    <xsl:call-template name="ZeitpunktEntlassungOptional" />
                    <!-- <location></location> -->
                    <!-- <provider></provider> -->
                    <!-- <source></source> -->
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:city" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:effectiveTime" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:participant/cda:associatedEntity" />
                    <!-- Call all fact templates at body/component/section level -->
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section" />
                    <xsl:call-template name="process-ids" />
                    <xsl:apply-templates select="/cda:ClinicalDocument/cda:templateId" />
                </encounter>
            </patient>
        </eav-data>
    </xsl:template>

    <xsl:template match="text()" />   <!-- Match plain text nodes and do nothing, i.e. mask default
    output for text nodes     -->


    <!-- COMPONENT Templates -->


    <!-- Unique identifier (~episode ID), identical for updates of the same document (not patient
    ID!) -->
    <!-- SetID(@root/@extension) identical, versionNumber for updates! // shall be present to enable
    further updates to this ClinicalDocument. -->
    <xsl:template name="encounter-id">
        <xsl:value-of select="aktin:encounter-hash(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@root, /cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@extension)" />
    </xsl:template>

    <!-- Internal encounter indicators -->
    <xsl:template name="process-ids">
        <xsl:for-each select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[position() >= 2]">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$AKTIN-Prefix"/>
                    <xsl:choose>
                        <xsl:when test="position() = 1">Fallkennzeichen</xsl:when>
                        <xsl:otherwise>Fallzusatzkennzeichen:<xsl:value-of select="translate(./@root, '.', '')"/>:<xsl:value-of select="./@extension"/></xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="aktin:encounter-hash(./@root, ./@extension)"/>
                </value>
            </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- Hospital ID
    The hospital ID does not need to be stored in the DWH.
    During merging, the broker knows the source and can be supplemented if necessary.
    In the CDA, it is probably most sensible to represent it via Custodian. -->

    <!-- Emergency department ID
    see 1 - If there are two emergency departments, they have a separate DWH or a shared one and are
    not evaluated separately. In both cases, the question is not really relevant.
    -->

    <!-- Patient ID in the base module -->
    <!-- <xsl:comment>Patient ID in the base module</xsl:comment> -->
    <xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
        <xsl:value-of select="aktin:patient-hash(./cda:id/@root, ./cda:id/@extension)" />
    </xsl:template>

    <!--  Hauptkostenträger (Id 	1.2.276.0.76.3.1.195.10.4) OR  CDA participant Kostentraeger
    (1.2.276.0.76.10.2022) -->
    <xsl:template match="cda:participant/cda:associatedEntity">
        <xsl:comment>Insurance Information</xsl:comment>
        <!-- Health insurance Name -->
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />KKNAME</xsl:attribute>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="./cda:scopingOrganization/cda:name" />
            </value>
        </fact>
        <!-- IKNR -->
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />IKNR</xsl:attribute>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.5']/@extension" />
            </value>
        </fact>
        <!-- VK-Number -->
        <xsl:if test="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.7']">
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />VKNR</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.7']/@extension" />
                </value>
            </fact>
        </xsl:if>
    </xsl:template>

    <!-- Patient name -->
    <!-- Patient address (street) -->
    <!-- Patient address (city) -->
    <!-- Patient address (ZIP) -->
    <!-- Patient address (phone number) -->
    <!-- information privacy (everything except ZIP), maybe omit digits at this point already? -->
    <xsl:template match="cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode">
        <xsl:comment>Patient address (ZIP)</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />Ort</xsl:attribute>
            <value>
                <!-- <xsl:attribute name="unit"></xsl:attribute> -->
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="." />
            </value>
        </fact>
    </xsl:template>

    <!-- Rankin Scale as individual concept (0..6)-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4045']">

        <!-- Rankin Scale numeric (0..6) -->
        <xsl:comment>Rankin Scale</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$LOINC-Prefix" />75859-9</xsl:attribute>
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetNumericValues" />
            <xsl:call-template name="GetEffectiveTimes" />
        </fact>
    </xsl:template>

    <xsl:template name="import-id">
        <!-- generate a unique id for encounter and module  -->
        <xsl:value-of select="aktin:import-hash(/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@root,/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension,/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@root,/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@extension,$aktin.module.id)"/>
    </xsl:template>

    <xsl:template name="EAV-Geschlecht">
        <xsl:choose>
            <xsl:when test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='F'">female</xsl:when>
            <xsl:when test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='M'">male</xsl:when>
            <xsl:when test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='UN'">indeterminate</xsl:when>
            <!-- Unknown as explicit value not supported by EAV (= not answered)-->
        </xsl:choose>
    </xsl:template>

    <!-- Admission date/time
    cf. 882
    -->

    <!-- Pregnant L:11449-6'-->
    <!-- Distinction between Unknown and Not filled in? -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4043']">
        <xsl:comment>Pregnancy status</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../cda:value/@code">
                        <xsl:value-of select="$Schwangerschaft-Prefix" /><xsl:value-of select="../cda:value/@code" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$Schwangerschaft-Prefix" /><xsl:value-of select="../cda:value/@nullFlavor" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes" />
        </fact>
    </xsl:template>

    <!-- Tetanus protection L:11458-7-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4044']">
        <xsl:comment>Tetanus protection</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../@negationInd = 'true'"><xsl:value-of select="$LOINC-Prefix" />11458-7:NEG</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and not (../@nullFlavor = 'NI')"><xsl:value-of select="$LOINC-Prefix" />11458-7</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and  ../@nullFlavor = 'NI'"><xsl:value-of select="$LOINC-Prefix" />11458-7:NI</xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>
        </fact>
    </xsl:template>

    <!-- Isolation (1.2.276.0.76.3.1.195.10.65)-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.65']">
        <xsl:comment>7 Isolation</xsl:comment>

        <xsl:variable name="proc" select="parent::cda:procedure" />
        <xsl:variable name="neg" select="$proc/@negationInd='true'" />
        <xsl:choose>

            <!-- *No* Isolation -->
            <xsl:when test="$neg">
                <fact concept="{ $Isolation-Prefix }ISO:NEG">
                    <xsl:call-template name="GetEffectiveTimes" />
                </fact>
            </xsl:when>

            <!-- c) Isolation required  -->
            <xsl:otherwise>
                <fact concept="{ $Isolation-Prefix }ISO">
                    <xsl:call-template name="GetEffectiveTimes" />
                </fact>
            </xsl:otherwise>

            <!-- d) do nothing -->
        </xsl:choose>
    </xsl:template>

    <!-- Isolation indication (1.2.276.0.76.3.1.195.10.66) -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.66']">
        <xsl:comment>Isolation indication</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../cda:value/@code">
                        <xsl:value-of select="concat($IsolationReason-Prefix, ../cda:value/@code)" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="concat($IsolationReason-Prefix, ../cda:value/@nullFlavor)" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:call-template name="GetEffectiveTimes" />
        </fact>
    </xsl:template>

    <!-- Respiratory rate
    <fact concept="L:9279-1">
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4030']">
        <xsl:comment>Respiratory rate</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Oxygen saturation 59408-5
    <fact concept="L:59408-5">
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4031']">
        <xsl:comment>Oxygen saturation</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Systolic blood pressure 8480-6
    <fact concept="L:8480-6">
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4032']">
        <xsl:comment>Systolic blood pressure</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Diastolic blood pressure
    <fact concept="Snomed:271650006">
     -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.38']">
        <xsl:comment>Diastolic blood pressure</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>



    <!-- Heart rate 8867-4
    <fact concept="L:8867-4" </fact>
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4033']">
        <xsl:comment>Heart rate</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- GCS Eye opening
    <fact concept="L:9267-6"</fact> -->
    <xsl:template match="cda:code[@code='9267-6']">
        <xsl:comment>Glasgow Coma Scale Eye Opening</xsl:comment>
        <fact>
            <xsl:if test="../../../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- GCS Verbal response
    <fact concept="L:9270-0"/fact> -->
    <xsl:template match="cda:code[@code='9270-0']">
        <xsl:comment>Glasgow Coma Scale Verbal Response</xsl:comment>
        <fact>
            <xsl:if test="../../../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- GCS Motor response
    <fact concept="L:9268-4" > -->
    <xsl:template match="cda:code[@code='9268-4']">
        <xsl:comment>Glasgow Coma Scale Motor Response</xsl:comment>
        <fact>
            <xsl:if test="../../../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- GCS Total
    <fact concept="L:9269-2" > -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4034']">
        <xsl:comment>Glasgow Coma Scale</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Pupil dilation on admission to the emergency department -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4046']">
        <xsl:comment>Pupil dilation on admission to the emergency department</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue" />
            <modifier>
                <xsl:attribute name="code">
                    <xsl:value-of select="$TargetSite-Prefix" /><xsl:value-of select="../cda:targetSiteCode/@code" />
                </xsl:attribute>
            </modifier>
        </fact>
    </xsl:template>

    <!-- Pupillary response -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4047']">
        <xsl:comment>Pupillary response</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue" />
            <modifier>
                <xsl:attribute name="code">
                    <xsl:value-of select="$TargetSite-Prefix" /><xsl:value-of select="../cda:targetSiteCode/@code" />
                </xsl:attribute>
            </modifier>
        </fact>
    </xsl:template>

    <!-- Core body temperature -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4035']">
        <xsl:comment>Core body temperature</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Pain on admission, LOINC pain scale 0-10 possibly Answer list LL2335-9
    <fact concept="L:72514-3" >
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4036']">
        <xsl:comment>Pain on admission</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>


    <!-- First pain measurement
     <fact concept="FLN:15" >
     -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.45']">
        <xsl:comment>First pain measurement</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Referral -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3046']">
        <xsl:comment>Referral</xsl:comment>
        <fact>
            <xsl:if test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code">
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Zuweiser-Prefix" /><xsl:value-of select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code" />
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@nullFlavor">
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Zuweiser-Prefix" /><xsl:value-of select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@nullFlavor" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes" /> <!-- no times in referral -->
        </fact>
    </xsl:template>

    <!-- Referring physician/entity -->
    <!-- Not provided on the form / free text -->

    <!-- Ersteinschätzung 1.2.276.0.76.3.1.195.10.18 -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.18']">
        <xsl:comment>Initial assessment</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue"/>
        </fact>

        <xsl:comment>Initial assessment system used</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptMethod"/>
        </fact>
    </xsl:template>

    <!-- Manchester Triage System (1.2.276.0.76.3.1.195.10.19) -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.19']">
        <xsl:if test="../cda:value/@code">
            <xsl:comment>MTS Bewertung</xsl:comment>
            <fact>
                <xsl:call-template name="templateGetConceptValue"/>
            </fact>
        </xsl:if>

    <!-- MTS Präsentationsdiagramm (1.2.276.0.76.3.1.195.10.21) -->
    <!-- MTS-Indikatoren RED (1.2.276.0.76.3.1.195.10.22) -->
    <!-- MTS-Indikatoren ORANGE (1.2.276.0.76.3.1.195.10.23) -->
    <!-- MTS-Indikatoren YELLOW (1.2.276.0.76.3.1.195.10.24) -->
        <!-- MTS-Indikatoren GREEN (1.2.276.0.76.3.1.195.10.25) -->
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId">
            <xsl:comment><xsl:value-of select="../cda:code/@displayName"/></xsl:comment>
        <fact>
                <!-- Use effectiveTime from parent MTS observation if available or parent initial assessment observation -->
            <xsl:choose>
                <xsl:when test="../../../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
                    <xsl:when test="../../../../../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                            <xsl:value-of select="func:ConvertDateTime(../../../../../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
            </xsl:choose>
                <xsl:call-template name="templateGetConceptValue"/>
        </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- Emergency Severity Index (1.2.276.0.76.3.1.195.10.20) -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.20']">
        <xsl:if test="../cda:value/@code">
            <xsl:comment>ESI Bewertung</xsl:comment>
            <fact>
                <xsl:call-template name="templateGetConceptValue"/>
            </fact>
        </xsl:if>

    <!-- ESI-Triagefaktoren (1.2.276.0.76.3.1.195.10.26) -->
        <!-- TODO aktuell kann nur eine (genau eine) Triagefaktor angegeben werden, bei MTS sind es beliebige -->
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId">
            <xsl:comment><xsl:value-of select="../cda:code/@displayName"/></xsl:comment>
        <fact>
                <!-- Use effectiveTime from parent MTS observation if available or parent initial assessment observation -->
            <xsl:choose>
                    <xsl:when test="../../../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                            <xsl:value-of select="func:ConvertDateTime(../../../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
                    <xsl:when test="../../../../../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                            <xsl:value-of select="func:ConvertDateTime(../../../../../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
            </xsl:choose>
                <xsl:call-template name="templateGetConceptValue"/>
        </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- Diagnostics heading/free text -->

    <!-- Additional modules -->
    <!-- Monitoring module -->
    <!-- Trauma module -->
    <!-- Anesthesia module -->
    <!-- Consultation module -->
    <!-- Pre-clinical module -->
    <!-- Batch documentation module -->
    <!-- Neurology module -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4070']">
        <xsl:comment>Additional modules</xsl:comment>
        <xsl:for-each select="../cda:reference/cda:externalDocument">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$LOINC-Prefix" />
                    <xsl:value-of select="./cda:code/@code" />
                </xsl:attribute>
            </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- Allergy -->
    <!-- Antibiotic allergy -->
    <!-- Contrast medium allergy -->
    <!-- Other allergies -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4065']">
        <xsl:comment>Allergies</xsl:comment>
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4066']">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Allergie-Prefix" />
                    <xsl:choose>
                        <xsl:when
                                test="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code">
                            <xsl:value-of select="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@nullFlavor" />
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:if test="../@negationInd = 'true'">:NEG</xsl:if>
                </xsl:attribute>
                <xsl:if test="../cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>
            </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- Free text for anamnestic intolerances / allergies -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3051']">
        <xsl:comment>Free text for anamnestic intolerances / allergies</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$Allergie-Prefix" />TXT</xsl:attribute>
            <xsl:if test="../cda:entry/cda:act/cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:entry/cda:act/cda:effectiveTime/cda:low/@value)" />
                </xsl:attribute>
            </xsl:if>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="../cda:text" />
            </value>
        </fact>
    </xsl:template>

    <!-- Complaints on presentation / free text-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3048']">
        <xsl:comment>Complaints on presentation (free text)</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />COMPLAINT</xsl:attribute>
            <xsl:if test="../cda:entry/cda:act/cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:entry/cda:act/cda:effectiveTime/cda:low/@value)" />
                </xsl:attribute>
            </xsl:if>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="../cda:text" />
            </value>
        </fact>
    </xsl:template>

    <!-- Symptom duration
    see 805 CEDIS-->

    <!-- Time of first doctor contact-->
    <xsl:template match="cda:documentationOf/cda:serviceEvent/cda:performer/cda:time">
        <xsl:if test="./cda:low/@value">
            <xsl:comment>Time of first doctor contact</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />PHYSENCOUNTER</xsl:attribute>
                <xsl:if test="./cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(./cda:low/@value)" />
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes" />
            </fact>
        </xsl:if>
    </xsl:template>

    <!-- Time of therapy start-->
    <xsl:template match="cda:documentationOf/cda:serviceEvent/cda:effectiveTime">
        <xsl:if test="./cda:low/@value">
            <xsl:comment>Time of therapy start</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />STARTTHERAPY</xsl:attribute>
                <xsl:if test="./cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(./cda:low/@value)" />
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes" />
            </fact>
        </xsl:if>
    </xsl:template>

    <!-- Emergency history / free text-->
    <!-- Unfall-Anamnese: extract vehicle of injured person (participantRole/code) -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.28']">
        <xsl:comment>Accident Anamnesis (incl. vehicle)</xsl:comment>

        <!-- Emit vehicle as its own fact with SNOMED code as concept -->
        <xsl:if test="../cda:participant/cda:participantRole/cda:code/@code">
            <fact>
                <!-- Concept = vehicle SNOMED code -->
                <xsl:attribute name="concept">
                    <xsl:value-of select="concat(func:GetCodePrefix(../cda:participant/cda:participantRole/cda:code/@codeSystem), ../cda:participant/cda:participantRole/cda:code/@code)" />
                </xsl:attribute>

                <!-- start = act/effectiveTime/low -->
                <xsl:if test="../cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                    </xsl:attribute>
                </xsl:if>

                <!-- Optional: also capture the displayName if present -->
                <xsl:if test="../cda:participant/cda:participantRole/cda:code/@displayName">
                    <modifier code="displayName">
                        <value xsi:type="string">
                            <xsl:value-of select="../cda:participant/cda:participantRole/cda:code/@displayName" />
                        </value>
                    </modifier>
                </xsl:if>

                <xsl:call-template name="GetEffectiveTimes" />
            </fact>
        </xsl:if>

    </xsl:template>

    <!-- Accident cause and kinetics (1.2.276.0.76.3.1.195.10.29) -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.29']">
        <xsl:comment>Accident cause (Unfallursache)</xsl:comment>

        <fact>
            <!-- concept from value/@code (SNOMED cause code) instead of observation/code -->
            <xsl:attribute name="concept">
                <xsl:value-of select="concat(func:GetCodePrefix(../cda:value/@codeSystem), ../cda:value/@code)" />
            </xsl:attribute>

            <xsl:choose>
                <xsl:when test="ancestor::cda:act[1]/cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(ancestor::cda:act[1]/cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="ancestor::cda:act[1]/cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(ancestor::cda:act[1]/cda:effectiveTime/cda:low/@value)" />
                    </xsl:attribute>
                </xsl:when>
            </xsl:choose>

            <!-- Optional displayName -->
            <xsl:if test="../cda:value/@displayName">
                <modifier code="displayName">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:value/@displayName" />
                    </value>
                </modifier>
            </xsl:if>
        </fact>

        <!-- emit Unfallkinetik as separate fact as well -->
        <xsl:apply-templates select=".." mode="unfallkinetik" />
    </xsl:template>


    <!-- Unfallkinetik (qualifier where name/@code='67496-0') -->
    <xsl:template match="cda:observation[cda:templateId/@root='1.2.276.0.76.3.1.195.10.29']" mode="unfallkinetik">
        <xsl:comment>Accident kinetics (Unfallkinetik)</xsl:comment>

        <xsl:for-each select="cda:value/cda:qualifier[cda:name/@code='67496-0']">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="concat($acc-kin-Prefix, cda:value/@code)" />
                </xsl:attribute>

                <xsl:if test="cda:value/@displayName">
                    <modifier code="displayName">
                        <value xsi:type="string">
                            <xsl:value-of select="cda:value/@displayName" />
                        </value>
                    </modifier>
                </xsl:if>
            </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- Unfallart Traumaregister / Injury cause (1.2.276.0.76.3.1.195.10.30) -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.30']">
        <xsl:comment>Injury cause (Unfallart) - 1.2.276.0.76.3.1.195.10.30</xsl:comment>

        <!-- Concept based on observation/code (LOINC 11373-8) + start from effectiveTime -->
        <fact>
            <!-- concept from value/@code (SNOMED injury cause code) instead of observation/code -->
            <xsl:attribute name="concept">
                <xsl:value-of select="concat($acc-cause-Prefix, ../cda:value/@code)" />
            </xsl:attribute>

            <!-- start from effectiveTime -->
            <xsl:choose>
                <xsl:when test="../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="../cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                    </xsl:attribute>
                </xsl:when>
            </xsl:choose>

            <!-- Optional displayName -->
            <xsl:if test="../cda:value/@displayName">
                <modifier code="displayName">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:value/@displayName"/>
                    </value>
                </modifier>
            </xsl:if>

            <xsl:call-template name="GetEffectiveTimes" />
        </fact>
    </xsl:template>

    <!-- Suspicion of substance influence -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.32']">
        <xsl:comment>Suspicion of substance influence</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue" />
        </fact>
    </xsl:template>

    <!-- Procedure / free text-->

    <!-- Final diagnoses / free text-->
    <!-- Final diagnoses-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3055']">
        <xsl:comment>Final diagnoses</xsl:comment>
        <xsl:for-each select="../cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4049']">
            <fact>
                <xsl:choose>
                    <xsl:when test="../cda:value/@code">
                        <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix" /><xsl:value-of select="../cda:value/@code" /></xsl:attribute>
                        <xsl:if test="../cda:effectiveTime/cda:low/@value">
                            <xsl:attribute name="start">
                                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                            </xsl:attribute>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix" />NULL<xsl:value-of select="position()" /></xsl:attribute>
                        <xsl:if test="../cda:effectiveTime/cda:low/@value">
                            <xsl:attribute name="start">
                                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                            </xsl:attribute>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="../cda:value/cda:qualifier/cda:value[@codeSystem='1.2.276.0.76.11.121']/@code">
                    <modifier>
                        <xsl:attribute name="code">
                            <xsl:value-of select="$Diagnosis-Prefix" /><xsl:value-of select="../cda:value/cda:qualifier/cda:value[@codeSystem='1.2.276.0.76.11.121']/@code" />
                        </xsl:attribute>
                    </modifier>
                </xsl:if>
                <xsl:if test="../../cda:sequenceNumber/@value='1'">
                    <modifier>
                        <xsl:attribute name="code"><xsl:value-of select="$Diagnosis-Prefix"/>F</xsl:attribute>
                    </modifier>
                </xsl:if>
                <xsl:if test="../cda:value/cda:originalText">
                    <modifier>
                        <xsl:attribute name="code">originalText</xsl:attribute>
                        <value>
                            <xsl:attribute name="xsi:type">string</xsl:attribute>
                            <xsl:value-of select="../cda:value/cda:originalText" />
                        </value>
                    </modifier>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes" />
            </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- Initial assessment system used
    see 23 Initial assessment -->

    <!-- Complaints on presentation (CEDIS)
    incl. symptom duration -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4040']">
        <xsl:comment>Complaints on presentation (CEDIS)</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue" />
        </fact>

        <xsl:if test="../cda:effectiveTime/cda:width/@value">
            <xsl:comment>Symptom duration</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />SYMPTOMDURATION</xsl:attribute>
                <value>
                    <xsl:attribute name="unit">
                        <xsl:value-of select="../cda:effectiveTime/cda:width/@unit" />
                    </xsl:attribute>
                    <xsl:attribute name="xsi:type">numeric</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:width/@value" />
                </value>
            </fact>
        </xsl:if>
    </xsl:template>

    <!-- multi-resistant pathogens -->
    <!-- multi-resistant pathogens: Pathogen type -->
    <!-- Some details are possible in the CDA that are not intended. -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4072']">
        <xsl:comment>multi-resistant pathogens</xsl:comment>
        <xsl:for-each select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4073']">
            <xsl:if test="../cda:value">
                <fact>
                    <xsl:attribute name="concept">
                        <xsl:value-of select="$Pathogen-Prefix"/>
                        <xsl:choose>
                            <xsl:when test="../cda:value/@code">
                                <xsl:value-of select="../cda:value/@code"/><xsl:if test="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']">:<xsl:value-of select="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']/@code"/></xsl:if><xsl:if test="../@negationInd">:NEG</xsl:if>
                            </xsl:when>
                            <xsl:when test="../cda:value/@nullFlavor">
                                <xsl:value-of select="../cda:value/@nullFlavor"/>:<xsl:value-of select="../cda:value/@code"/><xsl:if test="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']">:<xsl:value-of select="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']/@code"/></xsl:if>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:attribute>

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

    <!-- Template for visit/encounter -->
    <xsl:template name="ZeitpunktEntlassungOptional">
        <xsl:variable name="ts" select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value" />
        <xsl:if test="$ts">
            <end>
                <xsl:value-of select="func:ConvertDateTime($ts)" />
            </end>
        </xsl:if>
    </xsl:template>

    <!-- Template for visit/encounter -->
    <xsl:template name="ZeitpunktAufnahme">
        <xsl:value-of select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low/@value)" />
    </xsl:template>


    <!-- Means of transport -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4037']">
        <xsl:comment>Means of transport</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue" />
        </fact>
    </xsl:template>

    <!-- Medical transfer support -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.12']">
        <xsl:comment>Medical transfer support</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Patient transferred / discharged to -->
    <xsl:template match="cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode">
        <xsl:comment>Patient transferred / discharged to</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$Entlassung-Prefix" />
                <xsl:choose>
                    <xsl:when test="./@code">
                        <xsl:value-of select="./@code" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="./@nullFlavor" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:if test="../cda:effectiveTime/cda:high/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:high/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes" />
        </fact>
    </xsl:template>
    <xsl:template match="cda:code[../cda:templateId/@root='1.2.276.0.76.10.4067']">
        <xsl:comment>Patient transferred / discharged to</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$Verlegung-Prefix" />
                <xsl:choose>
                    <xsl:when test="./@code">
                        <xsl:value-of select="./@code" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="./@nullFlavor" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:call-template name="GetEffectiveTimes" />
        </fact>
    </xsl:template>

    <!-- Unplanned presentation for the same reason within 28 days -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.14']">
        <xsl:comment>Unplanned presentation for the same reason within 28 days</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Time since last presentation for the same reason -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.15']">
        <xsl:comment>Time since last presentation for the same reason</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode" />
        </fact>
    </xsl:template>

    <!-- Diagnostics @negationInd -->
    <!-- Diagnostics normal findings -->
    <!-- Diagnostics time-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3050']">
        <xsl:for-each select="../cda:entry/(cda:observation|cda:procedure)/cda:templateId[@root != '1.2.276.0.76.3.1.195.10.89']">
            <xsl:comment><xsl:value-of select="../cda:code/@displayName"/></xsl:comment>
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="concat(func:GetCodePrefix(../cda:code/@codeSystem), ../cda:code/@code)" />
                    <xsl:if test="../@negationInd='true'">:NEG</xsl:if>
                </xsl:attribute>
                <xsl:if test="../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="../@classCode">
                    <modifier code="classCode">
                        <value xsi:type="string">
                            <xsl:value-of select="../@classCode" />
                        </value>
                    </modifier>
                </xsl:if>
                <xsl:if test="../@moodCode">
                    <modifier code="moodCode">
                        <value xsi:type="string">
                            <xsl:value-of select="../@moodCode" />
                        </value>
                    </modifier>
                </xsl:if>
                <xsl:if test="../cda:value/@code">
                    <modifier>   <!-- More expressions +NullFlavor available than queried (only Yes/No+NAV
                        or UNK)-->
                        <xsl:attribute name="code">
                            <xsl:value-of select="$Diagnostic-Prefix" /><xsl:value-of select="../cda:value/@code" />
                        </xsl:attribute>
                    </modifier>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes" />
            </fact>
        </xsl:for-each>
    </xsl:template>

    <!-- One fact per Import/CDA-Document to save the information about the Software-Release and the
    applied Template Script
    We need this information to be able to transform data during updates (in case of Concept-Code
    Changes, Bugfixes etc.) -->

    <xsl:template match="/cda:ClinicalDocument/cda:templateId">
        <xsl:comment>Import Transformation/Version Information</xsl:comment>
        <fact>
            <!-- CAUTION: in other modules (e.g. trauma module), the following fact must not
                be output in the same way, as there is then a possibility that the unique constraint
                of the observation_fact table is violated. Since the software version is the same, however,
                this can be completely omitted. -->
            <xsl:attribute name="concept">
                <xsl:value-of select="$ProjectVersion-Prefix" /><xsl:value-of select="$aktin.release.version" />
            </xsl:attribute>
        </fact>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$TemplateVersion-Prefix" /><xsl:value-of select="$aktin.module.template" />
            </xsl:attribute>
        </fact>
    </xsl:template>

    <!-- Wildcard Diagnostik -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.89']">
        <xsl:comment>Wildcard Diagnostik</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$WildcardDiagnostik-Prefix" />
                <xsl:value-of select="../cda:code/@code" />
            </xsl:attribute>

            <!-- Start time from effectiveTime -->
            <xsl:choose>
                <xsl:when test="../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="../cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                    </xsl:attribute>
                </xsl:when>
            </xsl:choose>

            <!-- Value handling - MANDATORY per CDA spec -->
            <xsl:if test="../cda:value">
                <value>
                    <xsl:attribute name="xsi:type">
                        <xsl:variable name="cda_type" select="../cda:value/@xsi:type" />
                        <xsl:choose>
                            <xsl:when test="$cda_type = 'PQ' or $cda_type = 'INT' or $cda_type = 'REAL'">numeric</xsl:when>
                            <xsl:when test="$cda_type = 'BL'">boolean</xsl:when>
                            <xsl:otherwise>string</xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>

                    <!-- Unit for PQ -->
                    <xsl:if test="../cda:value/@unit">
                        <xsl:attribute name="unit">
                            <xsl:value-of select="../cda:value/@unit" />
                        </xsl:attribute>
                    </xsl:if>

                    <!-- Extract value based on datatype -->
                    <xsl:choose>
                        <xsl:when test="../cda:value/@xsi:type = 'CD'">
                            <xsl:value-of select="../cda:value/@code" />
                        </xsl:when>
                        <xsl:when test="../cda:value/@xsi:type = 'BL' or ../cda:value/@xsi:type = 'PQ' or ../cda:value/@xsi:type = 'INT' or ../cda:value/@xsi:type = 'REAL'"> <xsl:value-of select="../cda:value/@value" />
                        </xsl:when>
                        <xsl:when test="../cda:value/@xsi:type = 'ST'">
                            <xsl:value-of select="../cda:value/text()" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="../cda:value/@value | ../cda:value/text()" />
                        </xsl:otherwise>
                    </xsl:choose>
                </value>

                <!-- CD metadata as modifiers -->
                <xsl:if test="../cda:value/@xsi:type = 'CD'">
                    <xsl:if test="../cda:value/@codeSystem">
                        <modifier code="codeSystem">
                            <value xsi:type="string">
                                <xsl:value-of select="../cda:value/@codeSystem" />
                            </value>
                        </modifier>
                    </xsl:if>
                    <xsl:if test="../cda:value/@displayName">
                        <modifier code="displayName">
                            <value xsi:type="string">
                                <xsl:value-of select="../cda:value/@displayName" />
                            </value>
                        </modifier>
                    </xsl:if>
                </xsl:if>
            </xsl:if>

            <!-- IDs (multiple allowed) -->
            <xsl:for-each select="../cda:id">
                <modifier code="id">
                    <value xsi:type="string">
                        <xsl:value-of select="@root" />
                        <xsl:if test="@extension">:<xsl:value-of select="@extension" /></xsl:if>
                    </value>
                </modifier>
            </xsl:for-each>

            <!-- Code metadata -->
            <xsl:if test="../cda:code/@codeSystem">
                <modifier code="codeSystem">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:code/@codeSystem" />
                    </value>
                </modifier>
            </xsl:if>
            <xsl:if test="../cda:code/@displayName">
                <modifier code="displayName">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:code/@displayName" />
                    </value>
                </modifier>
            </xsl:if>

            <!-- Effective times -->
            <xsl:call-template name="GetEffectiveTimes" />

            <!-- Negation indicator -->
            <xsl:if test="../@negationInd">
                <modifier code="negationInd">
                    <value xsi:type="boolean">
                        <xsl:value-of select="../@negationInd" />
                    </value>
                </modifier>
            </xsl:if>

            <!-- Text reference -->
            <xsl:if test="../cda:text/cda:reference/@value">
                <modifier code="AKTIN:TXTREF">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:text/cda:reference/@value" />
                    </value>
                </modifier>
            </xsl:if>

            <!-- External definition -->
            <xsl:if test="../cda:reference/cda:externalDocument/cda:text/cda:reference/@value">
                <modifier code="AKTIN:EXTDEF">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:reference/cda:externalDocument/cda:text/cda:reference/@value" />
                    </value>
                </modifier>
            </xsl:if>
        </fact>
    </xsl:template>

    <!-- Wildcard Therapie -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.90']">
        <xsl:comment>Wildcard Therapie</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$WildcardTherapie-Prefix" />
                <xsl:value-of select="../cda:code/@code" />
            </xsl:attribute>

            <!-- Start time from effectiveTime -->
            <xsl:choose>
                <xsl:when test="../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="../cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                    </xsl:attribute>
                </xsl:when>
            </xsl:choose>

            <!-- IDs -->
            <xsl:for-each select="../cda:id">
                <modifier code="id">
                    <value xsi:type="string">
                        <xsl:value-of select="@root" />
                        <xsl:if test="@extension">:<xsl:value-of select="@extension" /></xsl:if>
                    </value>
                </modifier>
            </xsl:for-each>

            <!-- Code metadata -->
            <xsl:if test="../cda:code/@codeSystem">
                <modifier code="codeSystem">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:code/@codeSystem" />
                    </value>
                </modifier>
            </xsl:if>
            <xsl:if test="../cda:code/@displayName">
                <modifier code="displayName">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:code/@displayName" />
                    </value>
                </modifier>
            </xsl:if>

            <!-- Effective times using template -->
            <xsl:call-template name="GetEffectiveTimes" />

            <!-- Negation indicator -->
            <xsl:if test="../@negationInd">
                <modifier code="negationInd">
                    <value xsi:type="boolean">
                        <xsl:value-of select="../@negationInd" />
                    </value>
                </modifier>
            </xsl:if>

            <!-- Text reference -->
            <xsl:if test="../cda:text/cda:reference/@value">
                <modifier code="AKTIN:TXTREF">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:text/cda:reference/@value" />
                    </value>
                </modifier>
            </xsl:if>

            <!-- External definition-->
            <xsl:if test="../cda:reference/cda:externalDocument/cda:text/cda:reference/@value">
                <modifier code="AKTIN:EXTDEF">
                    <value xsi:type="string">
                        <xsl:value-of select="../cda:reference/cda:externalDocument/cda:text/cda:reference/@value" />
                    </value>
                </modifier>
            </xsl:if>
        </fact>
    </xsl:template>

    <!-- substanceAdministration -->
    <xsl:template match="cda:substanceAdministration[cda:templateId/@root='1.2.276.0.76.3.1.195.10.67']">
        <xsl:variable name="medCode" select="cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code/@code"/>
        <xsl:variable name="outerSubstanceAdmin" select="."/>

        <xsl:choose>
            <!-- Case 1: Has subordinate substance administrations - create one fact per subordinate -->
            <xsl:when test="cda:entryRelationship/cda:substanceAdministration">
                <xsl:for-each select="cda:entryRelationship/cda:substanceAdministration">
                    <fact concept="{concat($Medikation-Prefix, $medCode)}" instance_num="{position()}">
                        <!-- Start Time from subordinate effectiveTime -->
                        <xsl:variable name="startTime">
                            <xsl:choose>
                                <xsl:when test="cda:effectiveTime/cda:low/@value"><xsl:value-of select="cda:effectiveTime/cda:low/@value"/></xsl:when>
                                <xsl:when test="cda:effectiveTime/@value"><xsl:value-of select="cda:effectiveTime/@value"/></xsl:when>
                            </xsl:choose>
                        </xsl:variable>

                        <xsl:if test="$startTime != ''">
                            <xsl:attribute name="start">
                                <xsl:value-of select="func:ConvertDateTime($startTime)" />
                            </xsl:attribute>
                        </xsl:if>

                        <!-- Value: Dose from subordinate -->
                        <xsl:if test="cda:doseQuantity/@value">
                            <value xsi:type="numeric">
                                <xsl:if test="cda:doseQuantity/@unit">
                                    <xsl:attribute name="unit"><xsl:value-of select="cda:doseQuantity/@unit"/></xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="cda:doseQuantity/@value"/>
                            </value>
                        </xsl:if>

                        <!-- Include medication info from outer element -->
                        <xsl:call-template name="substanceAdministration-medication-modifiers">
                            <xsl:with-param name="outer" select="$outerSubstanceAdmin"/>
                        </xsl:call-template>

                        <!-- Subordinate-specific modifiers -->

                        <!-- Subordinate statusCode -->
                        <xsl:if test="cda:statusCode/@code">
                            <modifier code="subordinateStatusCode">
                                <value xsi:type="string"><xsl:value-of select="cda:statusCode/@code"/></value>
                            </modifier>
                        </xsl:if>

                        <!-- Subordinate effectiveTime - simple TS value -->
                        <xsl:if test="cda:effectiveTime/@value">
                            <modifier code="effectiveTime">
                                <value xsi:type="string"><xsl:value-of select="cda:effectiveTime/@value"/></value>
                            </modifier>
                        </xsl:if>

                        <!-- Subordinate effectiveTime - PIVL_TS phase/low (start time) -->
                        <xsl:if test="cda:effectiveTime/cda:phase/cda:low/@value">
                            <modifier code="effectiveTimePhaseLow">
                                <value xsi:type="string"><xsl:value-of select="cda:effectiveTime/cda:phase/cda:low/@value"/></value>
                            </modifier>
                        </xsl:if>

                        <!-- Subordinate effectiveTime - period -->
                        <xsl:if test="cda:effectiveTime/cda:period/@value">
                            <modifier code="effectiveTimePeriod">
                                <value xsi:type="numeric">
                                    <xsl:if test="cda:effectiveTime/cda:period/@unit">
                                        <xsl:attribute name="unit"><xsl:value-of select="cda:effectiveTime/cda:period/@unit"/></xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="cda:effectiveTime/cda:period/@value"/>
                                </value>
                            </modifier>
                        </xsl:if>

                        <!-- Subordinate rateQuantity -->
                        <xsl:if test="cda:rateQuantity/@value">
                            <modifier code="rateQuantity">
                                <value xsi:type="numeric">
                                    <xsl:if test="cda:rateQuantity/@unit">
                                        <xsl:attribute name="unit"><xsl:value-of select="cda:rateQuantity/@unit"/></xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="cda:rateQuantity/@value"/>
                                </value>
                            </modifier>
                        </xsl:if>

                        <!-- Subordinate maxDoseQuantity (RTO_PQ_PQ datatype: numerator/denominator) -->
                        <xsl:if test="cda:maxDoseQuantity/cda:numerator/@value">
                            <modifier code="subordinateMaxDoseQuantityNumerator">
                                <value xsi:type="numeric">
                                    <xsl:if test="cda:maxDoseQuantity/cda:numerator/@unit">
                                        <xsl:attribute name="unit"><xsl:value-of select="cda:maxDoseQuantity/cda:numerator/@unit"/></xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="cda:maxDoseQuantity/cda:numerator/@value"/>
                                </value>
                            </modifier>
                            <xsl:if test="cda:maxDoseQuantity/cda:denominator/@value">
                                <modifier code="subordinateMaxDoseQuantityDenominator">
                                    <value xsi:type="numeric">
                                        <xsl:if test="cda:maxDoseQuantity/cda:denominator/@unit">
                                            <xsl:attribute name="unit"><xsl:value-of select="cda:maxDoseQuantity/cda:denominator/@unit"/></xsl:attribute>
                                        </xsl:if>
                                        <xsl:value-of select="cda:maxDoseQuantity/cda:denominator/@value"/>
                                    </value>
                                </modifier>
                            </xsl:if>
                        </xsl:if>

                        <!-- sequenceNumber derived from position in for-each -->
                        <modifier code="sequenceNumber">
                            <value xsi:type="numeric"><xsl:value-of select="position()"/></value>
                        </modifier>
                    </fact>
                </xsl:for-each>
            </xsl:when>

            <!-- Case 2: No subordinate - create one fact with medication info only -->
            <xsl:otherwise>
                <fact concept="{concat($Medikation-Prefix, $medCode)}">
                    <xsl:call-template name="substanceAdministration-medication-modifiers">
                        <xsl:with-param name="outer" select="$outerSubstanceAdmin"/>
                    </xsl:call-template>
                </fact>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Named template for medication modifiers from the outer substanceAdministration -->
    <xsl:template name="substanceAdministration-medication-modifiers">
        <xsl:param name="outer"/>

        <!-- moodCode -->
        <xsl:if test="$outer/@moodCode">
            <modifier code="moodCode">
                <value xsi:type="string"><xsl:value-of select="$outer/@moodCode"/></value>
            </modifier>
        </xsl:if>

        <!-- id -->
        <xsl:for-each select="$outer/cda:id">
            <modifier code="id">
                <value xsi:type="string"><xsl:value-of select="@root"/></value>
            </modifier>
        </xsl:for-each>

        <!-- statusCode -->
        <xsl:if test="$outer/cda:statusCode/@code">
            <modifier code="statusCode">
                <value xsi:type="string"><xsl:value-of select="$outer/cda:statusCode/@code"/></value>
            </modifier>
        </xsl:if>

        <!-- Text/Description lookup -->
        <xsl:variable name="refVal" select="$outer/cda:text/cda:reference/@value" />
        <xsl:if test="$refVal">
            <xsl:variable name="refId" select="substring-after($refVal,'#')" />
            <xsl:variable name="resolvedText" select="key('byId', $refId)/text()" />
            <xsl:if test="$resolvedText and normalize-space($resolvedText) != ''">
                <modifier code="AKTIN:MED:DESC">
                    <value xsi:type="string"><xsl:value-of select="normalize-space($resolvedText)"/></value>
                </modifier>
            </xsl:if>
        </xsl:if>

        <!-- routeCode -->
        <xsl:if test="$outer/cda:routeCode/@code">
            <modifier code="routeCode">
                <value xsi:type="string"><xsl:value-of select="$outer/cda:routeCode/@code"/></value>
            </modifier>
            <xsl:if test="$outer/cda:routeCode/@displayName">
                <modifier code="AKTIN:MED:ROUTE:DN">
                    <value xsi:type="string"><xsl:value-of select="$outer/cda:routeCode/@displayName"/></value>
                </modifier>
            </xsl:if>
        </xsl:if>

        <!-- approachSiteCode - numbered (approachSiteCode:1, approachSiteCode:2, etc.) -->
        <xsl:for-each select="$outer/cda:approachSiteCode">
            <modifier code="approachSiteCode:{position()}">
                <value xsi:type="string"><xsl:value-of select="@code"/></value>
            </modifier>
            <xsl:if test="@displayName">
                <modifier code="AKTIN:MED:SITE:DN:{position()}">
                    <value xsi:type="string"><xsl:value-of select="@displayName"/></value>
                </modifier>
            </xsl:if>
        </xsl:for-each>

        <!-- maxDoseQuantity from outer element (RTO_PQ_PQ datatype: numerator/denominator) -->
        <xsl:if test="$outer/cda:maxDoseQuantity/cda:numerator/@value">
            <modifier code="maxDoseQuantityNumerator">
                <value xsi:type="numeric">
                    <xsl:if test="$outer/cda:maxDoseQuantity/cda:numerator/@unit">
                        <xsl:attribute name="unit"><xsl:value-of select="$outer/cda:maxDoseQuantity/cda:numerator/@unit"/></xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="$outer/cda:maxDoseQuantity/cda:numerator/@value"/>
                </value>
            </modifier>
            <xsl:if test="$outer/cda:maxDoseQuantity/cda:denominator/@value">
                <modifier code="maxDoseQuantityDenominator">
                    <value xsi:type="numeric">
                        <xsl:if test="$outer/cda:maxDoseQuantity/cda:denominator/@unit">
                            <xsl:attribute name="unit"><xsl:value-of select="$outer/cda:maxDoseQuantity/cda:denominator/@unit"/></xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="$outer/cda:maxDoseQuantity/cda:denominator/@value"/>
                    </value>
                </modifier>
            </xsl:if>
        </xsl:if>

        <!-- administrationUnitCode -->
        <xsl:if test="$outer/cda:administrationUnitCode/@code">
            <modifier code="administrationUnitCode">
                <value xsi:type="string"><xsl:value-of select="$outer/cda:administrationUnitCode/@code"/></value>
            </modifier>
            <xsl:if test="$outer/cda:administrationUnitCode/@displayName">
                <modifier code="AKTIN:MED:ADMUNIT:DN">
                    <value xsi:type="string"><xsl:value-of select="$outer/cda:administrationUnitCode/@displayName"/></value>
                </modifier>
            </xsl:if>
        </xsl:if>

        <!-- Consumable (code + displayName) -->
        <xsl:if test="$outer/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code/@code">
            <modifier code="AKTIN:MED:CONSUMABLE">
                <value xsi:type="string">
                    <xsl:value-of select="$outer/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code/@code"/>
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="$outer/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code/@displayName">
            <modifier code="displayName">
                <value xsi:type="string">
                    <xsl:value-of select="$outer/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code/@displayName"/>
                </value>
            </modifier>
        </xsl:if>
    </xsl:template>

    <!-- EDIS Version -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.87']">
        <xsl:comment>EDIS Version</xsl:comment>
        <fact>
            <!-- Concept attribute -->
            <xsl:attribute name="concept">
                <xsl:value-of select="concat(func:GetCodePrefix(../cda:code/@codeSystem), ../cda:code/@code)" />
            </xsl:attribute>
            <!-- Start time attribute -->
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <!-- Value (string) -->
            <value xsi:type="string">
                <xsl:value-of select="../cda:value"/>
            </value>
            <!-- Modifiers -->
            <xsl:call-template name="GetEffectiveTimes"/>
        </fact>
    </xsl:template>

    <!-- EDIS Name -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.86']">
        <xsl:comment>EDIS Name</xsl:comment>
        <fact>
            <!-- Concept attribute -->
            <xsl:attribute name="concept">
                <xsl:value-of select="concat(func:GetCodePrefix(../cda:code/@codeSystem), ../cda:code/@code)" />
            </xsl:attribute>
            <!-- Start time attribute -->
            <xsl:if test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:if>
            <!-- Value (string) -->
            <value xsi:type="string">
                <xsl:value-of select="../cda:value"/>
            </value>
            <!-- Modifiers -->
            <xsl:call-template name="GetEffectiveTimes"/>
        </fact>
    </xsl:template>

    <!-- Export time from EDIS -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.88']">
        <xsl:comment>Export time from EDIS</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>

    <!-- Time until export -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.85']">
        <xsl:comment>Time until export</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>

    <!-- Time of decision for transfer / discharge -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.75']">
        <xsl:comment>Time of decision for transfer / discharge</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>

    <!-- Time patient ready for transfer / discharge -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.76']">
        <xsl:comment>Time patient ready for transfer / discharge</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>

    <!-- Time patient transferred / discharged to -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.3.1.195.10.77']">
        <xsl:comment>Time patient transferred / discharged to</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptCode"/>
        </fact>
    </xsl:template>

    <xsl:template match="cda:observation[cda:templateId/@root = '1.2.276.0.76.3.1.195.10.74']">
        <xsl:comment>Combination of transfer and discharge types</xsl:comment>
        <xsl:variable name="code" select="cda:value/@code"/>

        <xsl:variable name="verlegung" select="'37729005,429202003,1,3,5,7'"/>
        <xsl:variable name="entlassung" select="'371828006,225928004,34596002,306689006,306205009,307374004,25675004,183515008,6,74964007'"/>

        <xsl:variable name="isDis"
                      select="contains(concat(',',$entlassung,','),concat(',',$code,','))"/>
        <xsl:variable name="isTrans"
                      select="contains(concat(',',$verlegung,','),concat(',',$code,','))"/>

        <xsl:variable name="eff"
                      select="cda:effectiveTime | ../cda:effectiveTime"/>

        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="$isDis"><xsl:value-of select="concat($AKTIN-Prefix,'DISCHARGE:')"/><xsl:value-of select="$code"/></xsl:when>
                    <xsl:when test="$isTrans"><xsl:value-of select="concat($AKTIN-Prefix,'TRANSFER:')"/><xsl:value-of select="$code"/></xsl:when>
                </xsl:choose>
            </xsl:attribute>

            <xsl:if test="$eff/@value or $eff/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:choose>
                        <xsl:when test="$eff/@value">
                            <xsl:value-of select="func:ConvertDateTime($eff/@value)"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="func:ConvertDateTime($eff/cda:low/@value)"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </xsl:if>

            <xsl:apply-templates select="cda:templateId[1]" mode="embedTimes"/>
        </fact>
    </xsl:template>
    <!-- GLOBAL TEMPLATES -->


    <!-- Generic GetConcept-Functions -->
    <xsl:template name="templateGetConceptCode">
        <xsl:attribute name="concept">
            <xsl:value-of select="concat(func:GetCodePrefix(../cda:code/@codeSystem), ../cda:code/@code)" />
        </xsl:attribute>
        <xsl:choose>
            <xsl:when test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:when>
            <xsl:when test="../cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                </xsl:attribute>
            </xsl:when>
        </xsl:choose>
        <xsl:call-template name="GetNumericValues" />
        <xsl:call-template name="GetEffectiveTimes" />
    </xsl:template>




    <xsl:template name="templateGetConceptValue">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.439'"><xsl:value-of select="$CEDIS-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='75322-8'"><xsl:value-of select="$CEDIS-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='11459-5'"><xsl:value-of select="$Transport-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='88068-2'"><xsl:value-of select="$SubstanceInfluence-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='RPPL'"><xsl:value-of select="$AKTIN-Prefix" />RPPL:</xsl:when>
                <xsl:when test="../cda:code/@code='SPPL'"><xsl:value-of select="$AKTIN-Prefix" />SPPL:</xsl:when>
                <xsl:when test="../cda:code/@code='1255867001'"><xsl:value-of select="$MTS-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='1255873000'"><xsl:value-of select="$ESI-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='273887006'"><xsl:value-of select="$GenericTriage-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='SCTPOCC-1269489004'"><xsl:value-of select="$MTS-Prefix" />DIAG:</xsl:when>
                <xsl:when test="../cda:code/@code='SCTPOCC-49499008'"><xsl:value-of select="$MTS-Prefix" />IND:RED:</xsl:when>
                <xsl:when test="../cda:code/@code='SCTPOCC-25876001'"><xsl:value-of select="$MTS-Prefix" />IND:ORANGE:</xsl:when>
                <xsl:when test="../cda:code/@code='SCTPOCC-103391001'"><xsl:value-of select="$MTS-Prefix" />IND:YELLOW:</xsl:when>
                <xsl:when test="../cda:code/@code='SCTPOCC-394848005'"><xsl:value-of select="$MTS-Prefix" />IND:GREEN:</xsl:when>
                <xsl:otherwise><xsl:value-of select="../cda:code/@code" />:</xsl:otherwise>  <!--
                Default Prefix code/code -->
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="../cda:value/@code">
                    <xsl:value-of select="../cda:value/@code" />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="../cda:value/@nullFlavor" />
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
        <xsl:choose>
            <xsl:when test="../cda:effectiveTime/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                </xsl:attribute>
            </xsl:when>
            <xsl:when test="../cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                </xsl:attribute>
            </xsl:when>
        </xsl:choose>
        <xsl:if test="../cda:value/@codeSystem">
            <modifier>
                <xsl:attribute name="code">codeSystem</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:value/@codeSystem" /> <!-- mostly static/fixed -->
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:value/@displayName">
            <modifier>
                <xsl:attribute name="code">displayName</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:value/@displayName" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:call-template name="GetEffectiveTimes" />
    </xsl:template>

    <xsl:template name="templateGetConceptMethod">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:code/@code='273887006'"><xsl:value-of select="$TriageSystem-Prefix" /></xsl:when>
                <xsl:otherwise><xsl:value-of select="../cda:code/@code" />:</xsl:otherwise>  <!-- Default Prefix code/code -->
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="../cda:methodCode/@code">
                    <xsl:value-of select="../cda:methodCode/@code" />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="../cda:methodCode/@nullFlavor" />
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
        <xsl:if test="../cda:methodCode/@codeSystem">
            <modifier>
                <xsl:attribute name="code">codeSystem</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:methodCode/@codeSystem" /> <!-- mostly static/fixed -->
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:methodCode/@displayName">
            <modifier>
                <xsl:attribute name="code">displayName</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:methodCode/@displayName" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:call-template name="GetEffectiveTimes" />
    </xsl:template>


    <xsl:template name="GetEffectiveTimes">
        <xsl:if test="../cda:effectiveTime/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTime</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:effectiveTime/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTime</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if test="../cda:effectiveTime/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTimeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:low/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:effectiveTime/cda:low/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTimeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:low/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if test="../cda:effectiveTime/cda:high/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTimeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:high/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:effectiveTime/cda:high/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTimeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:high/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if test="../cda:time/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">timeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:low/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:time/cda:low/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">timeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:low/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if test="../cda:time/cda:high/@value">
            <modifier>
                <xsl:attribute name="code">timeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:high/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if test="../cda:time/cda:high/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">timeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:high/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>
    </xsl:template>

    <xsl:template name="GetNumericValues">
        <xsl:if test="../cda:value/@unit">
            <value>
                <xsl:attribute name="unit">
                    <xsl:value-of select="../cda:value/@unit" />
                </xsl:attribute>
                <xsl:attribute name="xsi:type">numeric</xsl:attribute>
                <xsl:value-of select="../cda:value/@value" />
            </value>
        </xsl:if>
    </xsl:template>

    <!-- Data/Time Conversions -->
    <xsl:function name="func:ConvertDateTime">
        <xsl:param name="DateTimeString"></xsl:param>
        <xsl:if test="$DateTimeString">
            <!-- YYYYMMDDhhmmss.SSS±ZZzz ToDo: Timezone -->
            <!-- [0-9]{1,8} | ( [0-9]{9,14} | [0-9]{14,14}\.[0-9]+ )
                 ([+\-][0-9]{1,4})?                                  -->
            <xsl:choose>
                <xsl:when test="string-length($DateTimeString) = 4"><xsl:value-of select="$DateTimeString" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 6"><xsl:value-of select="substring($DateTimeString,1,4)" />-<xsl:value-of select="substring($DateTimeString,5,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 8"><xsl:value-of select="substring($DateTimeString,1,4)" />-<xsl:value-of select="substring($DateTimeString,5,2)" />-<xsl:value-of select="substring($DateTimeString,7,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 10"><xsl:value-of select="substring($DateTimeString,1,4)" />-<xsl:value-of select="substring($DateTimeString,5,2)" />-<xsl:value-of select="substring($DateTimeString,7,2)" />T<xsl:value-of select="substring($DateTimeString,9,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 12"><xsl:value-of select="substring($DateTimeString,1,4)" />-<xsl:value-of select="substring($DateTimeString,5,2)" />-<xsl:value-of select="substring($DateTimeString,7,2)" />T<xsl:value-of select="substring($DateTimeString,9,2)" />:<xsl:value-of select="substring($DateTimeString,11,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) > 13"><xsl:value-of select="substring($DateTimeString,1,4)" />-<xsl:value-of select="substring($DateTimeString,5,2)" />-<xsl:value-of select="substring($DateTimeString,7,2)" />T<xsl:value-of select="substring($DateTimeString,9,2)" />:<xsl:value-of select="substring($DateTimeString,11,2)" />:<xsl:value-of select="substring($DateTimeString,13,2)" /></xsl:when>
                <xsl:otherwise>
                    <xsl:message terminate="yes">XSL-Transformation Error: Datetime Format not recognized</xsl:message>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>

    <!-- Generic Code System Prefix Function -->
    <xsl:function name="func:GetCodePrefix">
        <xsl:param name="codeSystem"/>
        <xsl:choose>
            <xsl:when test="$codeSystem = '2.16.840.1.113883.6.96'"><xsl:value-of select="$SNOMED-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '2.16.840.1.113883.6.1'"><xsl:value-of select="$LOINC-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '1.2.276.0.76.3.1.195.5.99'"><xsl:value-of select="$SNOMED-Post-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '2.16.840.1.113883.6.3'"><xsl:value-of select="$ICD10-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '2.16.840.1.113883.9.96'"><xsl:value-of select="$LOIRC-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '1.2.276.0.76.3.1.195.5.98'"><xsl:value-of select="$Future-LOINC-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '1.2.276.0.76.3.1.195.5.105'"><xsl:value-of select="$TravelAbroad-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '1.0.3166.1.2.2'"><xsl:value-of select="$ISO3166-1-Prefix"/></xsl:when>
            <xsl:when test="$codeSystem = '1.2.276.0.76.3.1.195.5.60'"><xsl:value-of select="$SMED-Prefix"/></xsl:when>
            <!--            Unknown Code System (UCS)-->
            <xsl:otherwise>UCS:</xsl:otherwise>
        </xsl:choose>
    </xsl:function>

</xsl:stylesheet>
