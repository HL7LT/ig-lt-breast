Instance: breast-skin-formation-example
InstanceOf: BreastObservationFinding
Usage: #example
Title: "Example – Breast Skin Formations Present"
* status = #final
* encounter = Reference(Encounter/example-palpation-encounter)
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2024-06-15T10:00:00+03:00"
* contained[0] = breast-body-structure-multisite
* bodyStructure.reference = "#breast-body-structure-multisite"
* valueCodeableConcept = $sct#297960002 "Mass of skin"
