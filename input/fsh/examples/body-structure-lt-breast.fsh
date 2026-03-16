Instance: breast-body-structure-left-uoq-example
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "BodyStructure: Left Breast – Upper Outer Quadrant (example)"
* patient = Reference(example-patient-female)
* includedStructure[0].structure = $sct#76365002 "Upper outer quadrant of breast"
* includedStructure[0].laterality = $sct#7771000 "Left"

Instance: breast-body-structure-right-uiq-example
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "BodyStructure: Right Breast – Upper Inner Quadrant (example)"
* patient = Reference(example-patient-female)
* includedStructure[0].structure = $sct#77831004 "Upper inner quadrant of breast"
* includedStructure[0].laterality = $sct#24028007 "Right"

Instance: breast-body-structure-multisite
InstanceOf: BodyStructureLtBreast
Usage: #inline
Title: "BodyStructure: Multisite (example)"
* id = "breast-body-structure-multisite"
* patient = Reference(example-patient-female)
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].structure = $sct#76365002 "Upper outer quadrant of breast"
* includedStructure[+].laterality = $sct#24028007 "Right"
* includedStructure[=].structure = $sct#33564002 "Lower outer quadrant of breast"

Instance: bs-left-uoq
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "BodyStructure: Left Breast Upper Outer Quadrant (example)"
* patient = Reference(example-patient-female)
* includedStructure[0].laterality = $sct#7771000 "Left"
* includedStructure[0].structure = $sct#76365002 "Upper outer quadrant of breast"

Instance: bs-right-liq
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "BodyStructure: Right Breast Lower Inner Quadrant (example)"
* patient = Reference(example-patient-female)
* includedStructure[0].laterality = $sct#24028007 "Right"
* includedStructure[0].structure = $sct#19100000 "Lower inner quadrant of breast"

Instance: bs-bilateral-uiq
InstanceOf: BodyStructureLtBreast
Usage: #example
Title: "BodyStructure: Bilateral Upper Inner Quadrant (example)"
* patient = Reference(example-patient-female)
* includedStructure[0].structure = $sct#77831004 "Upper inner quadrant of breast"
* includedStructure[=].laterality = $sct#7771000 "Left"
* includedStructure[+].structure = $sct#77831004 "Upper inner quadrant of breast"
* includedStructure[=].laterality = $sct#24028007 "Right"
