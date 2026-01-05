Profile: BreastUltrasoundObservation
Parent: LTBaseObservation
Id: breast-ultrasound-observation
Title: "Breast Ultrasound"
Description: "A radiology observation representing one specific ultrasound lesion with localization, dimensions, and characteristics."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* ^language = #en
* category = $observation-category#imaging "Imaging"
* code = $sct#47079000 "Ultrasonography of breast (procedure)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 0..0

//component rules
* component ^slicing.discriminator.type = #value 
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

//lesion finding
* component contains lesion 1..1
* component[lesion] ^short = "Lesion finding"
* component[lesion] ^definition = "The side of the body (left or right) where the breast lesion is located."
* component[lesion].code = $sct#364636000 "Lesion observable"
* component[lesion].value[x] only CodeableConcept
* component[lesion].valueCodeableConcept from UltrasoundLesionFinding (required)

//breast side
* component contains side 1..1
* component[side] ^short = "Laterality of breast"
* component[side] ^definition = "The side of the body (left or right) where the breast lesion is located."
* component[side].code = $sct#272741003 "Laterality" 
* component[side].value[x] only CodeableConcept
* component[side].valueCodeableConcept from BreastQuadrant (required)

//https://build.fhir.org/valueset-bodystructure-laterality


//clocks
* component contains clock-position 1..1
* component[clock-position] ^short = "Clock position"
* component[clock-position] ^definition = "The location of the lesion described using the clock face position."
* component[clock-position].code = $sct#272485000 "Clockface position (qualifier value)"
* component[clock-position].value[x] only CodeableConcept
* component[clock-position].valueCodeableConcept from BreastClockPosition (required)

//Length (mm)
* component contains length-mm 0..1
* component[length-mm] ^short = "Longest lesion dimension"
* component[length-mm] ^definition = "The longest dimension of the lesion measured via ultrasound, typically in mm."
* component[length-mm].code = $sct#439932008 "Length of structure by imaging measurement"
* component[length-mm].value[x] only Quantity
* component[length-mm].valueQuantity.unit = "mm"
* component[length-mm].valueQuantity.system = "http://unitsofmeasure.org"
* component[length-mm].valueQuantity.code = #mm

//Width (mm)
* component contains width-mm 0..1
* component[width-mm] ^short = "Width of lesion"
* component[width-mm] ^definition = "The width of the lesion measured via ultrasound, typically in mm."
* component[width-mm].code = $sct#440357003 "Width of structure by imaging measurement"
* component[width-mm].value[x] only Quantity
* component[width-mm].valueQuantity.unit = "mm"
* component[width-mm].valueQuantity.system = "http://unitsofmeasure.org"
* component[width-mm].valueQuantity.code = #mm

//description
* component contains description 0..1
* component[description] ^short = "Lesion characteristics"
* component[description] ^definition = "Free text description of shape, contour, echogenicity, homogeneity, vascularity, and elasticity."
* component[description].code = $sct#300577008 "Finding of lesion (finding)"
* component[description].value[x] only string

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


// Example 1: Right breast, 10 o'clock, Cyst
Instance: example-lesion-right-10-oclock-cyst
InstanceOf: BreastUltrasoundObservation
Usage: #example
Title: "Breast Lesion - Right Cyst"
Description: "Ultrasound finding of a cyst in the right breast at 10 o'clock."
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[lesion].valueCodeableConcept = $sct#399294002 "Cyst of breast (disorder)"
* component[side].valueCodeableConcept = $sct#24028007 "Right"
* component[clock-position].valueCodeableConcept = $sct#260322009 "10 o'clock position (qualifier value)"
* component[length-mm].valueQuantity = 12 'mm'
* component[width-mm].valueQuantity = 7 'mm'
* component[description].valueString = "Smooth, round shape"

// Example 2: Left breast, 3 o'clock, Fibroadenoma
Instance: example-lesion-left-3-oclock-fibroadenoma
InstanceOf: BreastUltrasoundObservation
Usage: #example
Title: "Example Lesion - Left Fibroadenoma"
Description: "Ultrasound finding of a fibroadenoma in the left breast at 3 o'clock."
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[lesion].valueCodeableConcept = $sct#254845004 "Fibroadenoma of breast (disorder)"
* component[side].valueCodeableConcept = $sct#7771000 "Left"
* component[clock-position].valueCodeableConcept = $sct#260330005 "3 o'clock position (qualifier value)"
* component[length-mm].valueQuantity = 8 'mm'
* component[width-mm].valueQuantity = 5 'mm'
* component[description].valueString = "Oval shape"

// Example 3: Right breast, 6 o'clock, Malignant tumor
Instance: example-lesion-right-6-oclock-malignant-tumor
InstanceOf: BreastUltrasoundObservation
Usage: #example
Title: "Example Lesion - Right Malignant Tumor"
Description: "Ultrasound finding of a malignant tumor in the right breast at 6 o'clock."
* status = #final
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[lesion].valueCodeableConcept = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* component[side].valueCodeableConcept = $sct#24028007 "Right"
* component[clock-position].valueCodeableConcept = $sct#260337008 "6 o'clock position (qualifier value)"
* component[length-mm].valueQuantity = 15 'mm'
* component[width-mm].valueQuantity = 10 'mm'
* component[description].valueString = "Irregular shape"
