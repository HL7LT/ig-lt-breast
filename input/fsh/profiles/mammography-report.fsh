Profile: MammographyReport
//change to the ImDiagnosticReport when EU Imaging R5 is available
//Parent: ImDiagnosticReport  # from https://build.fhir.org/ig/hl7-eu/imaging-r5
//DiagnosticReportEuImaging come from https://build.fhir.org/ig/oijauregui/ehdsimaging-r5/en
Parent: ImDiagnosticReport
Id: mammography-lt
Title: "Mammography Diagnostic Report"
Description: "A Diagnostic Report for Mammography imaging studies (EU)."
* status = #final
//* category = http://terminology.hl7.org/CodeSystem/v2-0074#IMG "Diagnostic Imaging"
// * category contains documentType 0..1
// * category[documentType] = http://hl7.eu/fhir/imaging-r5/CodeSystem/Hl7EuDocumentTypes#imaging-report-v0-0-1 "Imaging Report V0.0.1"
// * category[diagnostic-service] =  http://terminology.hl7.org/CodeSystem/v2-0074#IMG "Diagnostic Imaging"
* code.coding contains doc-type 1..1
* code.coding[doc-type] = $sct#4231000179109 "Mammography report (record artifact)"
//* subject only Reference($lt-patient)
* encounter only Reference(LTBaseEncounter)

* result MS
* result ^slicing.discriminator[0].type = #value
* result ^slicing.discriminator[0].path = "url" 
* result ^slicing.rules = #open

* result contains birads 0..*
* result[birads] only Reference(BiradsAssessment) 
* result[birads] ^short = "Reference to the standardized BI-RADS Assessment Observation."

* result contains observation 0..*
* result[observation] only Reference(BreastObservationFinding)
* result[observation] ^short = "Reference to the observation of the breast observation."

* result contains mammographic 0..*
* result[mammographic] only Reference(MammographicExaminationFinding)
* result[mammographic] ^short = "Reference to the observation of the Mammographic Examination."

* result contains ultrasound 0..*
* result[ultrasound] only Reference(BreastUltrasoundFinding)
* result[ultrasound] ^short = "Reference to the observation of the Breast Ultrasound Finding."

// * result contains radiation 0..1
// * result[radiation] only Reference($radiation-dose)
// * result[radiation] ^short = "Reference to the radiation dose observation."