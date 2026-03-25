Profile: BreastNippleInversionLtBreast
Parent: Observation
Id: breast-nipple-inversion-lt-breast
Title: "Breast Nipple Inversion"
Description: "Observation representing nipple inversion assessment in a patient summary."
* ^url = $breast-nipple-inversion-lt-breast-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#364377005 "Appearance of nipple"
* subject 1..1
* effective[x] 1..1
* effective[x] only dateTime
* bodySite 1..1 MS
* bodySite from BreastBodySiteVS (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastNippleAppearanceFindingVS (preferred)
* component ..0
