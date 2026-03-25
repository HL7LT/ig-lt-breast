Instance: example-practitioner
InstanceOf: Practitioner
Title: "Practitioner: Triage Nurse (example)"
Description: "Triage nurse practitioner involved in breast screening workflow."
Usage: #example
* name.text = "Registrar"
* qualification.code = $sct#224538006 "Triage nurse (occupation)"

Instance: example-doctor
InstanceOf: Practitioner
Title: "Practitioner: Diagnostic Radiologist (example)"
Description: "Diagnostic radiologist evaluating mammography studies."
Usage: #example
* name.text = "Radiologist"
* qualification.code = $sct#78729002 "Diagnostic radiologist"

Instance: example-practitioner-role
InstanceOf: PractitionerRole
Usage: #example
Title: "PractitionerRole: Radiologist (example)"
Description: "Radiologist role linked to the breast diagnostics organization."
* practitioner = Reference(Practitioner/example-doctor)
* organization = Reference(Organization/example-organization)
* code = $sct#223366009 "Healthcare professional"