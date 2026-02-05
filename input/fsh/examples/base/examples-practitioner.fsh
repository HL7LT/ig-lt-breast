Instance: example-practitioner
InstanceOf: Practitioner
Title: "Example of Practitioner"
Usage: #example
* name.text = "Registrar"
* qualification.code = $sct#224538006 "Triage nurse (occupation)"

Instance: example-doctor
InstanceOf: Practitioner
Title: "Example of Doctor"
Usage: #example
* name.text = "Radiologist"
* qualification.code = $sct#78729002 "Diagnostic radiologist"

Instance: example-practitioner-role
InstanceOf: PractitionerRole
Usage: #example
Title: "Example Practitioner Role (Radiologist)"
* practitioner = Reference(Practitioner/example-doctor)
* organization = Reference(Organization/example-organization)
* code = $sct#223366009 "Healthcare professional"