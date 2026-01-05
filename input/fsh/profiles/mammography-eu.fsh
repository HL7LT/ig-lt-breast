Alias: $lt-patient = https://hl7.lt/fhir/base/StructureDefinition/lt-patient
Alias: $radiation-dose = http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImRadiationDoseObservation

Profile: MammographyEu
Parent: DiagnosticReportEuImaging
Id: mammography-eu
Title: "Mammography Diagnostic Report EU"
Description: "A Diagnostic Report for Mammography imaging studies."
* status = #final
//* category = http://terminology.hl7.org/CodeSystem/v2-0074#IMG "Diagnostic Imaging"
* category contains documentType 0..1
* category[documentType] = http://hl7.eu/fhir/imaging-r5/CodeSystem/Hl7EuDocumentTypes#imaging-report-v0-0-1 "Imaging Report V0.0.1"
* category[diagnostic-service] =  http://terminology.hl7.org/CodeSystem/v2-0074#IMG "Diagnostic Imaging"
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


