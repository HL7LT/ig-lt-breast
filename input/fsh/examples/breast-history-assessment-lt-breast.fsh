Instance: observation-history-surgery-example
InstanceOf: BreastHistoryAssessmentLtBreast
Usage: #example
Title: "Observation: Breast Surgery History (example)"
Description: "History of breast operation — lumpectomy of the left breast UOQ in 2018."
* status = #final
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/encounter-palpation-example)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#71661000210109 "History of operation on breast (situation)"
* note.text = "Lumpectomy of the left breast UOQ in 2018."
* bodyStructure = Reference(breast-body-structure-left-uoq-example)
* effectiveDateTime = "2018-05-15T00:00:00+02:00"

Instance: observation-history-injury-example
InstanceOf: BreastHistoryAssessmentLtBreast
Usage: #example
Title: "Observation: Breast Injury History (example)"
Description: "History of breast injury to the right breast upper inner quadrant."
* status = #final
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/encounter-palpation-example)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#161586000 "History of injury (situation)"
* bodyStructure = Reference(breast-body-structure-right-uiq-example)
* effectiveDateTime = "2022-09-10T00:00:00+02:00"

Instance: observation-history-disease-example
InstanceOf: BreastHistoryAssessmentLtBreast
Usage: #example
Title: "Observation: No Breast Disease History (example)"
Description: "Negative finding — no history of malignant tumor of breast."
* status = #final
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/encounter-palpation-example)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#700146008 "No history of malignant tumor of breast"
* effectiveDateTime = "2024-01-15T00:00:00+02:00"
