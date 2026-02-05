Instance: example-encounter1
InstanceOf: LTBaseEncounter
Title: "Example of the first visit for the breast examination"
Usage: #example
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/example-patient)
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

Instance: example-palpation-encounter
InstanceOf: LTBaseEncounter
Usage: #example
Title: "Example – Palpation Encounter"
Description: "The specific encounter where the breast history and palpation were performed."
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/example-patient) // Ensure this matches the patient used in your other examples
* participant
  * type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND "attender"
  * actor = Reference(Practitioner/example-practitioner)
* actualPeriod
  * start = "2024-01-15T10:00:00+02:00"
  * end = "2024-01-15T10:30:00+02:00"
* serviceProvider = Reference(Organization/example-organization)

Instance: breast-diagnostic-report
InstanceOf: DiagnosticReport
Usage: #example
Title: "Example Breast Diagnostic Report"
* status = #final
* code = $sct#71651007 "Mammography"
* subject = Reference(Patient/example-patient)
* performer = Reference(Practitioner/example-doctor)
* issued = "2026-01-10T10:00:00+02:00"
* result[0] = Reference(Observation/example-birads-cat4)