Instance: breast-screening-request
InstanceOf: BreastServiceRequest
Usage: #example
Title: "Example – Breast Screening Request (Step 1)"
Description: "An example of a ServiceRequest for breast cancer screening."
* status = #active
* intent = #order
// * category[imaging] = $sct#363679005 "Imaging (procedure)"
* code = $sct#15886004 "Screening for cancer"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter1)
* requester = Reference(Practitioner/example-practitioner)
* authoredOn = "2024-06-15T09:20:00+03:00"
* occurrencePeriod
  * start = "2025-08-01T00:00:00Z"
  * end = "2025-12-01T00:00:00Z"  
