Profile: BreastObservationFinding
Parent: LTBaseObservation
Id: breast-observation-finding
Title: "Breast Observation Finding"
Description: "Breast observation findings."
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
* valueCodeableConcept from BreastFinding (preferred)
// location of the finding
* bodyStructure 0..1
* bodyStructure only Reference(BodyStructureLtBreast)
* bodyStructure ^short = "Breast side and quadrant represented using BodyStructure"

