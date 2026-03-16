Instance: observation-history-surgery-example
InstanceOf: BreastHistoryAssessmentLtBreast
Usage: #example
Title: "Observation: Breast Surgery History (example)"
* status = #final
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/example-palpation-encounter)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#71661000210109 "History of operation on breast (situation)"
* note.text = "Lumpectomy of the left breast UOQ in 2018."
* bodyStructure = Reference(breast-body-structure-left-uoq-example)
* effectiveDateTime = "2018-05-15T00:00:00+02:00"

Instance: observation-history-injury-example
InstanceOf: BreastHistoryAssessmentLtBreast
Usage: #example
Title: "Observation: Breast Injury History (example)"
* status = #final
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/example-palpation-encounter)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#161586000 "History of injury (situation)"
* bodyStructure = Reference(breast-body-structure-right-uiq-example)
* effectiveDateTime = "2022-09-10T00:00:00+02:00"

Instance: observation-history-disease-example
InstanceOf: BreastHistoryAssessmentLtBreast
Usage: #example
Title: "Observation: No Breast Disease History (example)"
* status = #final
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/example-palpation-encounter)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#700146008 "No history of malignant tumor of breast"
* effectiveDateTime = "2024-01-15T00:00:00+02:00"
