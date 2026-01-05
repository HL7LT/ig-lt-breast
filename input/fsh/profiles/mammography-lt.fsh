Alias: $lt-patient = https://hl7.lt/fhir/base/StructureDefinition/lt-patient
Alias: $radiation-dose = http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImRadiationDoseObservation
Alias: $waist = https://hl7.lt/fhir/vitalsigns/StructureDefinition/waist-circumference

Profile: MammographyReportLt
Parent: DiagnosticReport
Id: mammography-report-lt
Title: "Mammography Diagnostic Report LT"
Description: "A Diagnostic Report for Mammography imaging studies."
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#IMG "Diagnostic Imaging"
// * category contains documentType 0..1 
// * category[1] = http://hl7.eu/fhir/imaging-r5/CodeSystem/Hl7EuDocumentTypes#imaging-report-v0-0-1 "Imaging Report V0.0.1"
* code = $sct#4231000179109 "Mammography report (record artifact)"
//* subject only Reference($lt-patient)
* encounter only Reference(LTBaseEncounter)

* result MS
* result ^slicing.discriminator[0].type = #value
* result ^slicing.discriminator[0].path = "url" 
* result ^slicing.rules = #open

* result contains birads 0..*
* result[birads] only Reference(LTBiradsAssessment)
* result[birads] ^short = "Reference to the standardized BI-RADS Assessment Observation."

* result contains waist 0..*
* result[waist] only Reference($waist)
* result[waist] ^short = "The radiation dose used during the procedure."

