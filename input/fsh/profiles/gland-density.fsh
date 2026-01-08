// Profile: LT Gland Density
Profile: LTGlandDensity
Parent: LTBaseObservation
Id: lt-gland-density
Title: "Gland Density"
Description: "Gland density observation according to ACR BI-RADS classification."
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
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
// Value
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from GlandDensityACR (required)
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySite (required)
* component 0..0



// Example
Instance: example-gland-density-fatty
InstanceOf: LTGlandDensity
Usage: #example
Title: "Example – Breast Density: Fatty"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#129716005 "Almost entirely fat breast composition (finding)"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* note.text = "Mammography shows predominantly fatty breast density."
