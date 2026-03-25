Profile: BreastReportLtBreast
Parent: ImagingReportLt
Id: breast-report-lt-breast
Title: "Breast Diagnostic Report (LT Breast)"
Description: "Overall breast diagnostic report covering the entire breast cancer diagnostic pathway. Wraps a BreastCompositionLtBreast and aggregates structured results including BI-RADS assessments, mammographic findings, ultrasound findings, gland density, and nipple observations."
* ^url = $breast-report-lt-breast-url
* ^status = #active

* code.coding contains doc-type 1..1
* code.coding[doc-type] = $sct#4231000179109 "Mammography report (record artifact)"

* encounter only Reference(EncounterLt)

* composition only Reference(BreastCompositionLtBreast)

// Result references — the parent constrains result to Reference(ObservationLt).
// Breast-specific observation profiles (BiradsAssessment, MammographicFinding, etc.)
// are referenced here. All breast observation profiles that need to appear in result
// should inherit from ObservationLt for full type-safety.
* result MS
* result ^short = "Breast diagnostic results: BI-RADS assessments, mammographic/ultrasound findings, gland density, nipple observations"
* result ^definition = "References to Observation resources that carry the structured findings of the breast diagnostic process."
