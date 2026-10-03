Profile: TomosynthesisFindingLtBreast
Parent: ObservationLt
Id: tomosynthesis-finding-lt-breast
Title: "Tomosynthesis Examination Finding (LT Breast)"
Description: "Observation representing tomosynthesis breast findings including finding type, size, cross-section localization in CC and MLO projections, and finding evolution."
* ^url = $tomosynthesis-finding-lt-breast-url
* ^status = #draft
* ^language = #en
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#imaging "Imaging"
// Code corrected: 439324009 is "Mammography in compression view" in SNOMED CT,
// not what the display beside it said. 450566007 is the concept meant.
* code = $sct#450566007 "Digital breast tomosynthesis"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodyStructure ^short = "Breast side and quadrant(s) of finding"
* bodySite MS
* bodySite from BreastBodySiteVS (required)

// Structured components
* hasMember MS
* hasMember only Reference(BiradsAssessmentLtBreast)
* hasMember ^short = "BI-RADS assessment conclusion for this tomosynthesis examination"

* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open

* component contains
    Type 0..* and
    Diameter 0..1 and
    evolution 0..1 and
    cc-cross-section 0..1 and
    mlo-cross-section 0..1

// Type of change (mass, calcification, deformation)
* component[Type].code = $sct#129714008 "Mammography finding (finding)"
* component[Type].value[x] only CodeableConcept
* component[Type].valueCodeableConcept from MammographicFindingVS (required)
* component[Type] ^short = "Tomosynthesis finding type (mass, calcification, deformation)"

// Diameter (mm) — size of the most significant finding
* component[Diameter].code = $sct#248530000 "Diameter of lump (observable entity)"
* component[Diameter].value[x] 1..1
* component[Diameter].value[x] only Quantity
* component[Diameter].valueQuantity = $ucum#mm
* component[Diameter] ^short = "Largest dimension of finding (mm)"

// Evolution of finding
* component[evolution].code = $sct#288531002 "Finding status values"
* component[evolution].value[x] only CodeableConcept
* component[evolution].valueCodeableConcept from FindingEvolutionVS (required)
* component[evolution] ^short = "Evolution of finding compared to previous studies"

// CC projection cross-section (free text)
* component[cc-cross-section].code = $sct#399162004 "Craniocaudal projection"
* component[cc-cross-section].value[x] 1..1
* component[cc-cross-section].value[x] only string
* component[cc-cross-section] ^short = "Cross-sections in CC projection"
* component[cc-cross-section] ^definition = "Free text describing which cross-sectional slices in the craniocaudal (CC) projection show the finding (e.g. slices 42-58)."

// MLO projection cross-section (free text)
// Code corrected: 399352003 is "Lateral-medial projection — a different projection" in SNOMED CT,
// not what the display beside it said. 399368009 is the concept meant.
* component[mlo-cross-section].code = $sct#399368009 "Medio-lateral oblique projection"
* component[mlo-cross-section].value[x] 1..1
* component[mlo-cross-section].value[x] only string
* component[mlo-cross-section] ^short = "Cross-sections in MLO projection"
* component[mlo-cross-section] ^definition = "Free text describing which cross-sectional slices in the mediolateral oblique (MLO) projection show the finding."
