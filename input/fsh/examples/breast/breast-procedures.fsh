
Instance: procedure-breast-palpation-example
InstanceOf: ProcedureLt
Usage: #example
Title: "Procedure: Breast Palpation (example)"
Description: "Clinical breast palpation performed during the initial outpatient visit."
* status = #completed
* code = $sct#113011001 "Palpation (procedure)"
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/encounter-first-visit-example)
* occurrenceDateTime = "2024-06-15T09:40:00+03:00"
* performer.actor = Reference(PractitionerRole/example-practitioner-role)
* performer.function = $sct#223366009 "Healthcare professional"

