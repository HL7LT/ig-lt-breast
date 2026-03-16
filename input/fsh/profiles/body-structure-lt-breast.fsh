// BodyStructure profile
Profile: BodyStructureLtBreast
Parent: BodyStructureEuCore
Id: body-structure-lt-breast
Title: "Breast Body Structure"
Description: "BodyStructure profile representing breast structures including laterality and quadrants."
* ^url = $body-structure-lt-breast-url
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
* includedStructure.structure from BreastQuadrantLtBreast (required)
