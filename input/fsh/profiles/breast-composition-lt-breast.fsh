Profile: BreastCompositionLtBreast
Parent: ImagingCompositionLt
Id: breast-composition-lt-breast
Title: "Breast Composition (LT Breast)"
Description: "Breast-specific imaging composition extending the base imaging composition with breast-specific constraints on findings, impression, and history sections. Designed for use in the Lithuanian breast cancer prevention programme."
* ^url = $breast-composition-lt-breast-url
* ^status = #active

// History section — allow breast history observations
* section[history].entry ^slicing.discriminator.type = #profile
* section[history].entry ^slicing.discriminator.path = "$this"
* section[history].entry ^slicing.ordered = false
* section[history].entry ^slicing.rules = #open
* section[history].entry contains
    breastHistory 0..* and
    breastNipple 0..*
* section[history].entry[breastHistory] only Reference(BreastHistoryAssessmentLtBreast)
* section[history].entry[breastHistory] ^short = "Breast history assessment (surgery, injuries, diseases)"
* section[history].entry[breastNipple] only Reference(BreastNippleInversionLtBreast)
* section[history].entry[breastNipple] ^short = "Nipple appearance assessment"

// Findings section — add breast-specific finding slices alongside the inherited finding slice
* section[findings].entry contains
    breastObservation 0..* and
    mammographicFinding 0..* and
    tomosynthesisFinding 0..* and
    ultrasoundFinding 0..* and
    glandDensity 0..* and
    parenchyma 0..* and
    ductCondition 0..* and
    radiationDose 0..*
* section[findings].entry[breastObservation] only Reference(BreastObservationFindingLtBreast)
* section[findings].entry[breastObservation] ^short = "Breast observation finding (scars, skin changes)"
* section[findings].entry[mammographicFinding] only Reference(MammographicExaminationFindingLtBreast)
* section[findings].entry[mammographicFinding] ^short = "Mammographic examination finding"
* section[findings].entry[tomosynthesisFinding] only Reference(TomosynthesisFindingLtBreast)
* section[findings].entry[tomosynthesisFinding] ^short = "Tomosynthesis examination finding"
* section[findings].entry[ultrasoundFinding] only Reference(BreastUltrasoundFindingLtBreast)
* section[findings].entry[ultrasoundFinding] ^short = "Ultrasound lesion finding"
* section[findings].entry[glandDensity] only Reference(BreastGlandDensityLtBreast)
* section[findings].entry[glandDensity] ^short = "ACR breast gland density assessment"
* section[findings].entry[parenchyma] only Reference(BreastParenchymaLtBreast)
* section[findings].entry[parenchyma] ^short = "Ultrasound breast parenchyma structure"
* section[findings].entry[ductCondition] only Reference(BreastDuctConditionLtBreast)
* section[findings].entry[ductCondition] ^short = "Breast duct condition (expanded/normal)"
* section[findings].entry[radiationDose] only Reference($radiation-dose-lt-lab-url)
* section[findings].entry[radiationDose] ^short = "Radiation dose observation (CTDIvol, DLP)"

// Impression section — add BI-RADS assessment slice
* section[impression].entry contains
    birads 0..*
* section[impression].entry[birads] only Reference(BiradsAssessmentLtBreast)
* section[impression].entry[birads] ^short = "BI-RADS assessment per breast"
