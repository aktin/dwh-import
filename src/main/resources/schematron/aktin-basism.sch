<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <title> Schematron file for  - Basis-Modul </title>
   <ns uri="urn:hl7-org:v3" prefix="hl7"/>
   <ns uri="urn:hl7-org:v3" prefix="cda"/>
   <ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
   <!-- Add extra namespaces -->
   <ns uri="http://www.w3.org/XML/1998/namespace" prefix="xml"/>
   <!-- Include realm specific schematron -->
   <!-- Include datatype abstract schematrons -->
   <pattern>
      <include href="include/DTr1_ANY.sch"/>
      <include href="include/DTr1_AD.sch"/>
      <include href="include/DTr1_AD.NL.sch"/>
      <include href="include/DTr1_AD.DE.sch"/>
      <include href="include/DTr1_AD.EPSOS.sch"/>
      <include href="include/DTr1_BIN.sch"/>
      <include href="include/DTr1_ED.sch"/>
      <include href="include/DTr1_ST.sch"/>
      <include href="include/DTr1_SC.sch"/>
      <include href="include/DTr1_ENXP.sch"/>
      <include href="include/DTr1_ADXP.sch"/>
      <include href="include/DTr1_thumbnail.sch"/>
      <include href="include/DTr1_BL.sch"/>
      <include href="include/DTr1_BN.sch"/>
      <include href="include/DTr1_CD.sch"/>
      <include href="include/DTr1_CE.sch"/>
      <include href="include/DTr1_CV.sch"/>
      <include href="include/DTr1_CO.sch"/>
      <include href="include/DTr1_CO.EPSOS.sch"/>
      <include href="include/DTr1_PQR.sch"/>
      <include href="include/DTr1_CV.EPSOS.sch"/>
      <include href="include/DTr1_EIVL.event.sch"/>
      <include href="include/DTr1_CE.EPSOS.sch"/>
      <include href="include/DTr1_CD.EPSOS.sch"/>
      <include href="include/DTr1_CR.sch"/>
      <include href="include/DTr1_CS.sch"/>
      <include href="include/DTr1_CS.LANG.sch"/>
      <include href="include/DTr1_EN.sch"/>
      <include href="include/DTr1_ON.sch"/>
      <include href="include/DTr1_PN.sch"/>
      <include href="include/DTr1_TN.sch"/>
      <include href="include/DTr1_II.sch"/>
      <include href="include/DTr1_II.NL.BSN.sch"/>
      <include href="include/DTr1_II.NL.URA.sch"/>
      <include href="include/DTr1_II.NL.UZI.sch"/>
      <include href="include/DTr1_II.NL.AGB.sch"/>
      <include href="include/DTr1_II.AT.DVR.sch"/>
      <include href="include/DTr1_II.AT.ATU.sch"/>
      <include href="include/DTr1_II.AT.BLZ.sch"/>
      <include href="include/DTr1_II.AT.KTONR.sch"/>
      <include href="include/DTr1_II.EPSOS.sch"/>
      <include href="include/DTr1_QTY.sch"/>
      <include href="include/DTr1_INT.sch"/>
      <include href="include/DTr1_IVXB_INT.sch"/>
      <include href="include/DTr1_SXCM_INT.sch"/>
      <include href="include/DTr1_IVL_INT.sch"/>
      <include href="include/DTr1_INT.NONNEG.sch"/>
      <include href="include/DTr1_INT.POS.sch"/>
      <include href="include/DTr1_MO.sch"/>
      <include href="include/DTr1_IVXB_MO.sch"/>
      <include href="include/DTr1_SXCM_MO.sch"/>
      <include href="include/DTr1_IVL_MO.sch"/>
      <include href="include/DTr1_PQ.sch"/>
      <include href="include/DTr1_IVXB_PQ.sch"/>
      <include href="include/DTr1_SXCM_PQ.sch"/>
      <include href="include/DTr1_IVL_PQ.sch"/>
      <include href="include/DTr1_REAL.sch"/>
      <include href="include/DTr1_IVXB_REAL.sch"/>
      <include href="include/DTr1_SXCM_REAL.sch"/>
      <include href="include/DTr1_IVL_REAL.sch"/>
      <include href="include/DTr1_REAL.NONNEG.sch"/>
      <include href="include/DTr1_REAL.POS.sch"/>
      <include href="include/DTr1_TS.sch"/>
      <include href="include/DTr1_IVXB_TS.sch"/>
      <include href="include/DTr1_SXCM_TS.sch"/>
      <include href="include/DTr1_IVL_TS.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_PIVL_TS.sch"/>
      <include href="include/DTr1_EIVL_TS.sch"/>
      <include href="include/DTr1_SXPR_TS.sch"/>
      <include href="include/DTr1_TS.DATE.sch"/>
      <include href="include/DTr1_TS.DATE.FULL.sch"/>
      <include href="include/DTr1_TS.DATE.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIME.MIN.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_RTO_PQ_PQ.sch"/>
      <include href="include/DTr1_RTO_QTY_QTY.sch"/>
      <include href="include/DTr1_RTO.sch"/>
      <include href="include/DTr1_SD.TEXT.sch"/>
      <include href="include/DTr1_URL.sch"/>
      <include href="include/DTr1_TEL.sch"/>
      <include href="include/DTr1_TEL.AT.sch"/>
      <include href="include/DTr1_TEL.EPSOS.sch"/>
      <include href="include/DTr1_TEL.NL.EXTENDED.sch"/>
      <include href="include/DTr1_URL.NL.EXTENDED.sch"/>
   </pattern>

   <!-- Include the project schematrons related to scenario basism -->

   <!-- EmergencymedicineNoteCDAdocument -->
   <include href="include/1.2.276.0.76.10.1015-2014-09-18T000000.sch"/>

   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->



   <!-- includes -->
   <!-- VitalSignsSection -->
   <include href="include/1.2.276.0.76.10.3044-2014-09-16T000000.sch"/>
   <!-- Transportmethod -->
   <include href="include/1.2.276.0.76.10.3045-2015-01-10T000000.sch"/>
   <!-- Typeofreferralsource -->
   <include href="include/1.2.276.0.76.10.3046-2015-01-10T000000.sch"/>
   <!-- ClinicalInformation -->
   <include href="include/1.2.276.0.76.10.3047-2015-01-10T000000.sch"/>
   <!-- Chiefcomplaintreasonforvisit -->
   <include href="include/1.2.276.0.76.10.3048-2015-01-10T000000.sch"/>
   <!-- Initialacuityassessment -->
   <include href="include/1.2.276.0.76.10.3049-2015-01-10T000000.sch"/>
   <!-- Relevantdiagnostictestsorlaboratorydata -->
   <include href="include/1.2.276.0.76.10.3050-2015-01-10T000000.sch"/>
   <!-- AllergienUnvertraeglichkeiten -->
   <include href="include/1.2.276.0.76.10.3051-2015-03-26T000000.sch"/>
   <!-- HistoryofPresentIllnessSection -->
   <include href="include/1.2.276.0.76.10.3053-2015-01-10T000000.sch"/>
   <!-- Patientcarenarrative -->
   <include href="include/1.2.276.0.76.10.3054-2015-01-10T000000.sch"/>
   <!-- Eddiagnosis -->
   <include href="include/1.2.276.0.76.10.3055-2015-01-10T000000.sch"/>
   <!-- Eddisposition -->
   <include href="include/1.2.276.0.76.10.3056-2015-01-10T000000.sch"/>
   <!-- Additionalmodulessection -->
   <include href="include/1.2.276.0.76.10.3057-2015-03-30T000000.sch"/>
   <!-- RespiratoryRate -->
   <include href="include/1.2.276.0.76.10.4030-2014-09-16T000000.sch"/>
   <!-- OxygenSaturation -->
   <include href="include/1.2.276.0.76.10.4031-2014-09-16T000000.sch"/>
   <!-- Systolicbloodpressure -->
   <include href="include/1.2.276.0.76.10.4032-2014-09-16T000000.sch"/>
   <!-- HeartRate -->
   <include href="include/1.2.276.0.76.10.4033-2014-09-16T000000.sch"/>
   <!-- GlasgowComaScale -->
   <include href="include/1.2.276.0.76.10.4034-2014-09-16T000000.sch"/>
   <!-- BodyTemperatureCore -->
   <include href="include/1.2.276.0.76.10.4035-2014-09-16T000000.sch"/>
   <!-- Painseverity -->
   <include href="include/1.2.276.0.76.10.4036-2014-09-16T000000.sch"/>
   <!-- Transportmethod -->
   <include href="include/1.2.276.0.76.10.4037-2015-03-03T000000.sch"/>
   <!-- Referralfrom -->
   <include href="include/1.2.276.0.76.10.4038-2015-03-03T000000.sch"/>
   <!-- Problemconcernactcedis -->
   <include href="include/1.2.276.0.76.10.4039-2015-03-03T000000.sch"/>
   <!-- Problemobservationcedis -->
   <include href="include/1.2.276.0.76.10.4040-2015-03-03T000000.sch"/>
   <!-- Acuityobservation -->
   <include href="include/1.2.276.0.76.10.4042-2015-03-03T000000.sch"/>
   <!-- Pregnancystatus -->
   <include href="include/1.2.276.0.76.10.4043-2015-03-03T000000.sch"/>
   <!-- Clostridiumtetaniimmunization -->
   <include href="include/1.2.276.0.76.10.4044-2015-03-03T000000.sch"/>
   <!-- Modifiedrankinscale -->
   <include href="include/1.2.276.0.76.10.4045-2015-03-03T000000.sch"/>
   <!-- Pupilsize -->
   <include href="include/1.2.276.0.76.10.4046-2015-03-03T000000.sch"/>
   <!-- Pupilreaction -->
   <include href="include/1.2.276.0.76.10.4047-2015-03-03T000000.sch"/>
   <!-- Problemconcernacteddiagnoses -->
   <include href="include/1.2.276.0.76.10.4048-2015-03-03T000000.sch"/>
   <!-- Problemobservationeddiagnosis -->
   <include href="include/1.2.276.0.76.10.4049-2015-03-03T000000.sch"/>
   <!-- Plainchestxray -->
   <include href="include/1.2.276.0.76.10.4050-2015-03-27T000000.sch"/>
   <!-- Radiographyofspine -->
   <include href="include/1.2.276.0.76.10.4051-2015-03-27T000000.sch"/>
   <!-- Pelvisxray -->
   <include href="include/1.2.276.0.76.10.4052-2015-03-27T000000.sch"/>
   <!-- Plainradiographylimbstructure -->
   <include href="include/1.2.276.0.76.10.4053-2015-03-27T000000.sch"/>
   <!-- Plainradiography -->
   <include href="include/1.2.276.0.76.10.4054-2015-03-27T000000.sch"/>
   <!-- Computedtomographyofentirehead -->
   <include href="include/1.2.276.0.76.10.4055-2015-03-27T000000.sch"/>
   <!-- Computedtomographyscanwholebody -->
   <include href="include/1.2.276.0.76.10.4056-2015-03-27T000000.sch"/>
   <!-- Laboratorytest -->
   <include href="include/1.2.276.0.76.10.4057-2015-03-27T000000.sch"/>
   <!-- Magneticresonanceimaging -->
   <include href="include/1.2.276.0.76.10.4058-2015-03-27T000000.sch"/>
   <!-- Bloodgasanalysis -->
   <include href="include/1.2.276.0.76.10.4059-2015-03-27T000000.sch"/>
   <!-- Urinalysisreagentstripwithoutmicroscopy -->
   <include href="include/1.2.276.0.76.10.4060-2015-03-27T000000.sch"/>
   <!-- Twelveleadelectrocardiogram -->
   <include href="include/1.2.276.0.76.10.4061-2015-03-27T000000.sch"/>
   <!-- Diagnosticultrasonography -->
   <include href="include/1.2.276.0.76.10.4062-2015-03-27T000000.sch"/>
   <!-- Computerizedaxialtomography -->
   <include href="include/1.2.276.0.76.10.4063-2015-03-27T000000.sch"/>
   <!-- Echocardiography -->
   <include href="include/1.2.276.0.76.10.4064-2015-03-27T000000.sch"/>
   <!-- Allergyconcernact -->
   <include href="include/1.2.276.0.76.10.4065-2015-03-27T000000.sch"/>
   <!-- Allergyintoleranceobservation -->
   <include href="include/1.2.276.0.76.10.4066-2014-06-09T000000.sch"/>
   <!-- Referralto -->
   <include href="include/1.2.276.0.76.10.4067-2015-03-30T000000.sch"/>
   <!-- Isolationprocedure -->
   <include href="include/1.2.276.0.76.10.4068-2015-03-30T000000.sch"/>
   <!-- Isolationindication -->
   <include href="include/1.2.276.0.76.10.4069-2014-06-09T000000.sch"/>
   <!-- Additionalexternalocuments -->
   <include href="include/1.2.276.0.76.10.4070-2015-03-30T000000.sch"/>
   <!-- ExternalDocumentReference -->
   <include href="include/1.2.276.0.76.10.4071-2015-03-30T000000.sch"/>

</schema>
