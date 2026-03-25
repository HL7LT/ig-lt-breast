Instance: observation-breast-skin-formation-example
InstanceOf: BreastObservationFindingLtBreast
Usage: #example
Title: "Observation: Breast Skin Formation (example)"
Description: "Observation of a skin mass on the breast surface."
* status = #final
* encounter = Reference(Encounter/encounter-palpation-example)
* subject = Reference(example-patient-female)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
* contained[0] = bodystructure-multisite-example
* bodyStructure.reference = "#bodystructure-multisite-example"
* valueCodeableConcept = $sct#297960002 "Mass of skin"
