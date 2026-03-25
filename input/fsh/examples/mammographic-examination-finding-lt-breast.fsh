Instance: observation-mammo-mass-left-uoq-example
InstanceOf: MammographicExaminationFindingLtBreast
Usage: #example
Title: "Observation: Mammographic Mass – Left UOQ (12 mm) (example)"
Description: "Mammographic finding of a new 12 mm mass in the left upper outer quadrant."
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#7147002 "New"
* component[Type].valueCodeableConcept = $sct#129788004 "Mammographic mass of breast"
* bodyStructure = Reference(bodystructure-left-uoq-example)
* component[Diameter].valueQuantity = 12 'mm'
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

Instance: observation-mammo-calc-right-liq-example
InstanceOf: MammographicExaminationFindingLtBreast
Usage: #example
Title: "Observation: Mammographic Calcification – Right LIQ (example)"
Description: "Mammographic calcification finding in the right lower inner quadrant, unchanged."
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#260388006 "No status change"
* component[Type].valueCodeableConcept = $sct#697944008 "Mammographic calcification of breast"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable
* bodyStructure = Reference(bodystructure-right-liq-example)

Instance: observation-mammo-no-distortion-example
InstanceOf: MammographicExaminationFindingLtBreast
Usage: #example
Title: "Observation: No Mammographic Architectural Distortion (example)"
Description: "Negative mammographic finding – no architectural distortion detected."
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#373572006 "Clinical finding absent"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

Instance: observation-mammo-asym-bilateral-uiq-example
InstanceOf: MammographicExaminationFindingLtBreast
Usage: #example
Title: "Observation: Asymmetric Tissue – Bilateral UIQ (example)"
Description: "Focal asymmetric breast tissue finding increasing bilaterally in upper inner quadrants."
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#35105006 "Increased"
* component[Type].valueCodeableConcept = $sct#129789007 "Focal asymmetric breast tissue finding"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable
* bodyStructure = Reference(bodystructure-bilateral-uiq-example)
