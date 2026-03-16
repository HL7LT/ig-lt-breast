Profile: BreastUltrasoundFindingLtBreast
Parent: Observation
Id: breast-ultrasound-finding-lt-breast
Title: "Breast Ultrasound Findings"
Description: "A radiology observation representing one specific ultrasound lesion with localization, dimensions, and characteristics."
* ^url = $breast-ultrasound-finding-lt-breast-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* ^language = #en
* category = $observation-category#imaging "Imaging"
* code = $sct#47079000 "Ultrasonography of breast (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
//* value[x] 0..0
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySiteLtBreast (required)
* note 0..*
* note ^short = "Lesion characteristics"
* note ^definition = "Free text description of shape, contour, echogenicity, homogeneity, vascularity, and elasticity."


//component rules
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

//lesion finding
* component contains lesion 1..1
* component[lesion] ^short = "Lesion finding"
* component[lesion] ^definition = "The side of the body (left or right) where the breast lesion is located."
* component[lesion].code = $sct#364636000 "Lesion observable"

* component[lesion].value[x] 1..1
* component[lesion].value[x] only CodeableConcept
* component[lesion].valueCodeableConcept from UltrasoundLesionFindingLtBreast (required)

//clocks
* component contains clock-position 1..1
* component[clock-position] ^short = "Clock position"
* component[clock-position] ^definition = "The location of the lesion described using the clock face position."
* component[clock-position].code = $sct#272485000 "Clockface position (qualifier value)"

* component[clock-position].value[x] 1..1
* component[clock-position].value[x] only CodeableConcept
* component[clock-position].valueCodeableConcept from BreastClockPositionLtBreast (required)

//Length (mm)
* component contains length-mm 0..1
* component[length-mm] ^short = "Longest lesion dimension"
* component[length-mm] ^definition = "The longest dimension of the lesion measured via ultrasound, typically in mm."
* component[length-mm].code = $sct#439932008 "Length of structure by imaging measurement"

* component[length-mm].value[x] 1..1
* component[length-mm].value[x] only $EuQuantityUrl
* component[length-mm].valueQuantity = $ucum#mm

//Width (mm)
* component contains width-mm 0..1
* component[width-mm] ^short = "Width of lesion"
* component[width-mm] ^definition = "The width of the lesion measured via ultrasound, typically in mm."
* component[width-mm].code = $sct#440357003 "Width of structure by imaging measurement"

* component[width-mm].value[x] 1..1
* component[width-mm].value[x] only $EuQuantityUrl
* component[width-mm].valueQuantity = $ucum#mm


// found example https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html
/*
Profile: TumorSize
Parent:  Observation
Id: example-tumor-size
Title: "Tumor Size"
Description:  "Records the one to three dimensions of a tumor"
* code = $LNC#21889-1 //"Size Tumor"
// other rules omitted
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
// Contains rule
* component contains tumorLongestDimension 1..1 and tumorOtherDimension 0..2
// Set properties of each slice
* component[tumorLongestDimension] ^short = "Longest tumor dimension"
* component[tumorLongestDimension] ^definition = "The longest tumor dimension in cm or mm."
* component[tumorLongestDimension].code = $LNC#33728-7 // "Size.maximum dimension in Tumor"
* component[tumorLongestDimension].value[x] only Quantity
* component[tumorLongestDimension].value[x] from TumorSizeUnitsVS (required)   // value set defined elsewhere
* component[tumorOtherDimension] ^short = "Other tumor dimension(s)"
* component[tumorOtherDimension] ^definition = "The second or third tumor dimension in cm or mm."
* component[tumorOtherDimension] ^comment = "Additional tumor dimensions should be ordered from largest to smallest."
* component[tumorOtherDimension].code = $LNC#33729-5 // "Size additional dimension in Tumor"
* component[tumorOtherDimension].value[x] only Quantity
* component[tumorOtherDimension].value[x] from TumorSizeUnitsVS (required) */
