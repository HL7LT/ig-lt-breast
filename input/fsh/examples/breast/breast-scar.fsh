
// Replaced by BreastObservation profile
// Profile: BreastScarLt
// Parent: LTBaseObservation
// Id: breast-scar-observation
// Title: "Breast Scar Observation"
// Description: "This profile constrains the Observation resource to represent breast scar assessment in a patient summary."
// * ^status = #draft
// * ^language = #en
// * ^version = "1.0.0"
// * ^experimental = true
// * ^publisher = "HL7 Lithuania"
// * category = $observation-category#exam "Exam"
// * code = $sct#364370007 "Breast observable (observable entity)"
// * subject 1..1
// * subject only Reference(LTBasePatient)
// * effective[x] 1..1
// * effective[x] only dateTime
// * bodyStructure 1..1
// * bodyStructure only Reference(BodyStructureLtBreast)
// * value[x] only CodeableConcept
// * valueCodeableConcept 1..1
// * valueCodeableConcept from BreastScarFinding (preferred)
// * component ..0



Instance: breast-scar-example
InstanceOf: BreastObservationFinding
Usage: #example
Title: "Example - Breast Scar Observation"
Description: "An example instance of a breast scar observation."
* status = #final
* encounter = Reference(Encounter/example-palpation-encounter)
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
// #inline example of the BodyStructureLtBreast
* contained[0] = breast-body-structure-right-upper-outer-example
* bodyStructure.reference = "#breast-body-structure-right-upper-outer-example"
* valueCodeableConcept = $sct#442523003 "Surgical scar finding"
