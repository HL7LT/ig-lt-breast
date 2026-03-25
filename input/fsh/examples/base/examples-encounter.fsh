Instance: encounter-first-visit-example
InstanceOf: EncounterLt
Usage: #example
Title: "Encounter: First Visit (example)"
Description: "First outpatient encounter for breast imaging screening."
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(example-patient-female)
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
// * subject = Reference(example-patient-female)
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

Instance: encounter-palpation-example
InstanceOf: EncounterLt
Usage: #example
Title: "Encounter: Palpation (example)"
Description: "The specific encounter where the breast history and palpation were performed."
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(example-patient-female) // Ensure this matches the patient used in your other examples
* participant
  * type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND "attender"
  * actor = Reference(Practitioner/example-practitioner)
* actualPeriod
  * start = "2024-01-15T10:00:00+02:00"
  * end = "2024-01-15T10:30:00+02:00"
* serviceProvider = Reference(Organization/example-organization)

Instance: diagnosticreport-breast-imaging-example
InstanceOf: DiagnosticReport
Usage: #example
Title: "DiagnosticReport: Breast Imaging (example)"
Description: "Placeholder DiagnosticReport referenced by the breast imaging composition."
* status = #final
* code = $sct#71651007 "Mammography"
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-doctor)
* issued = "2026-01-10T10:00:00+02:00"
* result[0] = Reference(Observation/observation-birads-cat4-example)