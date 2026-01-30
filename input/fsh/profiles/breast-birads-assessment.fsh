// BI-RADS assessment profile
Profile: BiradsAssessment
Parent: Observation
Id: birads-assessment
Title: "BI-RADS Assessment"
Description: "Final radiological diagnostic conclusion according to BI-RADS classification." //Each breast is assigned a BI-RADS category, which recommends further actions?
* category = $observation-category#imaging "Imaging"    
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* subject 1..1 MS
* subject only Reference(LTBasePatient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from BiradsCategory (required)
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySite (required)

// Examples
Instance: example-birads-1-negative
InstanceOf: BiradsAssessment
Title: "Example BI-RADS 1 – Negative"
Usage: #example
* status = #final
* subject = Reference(Patient/example-patient)
* performer = Reference(Practitioner/example-practitioner)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397140005 "Mammography assessment (Category 1) - Negative (finding)"

Instance: example-birads-cat4
InstanceOf: BiradsAssessment
Title: "Example BI-RADS 4 – Suspicious Abnormality"
Usage: #example
* status = #final
* subject = Reference(Patient/example-patient)
* performer = Reference(Practitioner/example-practitioner)
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* effectiveDateTime = "2023-08-01T10:00:00Z"
* valueCodeableConcept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
