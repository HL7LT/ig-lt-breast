Profile: BreastObservationFindingLtBreast
Parent: ObservationLt
Id: breast-observation-finding-lt-breast
Title: "Breast Observation Finding"
Description: "Breast observation findings."
* ^url = $breast-observation-finding-lt-breast-url
* ^status = #draft
* ^language = #en
* ^version = "1.1.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
//* category = $observation-category#survey "Survey"
* category = $observation-category#exam "Exam"
* code = $sct#364370007 "Breast observable"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastFindingVS (preferred)
// location of the finding
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySiteVS (required)
* bodyStructure ^short = "Breast side and quadrant represented using BodyStructure"

