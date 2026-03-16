
Invariant: mammo-diameter-only-for-mass
Description: "Diameter component is allowed only when Type component represents a mammographic mass."
Severity: #warning
Expression: "(component.where(code.coding.code='248530000').exists()) implies (component.where(value.coding.code='129788004').exists())"


// Observation for mammographic breast changes
Profile: MammographicExaminationFindingLtBreast
Parent: Observation
Id: mammographic-examination-finding-lt-breast
Title: "Mammographic Examination Findings"
Description: "Observation representing mammographic breast changes using BodyStructure."
* ^url = $mammographic-examination-finding-lt-breast-url
* ^status = #active
* category = $observation-category#exam "Exam"
* code = $sct#71651007 "Mammography (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
* obeys mammo-diameter-only-for-mass
// * value[x] ..0
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySiteLtBreast (required)
* bodyStructure ^short = "Breast side and breast quadrants involved in finding"
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
* component[Type].valueCodeableConcept from MammographicFindingLtBreast (required)
* component[Type] ^short = "Mammographic finding"
// Slice: Diameter of Lump (Size)
* component[Diameter].code = $sct#248530000 "Diameter of lump (observable entity)"
* component[Diameter].value[x] only $EuQuantityUrl
* component[Diameter].valueQuantity = $ucum#mm
// = $ucum#mm "mm"
* component[Diameter] ^short = "Diameter in mm (only for masses)"
// Slice: Evolution of finding
* component[evolution].code = $sct#288531002 "Finding status values"
* component[evolution].value[x] only CodeableConcept
* component[evolution].valueCodeableConcept from FindingEvolutionLtBreast (required)
* component[evolution] ^short = "Evolution of mammographic finding"
