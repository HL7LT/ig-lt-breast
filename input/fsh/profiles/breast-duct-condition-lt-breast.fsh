Profile: BreastDuctConditionLtBreast
Parent: ObservationLt
Id: breast-duct-condition-lt-breast
Title: "Breast Duct Condition (LT Breast)"
Description: "Breast duct condition observation as assessed by ultrasound, recorded per breast side."
* ^url = $breast-duct-condition-lt-breast-url
* ^status = #draft
* ^language = #en
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#imaging "Imaging"
// 364372004 is "Form of breast", not a duct observable. SNOMED CT has no concept for
// the condition of a lactiferous duct seen on ultrasound — all 21 breast-duct
// observables concern DCIS or Nottingham scoring. 364370007 "Breast observable" cannot
// serve as the focus of an expression because it is primitive, so the expression is
// built on 363787002 "Observable entity". Validated against International 2025-02-01,
// the edition tx.fhir.org serves. Composed by Igor Bossenko.
* code = $sct#"363787002:{370130000=723198002,704319004=64633006,246501002=1335950001,370134009=123029007,370132008=117362005}"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastDuctConditionVS (required)
* bodySite MS
* bodySite 1..1
* bodySite from BreastBodySiteVS (required)
* component 0..0
