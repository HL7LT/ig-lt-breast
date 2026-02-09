
Instance: ExampleBreastPalpation
InstanceOf: ImProcedure
Usage: #example
Title: "Example – Breast Palpation Procedure"
* status = #completed
* code = $sct#113011001 "Palpation (procedure)"
* subject = Reference(example-patient-female)
* encounter = Reference(Encounter/example-encounter1)
* occurrenceDateTime = "2024-06-15T09:40:00+03:00"
* performer[performer]
  * actor = Reference(PractitionerRole/example-practitioner-role) 
  * function = $sct#223366009 "Healthcare professional"

