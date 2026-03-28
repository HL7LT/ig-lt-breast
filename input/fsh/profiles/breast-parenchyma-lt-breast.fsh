Profile: BreastParenchymaLtBreast
Parent: ObservationLt
Id: breast-parenchyma-lt-breast
Title: "Breast Parenchyma Structure (LT Breast)"
Description: "Ultrasound breast parenchyma structure observation per breast side."
* ^url = $breast-parenchyma-lt-breast-url
* ^status = #draft
* ^language = #en
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#imaging "Imaging"
* code = $sct#47079000 "Ultrasonography of breast (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastParenchymaVS (required)
* bodySite MS
* bodySite 1..1
* bodySite from BreastBodySiteVS (required)
* component 0..0
