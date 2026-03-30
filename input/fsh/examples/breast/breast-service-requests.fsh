Instance: servicerequest-breast-screening-example
InstanceOf: BreastServiceRequestLtBreast
Usage: #example
Title: "ServiceRequest: Breast Screening (example)"
Description: "An example of a ServiceRequest for breast cancer screening."
* status = #active
* intent = #order
// * category[imaging] = $sct#363679005 "Imaging (procedure)"
* code = $breast-questionnaire-options-cs-url#rec-mammographic-control "Mammographic control"
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/encounter-first-visit-example)
* requester = Reference(Practitioner/example-practitioner)
* authoredOn = "2024-06-15T09:20:00+03:00"
* occurrencePeriod
  * start = "2025-08-01T00:00:00Z"
  * end = "2025-12-01T00:00:00Z"  
