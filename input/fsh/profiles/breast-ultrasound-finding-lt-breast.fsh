Profile: BreastUltrasoundFindingLtBreast
Parent: ObservationLt
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
* bodySite from BreastBodySiteVS (required)
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
* component[lesion].valueCodeableConcept from UltrasoundLesionFindingVS (required)

//clocks
* component contains clock-position 1..1
* component[clock-position] ^short = "Clock position"
* component[clock-position] ^definition = "The location of the lesion described using the clock face position."
* component[clock-position].code = $sct#272485000 "Clockface position (qualifier value)"

* component[clock-position].value[x] 1..1
* component[clock-position].value[x] only CodeableConcept
* component[clock-position].valueCodeableConcept from BreastClockPositionVS (required)

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

// --- Lymph node assessment components ---

// Lymph node changes (yes/no)
* component contains lymph-changes 0..1
* component[lymph-changes] ^short = "Lymph node changes"
* component[lymph-changes] ^definition = "Whether changes in axillary lymph nodes are suspected."
* component[lymph-changes].code = $sct#300852009 "Lymph node observable (observable entity)"
* component[lymph-changes].value[x] 1..1
* component[lymph-changes].value[x] only CodeableConcept
* component[lymph-changes].valueCodeableConcept from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)

// Lymph node level (N1/N2/N3)
* component contains lymph-level 0..1
* component[lymph-level] ^short = "Lymph node involvement level"
* component[lymph-level] ^definition = "Regional lymph node involvement level (N1, N2, N3)."
* component[lymph-level].code = $sct#385382003 "Node category finding (finding)"
* component[lymph-level].value[x] 1..1
* component[lymph-level].value[x] only CodeableConcept
* component[lymph-level].valueCodeableConcept from LymphNodeLevelVS (required)

// Number of altered lymph nodes
* component contains lymph-count 0..1
* component[lymph-count] ^short = "Number of altered lymph nodes"
* component[lymph-count] ^definition = "Number of altered lymph nodes in the axillary region."
* component[lymph-count].code = $sct#444025001 "Number of lymph nodes examined by microscopy in excised specimen (observable entity)"
* component[lymph-count].value[x] 1..1
* component[lymph-count].value[x] only Quantity
* component[lymph-count].valueQuantity.system = $ucum
* component[lymph-count].valueQuantity.code = #{1}

// Size of largest altered lymph node (mm)
* component contains lymph-largest-size 0..1
* component[lymph-largest-size] ^short = "Largest altered lymph node size"
* component[lymph-largest-size] ^definition = "Size of the largest altered lymph node in millimeters."
* component[lymph-largest-size].code = $sct#371479009 "Tumor size, dominant nodule (observable entity)"
* component[lymph-largest-size].value[x] 1..1
* component[lymph-largest-size].value[x] only Quantity
* component[lymph-largest-size].valueQuantity = $ucum#mm

// Tumor size measurement is handled by TumorMeasurementLtLab from ig-lt-lab
