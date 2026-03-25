Instance: observation-birads-1-negative-example
InstanceOf: BiradsAssessmentLtBreast
Usage: #example
Title: "Observation: BI-RADS 1 – Negative (example)"
Description: "BI-RADS category 1 (Negative) assessment – no abnormality detected."
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397140005 "Mammography assessment (Category 1) - Negative (finding)"

Instance: observation-birads-cat4-example
InstanceOf: BiradsAssessmentLtBreast
Usage: #example
Title: "Observation: BI-RADS 4 – Suspicious Abnormality (example)"
Description: "BI-RADS category 4 (Suspicious Abnormality) – biopsy should be considered."
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
