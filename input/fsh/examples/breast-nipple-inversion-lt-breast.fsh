Instance: observation-nipple-inversion-example
InstanceOf: BreastNippleInversionLtBreast
Usage: #example
Title: "Observation: Breast Nipple Inversion (example)"
Description: "An example instance of a breast nipple inversion observation."
* status = #final
* encounter = Reference(Encounter/example-palpation-encounter)
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
* bodySite = $sct#76752008 "Breast"
* valueCodeableConcept = $sct#271955004 "Retraction of nipple (finding)"
