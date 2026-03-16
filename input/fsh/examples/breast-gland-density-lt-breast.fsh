Instance: observation-gland-density-fatty-example
InstanceOf: BreastGlandDensityLtBreast
Usage: #example
Title: "Observation: Breast Density – Fatty (example)"
Description: "Mammography shows predominantly fatty breast density."
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#129716005
* bodySite = $sct#76752008 "Breast"
* note.text = "Mammography shows predominantly fatty breast density."
