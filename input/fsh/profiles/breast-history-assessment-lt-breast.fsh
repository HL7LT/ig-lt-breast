Profile: BreastHistoryAssessmentLtBreast
Parent: ObservationLt
Id: breast-history-assessment-lt-breast
Title: "Breast History Assessment"
Description: "Breast history assessment according to the patient saying."
* ^url = $breast-history-assessment-lt-breast-url
* ^status = #draft
* ^language = #en
* ^version = "1.1.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#survey "Survey"
* code = $sct#161797003 "History of breast problem (situation)"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastHistorySituationVS (preferred)
// location of the finding
* bodyStructure 0..1
* bodyStructure only Reference(BodyStructureLtBreast)
* bodyStructure ^short = "Breast side and quadrant represented using BodyStructure" 