Profile: BreastHistoryAssessment
Parent: Observation
Id: breast-history-assessment
Title: "Breast History Assessment"
Description: "Breast history assessment according to the patient saying."
* ^status = #draft
* ^language = #en
* ^version = "1.1.0"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#survey "Survey"
* code = $sct#161797003 "History of breast problem (situation)"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastHistorySituation (preferred)
// location of the finding
* bodyStructure 0..1
* bodyStructure only Reference(BodyStructureLtBreast)
* bodyStructure ^short = "Breast side and quadrant represented using BodyStructure"



// Examples
Instance: breast-history-surgery-example
InstanceOf: BreastHistoryAssessment
Usage: #example
Title: "Example – Breast Surgery History"
* status = #final
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-palpation-encounter)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#71661000210109 "History of operation on breast (situation)"
* note.text = "Lumpectomy of the left breast UOQ in 2018."
* bodyStructure = Reference(breast-body-structure-left-uoq-example)
* effectiveDateTime = "2018-05-15T00:00:00+02:00"


Instance: breast-history-injury-example 
InstanceOf: BreastHistoryAssessment
Usage: #example
Title: "Example – Breast Injury History"
* status = #final
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-palpation-encounter)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#161586000 "History of injury (situation)"
* bodyStructure = Reference(breast-body-structure-right-uiq-example)
* effectiveDateTime = "2022-09-10T00:00:00+02:00"


Instance: breast-history-disease-example 
InstanceOf: BreastHistoryAssessment
Usage: #example
Title: "Example – No Breast Disease History"
* status = #final
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-palpation-encounter)
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#700146008 "No history of malignant tumor of breast"
* effectiveDateTime = "2024-01-15T00:00:00+02:00" 