Instance: observation-mammo-mass-left-uoq-example
InstanceOf: MammographicExaminationFindingLtBreast
Usage: #example
Title: "Observation: Mammographic Mass – Left UOQ (12 mm) (example)"
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#7147002 "New"
* component[Type].valueCodeableConcept = $sct#129788004 "Mammographic mass of breast"
* bodyStructure = Reference(bs-left-uoq)
* component[Diameter].valueQuantity = 12 'mm'
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

Instance: observation-mammo-calc-right-liq-example
InstanceOf: MammographicExaminationFindingLtBreast
Usage: #example
Title: "Observation: Mammographic Calcification – Right LIQ (example)"
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#260388006 "No status change"
* component[Type].valueCodeableConcept = $sct#697944008 "Mammographic calcification of breast"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable
* bodyStructure = Reference(bs-right-liq)

Instance: observation-mammo-no-distortion-example
InstanceOf: MammographicExaminationFindingLtBreast
Usage: #example
Title: "Observation: No Mammographic Architectural Distortion (example)"
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
* status = #final
* subject = Reference(example-patient-female)
* performer = Reference(Practitioner/example-practitioner)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#35105006 "Increased"
* component[Type].valueCodeableConcept = $sct#129789007 "Focal asymmetric breast tissue finding"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable
* bodyStructure = Reference(bs-bilateral-uiq)
