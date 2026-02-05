Instance: example-palpation-procedure
InstanceOf: ImProcedure
Title: "Example of Palpation Procedure"
Usage: #example
* status = #completed
* code = $sct#113011001 "Palpation (procedure)"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter1)
* occurrenceDateTime = "2023-08-01T10:20:00Z"

// Specifying the body site (e.g., Breast)
* bodySite = $sct#76752008 "Breast structure (body structure)"

// Linking to the reason (e.g., a palpable mass found by patient)
* statusReason = $sct#443607001 "Palpable mass (finding)" 

// If a practitioner performed it, add a performer
* performer.actor = Reference(PractitionerRole/example-practitioner-role)
* performer.function = $sct#223366009 "Healthcare professional"
