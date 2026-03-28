Profile: BreastBiopsyProcedureLtBreast
Parent: ProcedureLt
Id: breast-biopsy-procedure-lt-breast
Title: "Breast Biopsy Procedure (LT Breast)"
Description: "Breast biopsy procedure profile for the breast cancer prevention program, covering ultrasound-guided and X-ray-guided biopsy types."
* ^url = $breast-biopsy-procedure-lt-breast-url
* ^status = #draft
* ^language = #en
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* code 1..1 MS
* code from BreastBiopsyProcedureTypeVS (required)
* subject 1..1 MS
* subject only Reference(PatientLt)
* occurrence[x] MS
* occurrence[x] only dateTime
* bodySite MS
* bodySite from BreastBodySiteVS (extensible)
* performer MS
* reason MS
