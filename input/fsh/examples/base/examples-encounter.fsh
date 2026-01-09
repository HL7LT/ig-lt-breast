Instance: example-encounter1
InstanceOf: LTBaseEncounter
Title: "Example of the first visit for the breast examination"
Usage: #example
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/example)
* participant
  * type = $v3-ParticipationType#ATND "attender"
  * actor = Reference(Practitioner/example-practitioner)
* actualPeriod
  * start = "2025-09-22T10:00:00Z"
  * end = "2025-09-22T11:00:00Z"   
* type = $sct#20135006 "Screening procedure"
* serviceType.concept = $sct#113011001 "Palpation (procedure)"
* serviceProvider = Reference(Organization/example-organization)

// Instance: ExampleBreastStep1Encounter
// InstanceOf: LTBaseEncounter
// Usage: #example
// Title: "Example – Breast Imaging Visit (Step 1)"
// * status = #completed
// * class = $v3-ActCode#AMB "Ambulatory"
// * subject = Reference(example-patient)
// * participant
//   * type = $v3-ParticipationType#ATND "attender"
//   * period
//     * start = "2024-06-15T09:30:00+03:00"
//     * end = "2024-06-15T10:00:00+03:00"
//   * actor = Reference(example-practitioner)
// * actualPeriod
//   * start = "2024-06-15T09:30:00+03:00"
//   * end = "2024-06-15T10:00:00+03:00"
// * serviceProvider = Reference(example-organization)

