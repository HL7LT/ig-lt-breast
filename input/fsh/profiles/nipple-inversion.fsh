Profile: NippleInversion
Parent: LTBaseObservation
Id: nipple-inversion
Title: "Nipple Inversion"
Description: "Observation representing nipple inversion assessment in a patient summary."
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
* bodySite from BreastBodySite (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from NippleAppearanceFinding (preferred)
* component ..0



// Example Observation
Instance: nipple-inversion-example
InstanceOf: NippleInversion
Usage: #example
Title: "Example Nipple Inversion Observation"
Description: "An example instance of a nipple inversion observation."
* status = #final
* encounter = Reference(Encounter/example-palpation-encounter)
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
* bodySite = $sct#181131000 "Entire breast"
* valueCodeableConcept = $sct#271955004 "Retraction of nipple (finding)"
