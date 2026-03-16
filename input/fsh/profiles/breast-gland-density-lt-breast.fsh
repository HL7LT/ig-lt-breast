// Profile: LT Gland Density
Profile: BreastGlandDensityLtBreast
Parent: ObservationLt
Id: breast-gland-density-lt-breast
Title: "Breast Gland Density"
Description: "Breast gland density observation according to ACR BI-RADS classification."
* ^url = $breast-gland-density-lt-breast-url
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
// Observation code
* code = $sct#733851004 "Breast consistency (observable entity)"
// Subject + timing
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
// Value
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastGlandDensityACRLtBreast (required)
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySiteLtBreast (required)
* component 0..0
