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
* code = $sct#364372004 "Breast duct observable (observable entity)"
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
