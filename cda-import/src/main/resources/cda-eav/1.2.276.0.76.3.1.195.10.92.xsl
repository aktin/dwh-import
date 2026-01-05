<?xml version="1.0" encoding="UTF-8"?>
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

    <xsl:template match="/">
        <eav-data>
            <meta>
                <etl-strategy>insert</etl-strategy>
                <source>
                    <xsl:attribute name="timestamp">2024-01-01T00:00:00</xsl:attribute>
                    <xsl:attribute name="id">TEST_SOURCE_ID</xsl:attribute>
                </source>
            </meta>

            <patient id="TEST_PATIENT_ID">
                <gender>unknown</gender>
                <birthdate>2000-01-01</birthdate>

                <encounter id="TEST_ENCOUNTER_ID">
                    <start>2024-01-01T10:00:00</start>

                    <fact concept="TEST:DEBUG">
                        <value xsi:type="string">Transformation Successful</value>
                    </fact>
                </encounter>
            </patient>
        </eav-data>
    </xsl:template>

</xsl:stylesheet>