// BodyStructure profile
Profile: BodyStructureLtBreast
Parent: BodyStructureEuCore
Id: body-structure-lt-breast
Title: "Breast Body Structure"
Description: "BodyStructure profile representing breast structures including laterality and quadrants."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* patient 1..1
* includedStructure 1..* MS
* includedStructure.structure 1..1 MS
* includedStructure.laterality 1..1 MS
* includedStructure.qualifier 0..0
* includedStructure.structure from BreastQuadrant (required)


Instance: breast-body-structure-left-uoq-example
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Left Breast – Upper Outer Quadrant"
* patient = Reference(Patient/example-patient)
* includedStructure[0].structure = $sct#76365002 "Upper outer quadrant of breast"
* includedStructure[0].laterality = $sct#7771000 "Left"


Instance: breast-body-structure-right-uiq-example
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Right Breast – Upper Inner Quadrant"
* patient = Reference(Patient/example-patient)
* includedStructure[0].structure = $sct#77831004 "Upper inner quadrant of breast"
* includedStructure[0].laterality = $sct#24028007 "Right"

// Inline example of BodyStructure
Instance: breast-body-structure-multisite
InstanceOf: BodyStructureLtBreast
Usage: #inline
Title: "Example Body Structure – Multisite"
* id = "breast-body-structure-multisite"
* patient = Reference(Patient/example-patient)
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].structure = $sct#76365002 "Upper outer quadrant of breast"
* includedStructure[+].laterality = $sct#24028007 "Right"
* includedStructure[=].structure = $sct#33564002 "Lower outer quadrant of breast"


// Left UOQ
Instance: bs-left-uoq
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Left Breast Upper Outer Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].structure = $sct#76365002 "Upper outer quadrant of breast"

// Right LIQ
Instance: bs-right-liq
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Right Breast Lower Inner Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].structure = $sct#19100000 "Lower inner quadrant of breast"

// Bilateral UIQ examples
Instance: bs-bilateral-uiq
InstanceOf: BodyStructureLtBreast
Usage: #example
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#77831004 "Upper inner quadrant of breast"
* includedStructure[=].laterality = $sct#7771000 "Left"
* includedStructure[+].structure = $sct#77831004 "Upper inner quadrant of breast"
* includedStructure[=].laterality = $sct#24028007 "Right"

// // Bilateral UIQ examples
// Instance: bs-bilateral
// InstanceOf: BodyStructure
// Usage: #example
// * patient = Reference(example-patient)
// * includedStructure[0].structure = $sct#181131000 "Entire breast"
