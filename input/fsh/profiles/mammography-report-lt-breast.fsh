Profile: MammographyReportLtBreast
Parent: ImagingReportLt
Id: mammography-report-lt-breast
Title: "Mammography Diagnostic Report (LT Breast)"
Description: "A Diagnostic Report for Mammography imaging studies. Aggregates BI-RADS assessments, mammographic findings, ultrasound findings, and general breast observations."
* ^url = $mammography-report-lt-breast-url
* ^status = #active
* code.coding contains doc-type 1..1
* code.coding[doc-type] = $sct#4231000179109 "Mammography report (record artifact)"
* encounter only Reference(EncounterLt)

// Result references — carries structured findings from the mammography evaluation.
// Breast observation profiles (BiradsAssessment, MammographicFinding, UltrasoundFinding, etc.)
// are referenced via result. The parent constrains result to Reference(ObservationLt).
* result MS
* result ^short = "Mammography results: BI-RADS, mammographic findings, ultrasound findings, breast observations"
* result ^definition = "References to Observation resources carrying the structured findings of the mammography evaluation."
