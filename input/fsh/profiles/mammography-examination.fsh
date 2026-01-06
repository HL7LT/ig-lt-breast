
Invariant: mammo-diameter-only-for-mass
Description: "Diameter component is allowed only when Type component represents a mammographic mass."
Severity: #warning
Expression: "(component.where(code.coding.code='248530000').exists()) implies (component.where(value.coding.code='129788004').exists())"


// Observation for mammographic breast changes
Profile: MammographicExamination
Parent: LTBaseObservation
Id: lt-mammographic-examination
Title: "Mammographic Examination"
Description: "Observation representing mammographic breast changes using BodyStructure."
* ^status = #active
* category = $observation-category#exam "Exam"
* code = $sct#71651007 "Mammography (procedure)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* obeys mammo-diameter-only-for-mass
* value[x] ..0
// * focus 0..*
// * focus only Reference(BodyStructureLtBreast)
* focus ^short = "Breast side + quadrant represented via BodyStructure"
// Structured components
* component 0..*
* component ^short = "Details of mammographic finding"
// Slicing for components
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
// Component slices
* component contains evolution 0..1 and Type 0..* and Diameter 0..1
// Slice: Type of change
* component[Type].code = $sct#129714008 "Mammography finding (finding)"
* component[Type].value[x] only CodeableConcept
* component[Type].valueCodeableConcept from MammographicFinding (required)
* component[Type] ^short = "Mammographic finding"
// Slice: Diameter of Lump (Size)
* component[Diameter].code = $sct#248530000 "Diameter of lump (observable entity)"
* component[Diameter].value[x] only Quantity
* component[Diameter].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diameter].valueQuantity.code = #mm
* component[Diameter].valueQuantity.unit = "mm"
* component[Diameter] ^short = "Diameter in mm (only for masses)"
// Slice: Evolution of finding
* component[evolution].code = $sct#288531002 "Finding status values"
* component[evolution].value[x] only CodeableConcept
* component[evolution].valueCodeableConcept from FindingEvolution (required)
* component[evolution] ^short = "Evolution of mammographic finding"




// Example 1 — Mass, left UOQ, with diameter
Instance: example-mammo-change-left-uoq-mass
InstanceOf: MammographicExamination
Usage: #example
Title: "Mammographic Mass – Left UOQ (12 mm)"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#7147002 "New"
// Type
* component[Type].valueCodeableConcept = $sct#129788004 "Mammographic mass of breast"
// Location via BodyStructure
* bodyStructure = Reference(bs-left-uoq)
// Diameter
* component[Diameter].valueQuantity.value = 12
* component[Diameter].valueQuantity.unit = "mm"

// Example 2 — Calcification, right LIQ
Instance: example-mammo-change-right-liq-calc
InstanceOf: MammographicExamination
Usage: #example
Title: "Mammographic Calcification – Right LIQ"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#260388006 "No status change"
* component[Type].valueCodeableConcept = $sct#697944008 "Mammographic calcification of breast"
* bodyStructure = Reference(bs-right-liq)

// Example 3 — No finding
Instance: example-mammo-change-no-distortion
InstanceOf: MammographicExamination
Usage: #example
Title: "No Mammographic Architectural Distortion"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#373572006 "Clinical finding absent"

// Example 4 — Asymmetric tissue in bilateral UIQ
Instance: example-mammo-change-bilateral-uiq-asym
InstanceOf: MammographicExamination
Usage: #example
Title: "Asymmetric Tissue – Bilateral UIQ"
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2024-11-20T10:00:00+02:00"
* component[evolution].valueCodeableConcept = $sct#35105006 "Increased"
* component[Type].valueCodeableConcept = $sct#129789007 "Focal asymmetric breast tissue finding"
* bodyStructure = Reference(bs-bilateral-uiq)
