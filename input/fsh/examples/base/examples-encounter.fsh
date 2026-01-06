Instance: example-palpation-encounter
InstanceOf: LTBaseEncounter
Title: "Example of the first breast encounter"
Usage: #example
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/example)
* actualPeriod.start = "2025-08-01T09:00:00Z"
* actualPeriod.end = "2025-08-01T10:00:00Z"   
* type = $sct#20135006 "Screening procedure"
//* serviceType.concept = $sct#24623002 "Mammography - screening"
* serviceType.concept = $sct#113011001 "Palpation (procedure)"
