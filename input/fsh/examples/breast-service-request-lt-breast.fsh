Instance: servicerequest-birads-referral-cat4-example
InstanceOf: BreastServiceRequestLtBreast
Usage: #example
Title: "ServiceRequest: BI-RADS Category 4 Referral (example)"
Description: "A ServiceRequest instance recommending a referral to a breast surgeon due to a Category 4 (suspicious) BI-RADS finding."
* status = #active
* intent = #order
* priority = #routine
* code = $breast-questionnaire-options-cs-url#rec-breast-specialist "Breast specialist consultation"
* occurrenceDateTime = "2025-12-15T09:00:00Z"
* subject = Reference(example-patient-female)
* requester = Reference(Practitioner/example-practitioner)
* reason.concept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
* supportingInfo = Reference(Observation/observation-birads-cat4-example)
