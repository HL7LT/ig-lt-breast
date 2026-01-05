// BI-RADS assessment profile
Profile: LTBiradsAssessment
Parent: ObservationFindingEuImaging
Id: lt-birads-assessment
Title: "BI-RADS Assessment"
Description: "Final radiological diagnostic conclusion according to BI-RADS (0–5)." //Each breast is assigned a BI-RADS category, which recommends further actions?
* category = $observation-category#imaging "Imaging"    
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BiradsCategory (required)

// Examples
Instance: example-birads-1-negative
InstanceOf: LTBiradsAssessment
Title: "Example BI-RADS 1 – Negative"
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397140005 "Mammography assessment (Category 1) - Negative (finding)"

Instance: example-birads-cat4
InstanceOf: LTBiradsAssessment
Title: "Example BI-RADS 4 – Suspicious Abnormality"
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
