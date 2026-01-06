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

    <!-- MAIN Template -->

    <xsl:template match="/">
        <eav-data>
            <meta>
                <etl-strategy>insert</etl-strategy>
                <source>
                    <xsl:attribute name="timestamp">
                        <xsl:value-of
                            select="func:ConvertDateTime(/cda:ClinicalDocument/cda:effectiveTime/@value)" />
                    </xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:call-template name="import-id" />
                    </xsl:attribute>
                </source>
            </meta>
            <patient>
                <xsl:attribute name="id">
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole" />
                </xsl:attribute>
                <!--
                <given-name>information privacy</given-name>
                <surname>information privacy</surname>
                 -->
                <gender>
                    <xsl:call-template name="EAV-Geschlecht"></xsl:call-template>
                </gender>
                <xsl:if
                    test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value">
                    <!-- Date of Birth  HL7.TS =>  	YYYY[MM[DD]] -->
                    <birthdate>
                        <xsl:value-of
                            select="func:ConvertDateTime(/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value)" />
                    </birthdate>
                </xsl:if>
                <!-- Discharge Disposition Code = 'Tod' ; then EncounterEnd=Death Date; If no
                Discharge Date = empty deceased-Element is sufficient for I2B2 -->
                <xsl:if
                    test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode/@code='1'">
                    <deceased>
                        <xsl:if
                            test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value">
                            <xsl:value-of
                                select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value)" />
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
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:postalCode" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr/cda:city" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:effectiveTime" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode" />
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:participant/cda:associatedEntity" />
                    <!-- Call all fact templates at body/component/section level -->
                    <xsl:apply-templates
                        select="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section" />
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
        <xsl:value-of
            select="aktin:encounter-hash(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@root, /cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@extension)" />
    </xsl:template>

    <!-- Internal encounter indicator // optional information for mapping discharge data, not
    evaluated -->
    <xsl:template match="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[2]">
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />Fallkennzeichen</xsl:attribute>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="aktin:encounter-hash(./@root, ./@extension)" />
            </value>
        </fact>
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
                <xsl:value-of
                    select="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.5']/@extension" />
            </value>
        </fact>
        <!-- VK-Nummer -->
        <xsl:if
            test="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.7']">
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />VKNR</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of
                        select="./cda:scopingOrganization/cda:id[@root='1.2.276.0.76.4.7']/@extension" />
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
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix" />ZIPCODE</xsl:attribute>
            <value>
                <!-- <xsl:attribute name="unit"></xsl:attribute> -->
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="." />
            </value>
        </fact>
    </xsl:template>

    <!-- Evaluation of the city name (for district/municipality code) currently not planned
    <xsl:template match="cda:recordTarget/cda:patientRole/cda:addr/cda:city">
        <xsl:comment>Patient address (city)</xsl:comment>
        <fact>
            <xsl:attribute name="concept"><xsl:value-of select="$AKTIN-Prefix"/>Ort</xsl:attribute>
            <value>
                <xsl:attribute name="xsi:type">string</xsl:attribute>
                <xsl:value-of select="."/>
            </value>
        </fact>
    </xsl:template> -->

    <!-- Rankin Scale as individual concept (0..6)-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4045']">
        <!--
        <xsl:comment>Rankin Scale (concept code)</xsl:comment>
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

    <!-- Patient gender
    I2B2: no restrictions
    EAV: female, male, indeterminate
    Dataset: M/F/UN + any NullFlavor (min. "unknown" and "not specified")

    <xsl:template match="cda:patient/cda:administrativeGenderCode">
        <xsl:comment>Patient gender</xsl:comment>
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

    <xsl:template name="import-id">
        <!-- generate a unique id for encounter and module  -->
        <xsl:value-of
            select="aktin:import-hash(/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@root,/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension,/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@root,/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:id[1]/@extension,$aktin.module.id)" />
    </xsl:template>

    <xsl:template name="EAV-Geschlecht">
        <xsl:choose>
            <xsl:when
                test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='F'">
        female</xsl:when>
            <xsl:when
                test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='M'">
        male</xsl:when>
            <xsl:when
                test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code='UN'">
        indeterminate</xsl:when>
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
                        <xsl:value-of select="$Schwangerschaft-Prefix" /><xsl:value-of
                            select="../cda:value/@code" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$Schwangerschaft-Prefix" /><xsl:value-of
                            select="../cda:value/@nullFlavor" />
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
                    <xsl:when test="../@negationInd = 'true'"><xsl:value-of select="$LOINC-Prefix" />
        11458-7:NEG</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and not (../@nullFlavor = 'NI')"><xsl:value-of
                            select="$LOINC-Prefix" />11458-7</xsl:when>
                    <xsl:when test="../@negationInd = 'false' and  ../@nullFlavor = 'NI'"><xsl:value-of
                            select="$LOINC-Prefix" />11458-7:NI</xsl:when>
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

    <!-- Isolation -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4068']">
        <xsl:comment>Isolation</xsl:comment>
        <xsl:if test="../cda:code/@code = 'RISO'"> <!-- Reverse Isolation -->
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix" />RISO</xsl:attribute>
                <xsl:call-template name="GetEffectiveTimes" /> <!-- No times in Isolation -->
            </fact>
        </xsl:if>
        <xsl:if
            test="../cda:code/@code = 'ISO' and ../../cda:procedure/@negationInd = 'true'"> <!-- No
            Isolation -->
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix" />ISO:NEG</xsl:attribute>
                <xsl:call-template name="GetEffectiveTimes" /> <!-- No times in Isolation -->
            </fact>
        </xsl:if>
        <xsl:if
            test="../cda:code/@code = 'ISO' and not(../../cda:procedure/@negationInd = 'true')">
            <fact>
                <xsl:attribute name="concept"><xsl:value-of select="$Isolation-Prefix" />ISO</xsl:attribute>
                <xsl:call-template name="GetEffectiveTimes" /> <!-- No times in Isolation -->
            </fact>
        </xsl:if>
    </xsl:template>

    <!-- Isolation reason -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4069']">
        <xsl:comment>Isolation reason</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="../cda:value/@code">
                        <xsl:value-of select="$IsolationReason-Prefix" /><xsl:value-of
                            select="../cda:value/@code" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$IsolationReason-Prefix" /><xsl:value-of
                            select="../cda:value/@nullFlavor" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:call-template name="GetEffectiveTimes" /> <!-- No times in Isolation -->
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
    LOINC code is chosen differently in the CDA
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
                    <xsl:value-of select="$TargetSite-Prefix" /><xsl:value-of
                        select="../cda:targetSiteCode/@code" />
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
                    <xsl:value-of select="$TargetSite-Prefix" /><xsl:value-of
                        select="../cda:targetSiteCode/@code" />
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

    <!-- Referral -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3046']">
        <xsl:comment>Referral</xsl:comment>
        <fact>
            <xsl:if test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code">
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Zuweiser-Prefix" /><xsl:value-of
                        select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code" />
                </xsl:attribute>
            </xsl:if>
            <xsl:if
                test="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@nullFlavor">
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Zuweiser-Prefix" /><xsl:value-of
                        select="../cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@nullFlavor" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes" /> <!-- no times in referral -->
        </fact>
    </xsl:template>

    <!-- Referring physician/entity -->
    <!-- Not provided on the form / free text -->

    <!-- Initial assessment -->
    <!-- incl. 770 time of initial assessment
         incl. 804 initial assessment system used
    -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4042']">
        <!-- <xsl:comment>Initial assessment system used</xsl:comment> => Information contained in
        23/770 -->
        <xsl:comment>Initial assessment system used/Initial assessment/Time of initial assessment</xsl:comment>
        <fact>
            <xsl:attribute name="concept">
                <xsl:choose>
                    <xsl:when test="not(../cda:value)"><xsl:value-of select="$AKTIN-Prefix" />
        ASSESSMENT</xsl:when>
                    <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.438'">MTS:<xsl:value-of
                            select="../cda:value/@code" /></xsl:when>
                    <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.437'">ESI:<xsl:value-of
                            select="../cda:value/@code" /></xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <xsl:if test="../cda:effectiveTime/cda:low/@value">
                <xsl:attribute name="start">
                    <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="GetEffectiveTimes"></xsl:call-template>
        </fact>
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
        <xsl:for-each
            select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4066']">
            <fact>
                <xsl:attribute name="concept">
                    <xsl:value-of select="$Allergie-Prefix" />
                    <xsl:choose>
                        <xsl:when
                            test="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code">
                            <xsl:value-of
                                select="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of
                                select="../cda:participant/cda:participantRole/cda:playingEntity/cda:code/@nullFlavor" />
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:if
                        test="../@negationInd = 'true'">:NEG</xsl:if>
                </xsl:attribute>
                <xsl:if test="../cda:effectiveTime/cda:low/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of
                            select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
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
                    <xsl:value-of
                        select="func:ConvertDateTime(../cda:entry/cda:act/cda:effectiveTime/cda:low/@value)" />
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
                    <xsl:value-of
                        select="func:ConvertDateTime(../cda:entry/cda:act/cda:effectiveTime/cda:low/@value)" />
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

    <!-- Findings / free text-->

    <!-- Procedure / free text-->

    <!-- Final diagnoses / free text-->
    <!-- Final diagnoses-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3055']">
        <xsl:comment>Final diagnoses</xsl:comment>
        <xsl:for-each
            select="../cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4049']">
            <fact>
                <xsl:choose>
                    <xsl:when test="../cda:value/@code">
                        <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix" /><xsl:value-of
                                select="../cda:value/@code" /></xsl:attribute>
                        <xsl:if
                            test="../cda:effectiveTime/cda:low/@value">
                            <xsl:attribute name="start">
                                <xsl:value-of
                                    select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                            </xsl:attribute>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="concept"><xsl:value-of select="$ICD10GM-Prefix" />NULL<xsl:value-of
                                select="position()" /></xsl:attribute>
                        <xsl:if
                            test="../cda:effectiveTime/cda:low/@value">
                            <xsl:attribute name="start">
                                <xsl:value-of
                                    select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                            </xsl:attribute>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if
                    test="../cda:value/cda:qualifier/cda:value[@codeSystem='1.2.276.0.76.3.1.1.5.1.21']/@code">
                    <modifier>
                        <xsl:attribute name="code">
                            <xsl:value-of select="$Diagnosis-Prefix" /><xsl:value-of
                                select="../cda:value/cda:qualifier/cda:value[@codeSystem='1.2.276.0.76.3.1.1.5.1.21']/@code" />
                        </xsl:attribute>
                    </modifier>
                </xsl:if>
                <xsl:if test="../../cda:sequenceNumber/@value='1'">
                    <modifier>
                        <xsl:attribute name="code"><xsl:value-of select="$Diagnosis-Prefix" />F</xsl:attribute>
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

        <xsl:if
            test="../cda:effectiveTime/cda:width/@value">
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
        <xsl:for-each
            select="../cda:entryRelationship/cda:observation/cda:templateId[@root='1.2.276.0.76.10.4073']">
            <xsl:if test="../cda:value">
                <fact>
                    <xsl:attribute name="concept">
                        <xsl:value-of select="$Pathogen-Prefix" />
                        <xsl:choose>
                            <xsl:when test="../cda:value/@code">
                                <xsl:value-of select="../cda:value/@code" /><xsl:if
                                    test="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']">
        :<xsl:value-of
                                        select="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']/@code" /></xsl:if><xsl:if
                                    test="../@negationInd">:NEG</xsl:if>
                            </xsl:when>
                            <xsl:when test="../cda:value/@nullFlavor">
                                <xsl:value-of select="../cda:value/@nullFlavor" />:<xsl:value-of
                                    select="../cda:value/@code" /><xsl:if
                                    test="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']">
        :<xsl:value-of
                                        select="../cda:value/cda:qualifier/cda:value[../cda:name/@code='FSTAT']/@code" /></xsl:if>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:attribute>

                    <xsl:if test="../cda:effectiveTime/cda:low/@value">
                        <xsl:attribute name="start">
                            <xsl:value-of
                                select="func:ConvertDateTime(../cda:effectiveTime/cda:low/@value)" />
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:call-template name="GetEffectiveTimes" />
                </fact>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!-- insurance number -->
    <!-- see insurance name / insurance carrier -->

    <!-- Time of transfer / discharge -->
    <!-- incl. admission date/time
        Admission/discharge does not need to be represented as a concept again, as it is already contained
    in i2b2 metadata
    <xsl:template match="cda:componentOf/cda:encompassingEncounter/cda:effectiveTime">
        <xsl:if test="./cda:high/@value">
            <xsl:comment>Time of transfer / discharge</xsl:comment>
            <fact>
                <xsl:attribute name="concept"><xsl:value-of
    select="$AKTIN-Prefix"/>ZeitpunktVerlegung</xsl:attribute>
                <xsl:if test="./cda:high/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(./cda:high/@value)"/>
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes"/>
            </fact>
        </xsl:if>
        <xsl:if test="./cda:low/@value">
            <xsl:comment>Admission date/time</xsl:comment>
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
    <!-- Template for visit/encounter -->
    <xsl:template name="ZeitpunktEntlassungOptional">
        <xsl:variable name="ts"
            select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value" />
        <xsl:if
            test="$ts">
            <end>
                <xsl:value-of select="func:ConvertDateTime($ts)" />
            </end>
        </xsl:if>
    </xsl:template>

    <!-- Template for visit/encounter -->
    <xsl:template name="ZeitpunktAufnahme">
        <xsl:value-of
            select="func:ConvertDateTime(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low/@value)" />
    </xsl:template>


    <!-- Means of transport -->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.4037']">
        <xsl:comment>Means of transport</xsl:comment>
        <fact>
            <xsl:call-template name="templateGetConceptValue" />
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
                    <xsl:value-of
                        select="func:ConvertDateTime(../cda:effectiveTime/cda:high/@value)" />
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

    <!-- Diagnostics @negationInd -->
    <!-- Diagnostics normal findings -->
    <!-- Diagnostics time-->
    <xsl:template match="cda:templateId[@root='1.2.276.0.76.10.3050']">
        <xsl:for-each select="../cda:entry/cda:observation/cda:templateId">
            <xsl:comment><xsl:value-of select="../cda:code/@displayName"/></xsl:comment>
            <fact>
                <xsl:attribute name="concept">
                    <xsl:choose>
                        <xsl:when test="../@negationInd"><xsl:value-of select="$LOINC-Prefix" /><xsl:value-of
                                select="../cda:code/@code" />:NEG</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$LOINC-Prefix" /><xsl:value-of
                                select="../cda:code/@code" />
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <xsl:if test="../cda:effectiveTime/@value">
                    <xsl:attribute name="start">
                        <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
                    </xsl:attribute>
                </xsl:if>
                <xsl:call-template name="GetEffectiveTimes" />
                <modifier>   <!-- More expressions +NullFlavor available than queried (only Yes/No+NAV
                    or UNK)-->
                    <xsl:attribute name="code">
                        <xsl:choose>
                            <xsl:when test="../cda:value/@code">
                                <xsl:value-of select="$Diagnostic-Prefix" /><xsl:value-of
                                    select="../cda:value/@code" />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$Diagnostic-Prefix" /><xsl:value-of
                                    select="../cda:value/@nullFlavor" />
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </modifier>
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
                <xsl:value-of select="$ProjectVersion-Prefix" /><xsl:value-of
                    select="$aktin.release.version" />
            </xsl:attribute>
        </fact>
        <fact>
            <xsl:attribute name="concept">
                <xsl:value-of select="$TemplateVersion-Prefix" /><xsl:value-of
                    select="$aktin.module.template" />
            </xsl:attribute>
        </fact>
    </xsl:template>


    <!-- GLOBAL TEMPLATES -->


    <!-- Generic GetConcept-Functions -->
    <xsl:template name="templateGetConceptCode">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:code/@codeSystem='2.16.840.1.113883.6.1'"><xsl:value-of
                        select="$LOINC-Prefix" /></xsl:when>
            </xsl:choose>
            <xsl:value-of
                select="../cda:code/@code" />
        </xsl:attribute>
        <xsl:if
            test="../cda:effectiveTime/@value">
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
            </xsl:attribute>
        </xsl:if>
        <xsl:call-template
            name="GetNumericValues" />
        <xsl:call-template name="GetEffectiveTimes" />
    </xsl:template>


    <xsl:template name="templateGetConceptValue">
        <xsl:attribute name="concept">
            <xsl:choose>
                <xsl:when test="../cda:value/@codeSystem='1.2.276.0.76.5.439'"><xsl:value-of
                        select="$CEDIS-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='75322-8'"><xsl:value-of select="$CEDIS-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='11459-5'"><xsl:value-of
                        select="$Transport-Prefix" /></xsl:when>
                <xsl:when test="../cda:code/@code='RPPL'"><xsl:value-of select="$AKTIN-Prefix" />
        RPPL:</xsl:when>
                <xsl:when test="../cda:code/@code='SPPL'"><xsl:value-of select="$AKTIN-Prefix" />
        SPPL:</xsl:when>
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
        <xsl:if
            test="../cda:effectiveTime/@value">
            <xsl:attribute name="start">
                <xsl:value-of select="func:ConvertDateTime(../cda:effectiveTime/@value)" />
            </xsl:attribute>
        </xsl:if>
        <xsl:if
            test="../cda:value/@codeSystem">
            <modifier>
                <xsl:attribute name="code">codeSystem</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:value/@codeSystem" /> <!-- mostly static/fixed -->
                </value>
            </modifier>
        </xsl:if>
        <xsl:if
            test="../cda:value/@displayName">
            <modifier>
                <xsl:attribute name="code">displayName</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:value/@displayName" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:call-template
            name="GetEffectiveTimes" />
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
        <xsl:if
            test="../cda:effectiveTime/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTime</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if
            test="../cda:effectiveTime/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTimeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:low/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if
            test="../cda:effectiveTime/cda:low/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTimeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:low/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if
            test="../cda:effectiveTime/cda:high/@value">
            <modifier>
                <xsl:attribute name="code">effectiveTimeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:high/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if
            test="../cda:effectiveTime/cda:high/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">effectiveTimeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:effectiveTime/cda:high/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if
            test="../cda:time/cda:low/@value">
            <modifier>
                <xsl:attribute name="code">timeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:low/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if
            test="../cda:time/cda:low/@nullFlavor">
            <modifier>
                <xsl:attribute name="code">timeLow</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:low/@nullFlavor" />
                </value>
            </modifier>
        </xsl:if>

        <xsl:if
            test="../cda:time/cda:high/@value">
            <modifier>
                <xsl:attribute name="code">timeHigh</xsl:attribute>
                <value>
                    <xsl:attribute name="xsi:type">string</xsl:attribute>
                    <xsl:value-of select="../cda:time/cda:high/@value" />
                </value>
            </modifier>
        </xsl:if>
        <xsl:if
            test="../cda:time/cda:high/@nullFlavor">
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
                <xsl:when test="string-length($DateTimeString) = 4"><xsl:value-of
                        select="$DateTimeString" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 6"><xsl:value-of
                        select="substring($DateTimeString,1,4)" />-<xsl:value-of
                        select="substring($DateTimeString,5,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 8"><xsl:value-of
                        select="substring($DateTimeString,1,4)" />-<xsl:value-of
                        select="substring($DateTimeString,5,2)" />-<xsl:value-of
                        select="substring($DateTimeString,7,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 10"><xsl:value-of
                        select="substring($DateTimeString,1,4)" />-<xsl:value-of
                        select="substring($DateTimeString,5,2)" />-<xsl:value-of
                        select="substring($DateTimeString,7,2)" />T<xsl:value-of
                        select="substring($DateTimeString,9,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) = 12"><xsl:value-of
                        select="substring($DateTimeString,1,4)" />-<xsl:value-of
                        select="substring($DateTimeString,5,2)" />-<xsl:value-of
                        select="substring($DateTimeString,7,2)" />T<xsl:value-of
                        select="substring($DateTimeString,9,2)" />:<xsl:value-of
                        select="substring($DateTimeString,11,2)" /></xsl:when>
                <xsl:when test="string-length($DateTimeString) > 13"><xsl:value-of
                        select="substring($DateTimeString,1,4)" />-<xsl:value-of
                        select="substring($DateTimeString,5,2)" />-<xsl:value-of
                        select="substring($DateTimeString,7,2)" />T<xsl:value-of
                        select="substring($DateTimeString,9,2)" />:<xsl:value-of
                        select="substring($DateTimeString,11,2)" />:<xsl:value-of
                        select="substring($DateTimeString,13,2)" /></xsl:when>
                <xsl:otherwise>
                    <xsl:message terminate="yes">XSL-Transformation Error: Datetime Format not
        recognized</xsl:message>
                </xsl:otherwise>
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