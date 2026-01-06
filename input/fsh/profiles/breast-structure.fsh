// BodyStructure profile
Profile: BodyStructureLtBreast
Parent: BodyStructureEuCore
Id: body-structure-lt-breast
* includedStructure 1..* MS
* includedStructure.structure 1..1 MS
* includedStructure.laterality 1..1 MS
* includedStructure.qualifier 0..0
* includedStructure.structure from BreastQuadrant (required)
* includedStructure.laterality from $laterality (preferred)


Instance: breast-body-structure-left-uoq-example
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Left Breast – Upper Outer Quadrant"
* patient = Reference(Patient/example-patient)
* includedStructure[0].structure = $sct#110496004 "Structure of upper outer quadrant of left breast"
* includedStructure[0].laterality = $sct#7771000 "Left"


Instance: breast-body-structure-right-uiq-example
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Right Breast – Upper Inner Quadrant"
* patient = Reference(Patient/example-patient)
* includedStructure[0].structure = $sct#110499006 "Structure of upper inner quadrant of right breast"
* includedStructure[0].laterality = $sct#24028007 "Right"


// Inline example of BodyStructure
Instance: breast-body-structure-right-upper-outer-example
InstanceOf: BodyStructureLtBreast
Usage: #inline
Title: "Example Body Structure for Breast Scar"
Description: "Right breast — upper outer quadrant."
* id = "breast-body-structure-right-upper-outer"
* patient = Reference(Patient/example-patient)
* includedStructure[0].laterality = $sct#24028007 "Right (qualifier value)"
* includedStructure[0].structure = $sct#110496004 "Structure of upper outer quadrant of right breast (body structure)"


// Inline example of BodyStructure
Instance: breast-body-structure-multisite
InstanceOf: BodyStructureLtBreast
Usage: #inline
Title: "Example Body Structure – Multisite"
* id = "breast-body-structure-multisite"
* patient = Reference(Patient/example-patient)
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].structure = $sct#110501003 "Upper outer quadrant of breast"
* includedStructure[+].laterality = $sct#24028007 "Right"
* includedStructure[=].structure = $sct#110494001 "Lower outer quadrant of breast"


// Left UOQ
Instance: bs-left-uoq
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Left Breast Upper Outer Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].structure = $sct#110501003 "Upper outer quadrant of breast"

// Right LIQ
Instance: bs-right-liq
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "Right Breast Lower Inner Quadrant"
* patient = Reference(example-patient)
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].structure = $sct#110495000 "Lower inner quadrant of breast"

// Bilateral UIQ examples
Instance: bs-bilateral-uiq
InstanceOf: BodyStructureLtBreast
Usage: #example
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#110499006 "Upper inner quadrant of breast"
* includedStructure[=].laterality = $sct#7771000 "Left"
* includedStructure[+].structure = $sct#110499006 "Upper inner quadrant of breast"
* includedStructure[=].laterality = $sct#24028007 "Right"

// Bilateral UIQ examples
Instance: bs-bilateral
InstanceOf: BodyStructure
Usage: #example
* patient = Reference(example-patient)
* includedStructure[0].structure = $sct#181131000 "Entire breast"
