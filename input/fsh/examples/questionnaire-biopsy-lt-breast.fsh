// -----------------------------------------------------------------------
// Questionnaire: Biopsy ESPBI Form (LT Breast)
// Based on ADP Table 7.4 – Biopsy dataset
// -----------------------------------------------------------------------
// Narrative mapping to FHIR resources:
//   Procedure type           -> Procedure.code
//   Localization (side, pos) -> BodyStructureLtBreast
//   BI-RADS conclusion       -> BiradsAssessmentLtBreast
//   Specimen / containers    -> Specimen resource (from lab IG)
// -----------------------------------------------------------------------

Instance: questionnaire-biopsy-lt-breast
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: Biopsy ESPBI Form (LT Breast)"
Description: "ESPBI-style form for breast biopsy data capture, based on ADP Table 7.4."
* name = "BiopsyQuestionnaireLtBreast"
* url = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-biopsy-lt-breast"
* status = #active
* title = "Biopsy ESPBI Form (LT Breast)"

// =====================================================================
// Group 1 – Examination context
// =====================================================================
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"
* item[0].type = #group

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of procedure"
* item[0].item[0].type = #dateTime

* item[0].item[1].linkId = "procedure-type"
* item[0].item[1].text = "Type of procedure"
* item[0].item[1].type = #coding
* item[0].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#biopsy-us-guided "Biopsy under ultrasound guidance"
* item[0].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#biopsy-xray-guided "Biopsy under X-ray guidance"

* item[0].item[2].linkId = "sample-container-count"
* item[0].item[2].text = "Number of sample containers"
* item[0].item[2].type = #integer

// =====================================================================
// Group 2 – Localization
// =====================================================================
* item[1].linkId = "grp-localization"
* item[1].text = "Localization of change"
* item[1].type = #group

* item[1].item[0].linkId = "localization-side"
* item[1].item[0].text = "Breast side"
* item[1].item[0].type = #coding
* item[1].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#right "Right"
* item[1].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#left "Left"

* item[1].item[1].linkId = "localization-position"
* item[1].item[1].text = "Localization by clock position or quadrant"
* item[1].item[1].type = #string

* item[1].item[2].linkId = "entity-size"
* item[1].item[2].text = "Size of entity (mm)"
* item[1].item[2].type = #quantity

// =====================================================================
// Group 3 – Lymph nodes
// =====================================================================
* item[2].linkId = "grp-lymph-nodes"
* item[2].text = "Lymph nodes"
* item[2].type = #group

* item[2].item[0].linkId = "lymph-changes"
* item[2].item[0].text = "Changes in biopsied lymph nodes"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[2].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[2].item[1].linkId = "lymph-localization"
* item[2].item[1].text = "Localization of lymph node"
* item[2].item[1].type = #coding
* item[2].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#right "Right"
* item[2].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#left "Left"

* item[2].item[2].linkId = "lymph-level"
* item[2].item[2].text = "Level of involvement"
* item[2].item[2].type = #coding
* item[2].item[2].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n1 "N1"
* item[2].item[2].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n2 "N2"
* item[2].item[2].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n3 "N3"

* item[2].item[3].linkId = "lymph-size"
* item[2].item[3].text = "Size of lymph nodes (mm)"
* item[2].item[3].type = #quantity

// =====================================================================
// Group 4 – Conclusion
// =====================================================================
* item[3].linkId = "grp-conclusion"
* item[3].text = "Conclusion"
* item[3].type = #group

* item[3].item[0].linkId = "birads-conclusion"
* item[3].item[0].text = "BI-RADS conclusion"
* item[3].item[0].type = #coding
* item[3].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#birads-3 "BI-RADS 3 – Possibly benign changes"
* item[3].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious malignant finding"
* item[3].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#birads-5 "BI-RADS 5 – Highly probable malignant finding"

* item[3].item[1].linkId = "lymph-malignancy-suspicion"
* item[3].item[1].text = "Lymph node malignancy suspicion"
* item[3].item[1].type = #coding
* item[3].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[3].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// =====================================================================
// Group 5 – Facility
// =====================================================================
* item[4].linkId = "grp-facility"
* item[4].text = "Facility information"
* item[4].type = #group

* item[4].item[0].linkId = "facility-name"
* item[4].item[0].text = "Facility name"
* item[4].item[0].type = #string

* item[4].item[1].linkId = "doctor-name"
* item[4].item[1].text = "Doctor name"
* item[4].item[1].type = #string

// =======================================================================
// QuestionnaireResponse – Biopsy example
// Scenario: US-guided biopsy, right breast at 10 o'clock, 15 mm mass,
//           BI-RADS 4, 2 sample containers, no lymph node involvement
// =======================================================================

Instance: questionnaireresponse-biopsy-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Biopsy – Right Breast Mass (example)"
Description: "Completed biopsy ESPBI form: US-guided core biopsy of a 15 mm mass in the right breast at 10 o'clock, BI-RADS 4, 2 sample containers."
* questionnaire = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-biopsy-lt-breast"
* status = #completed
* authored = "2026-02-03T14:15:00+02:00"
* subject = Reference(example-patient-female)

// -- Examination context --
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of procedure"
* item[0].item[0].answer[0].valueDateTime = "2026-02-03T13:45:00+02:00"

* item[0].item[1].linkId = "procedure-type"
* item[0].item[1].text = "Type of procedure"
* item[0].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#biopsy-us-guided "Biopsy under ultrasound guidance"

* item[0].item[2].linkId = "sample-container-count"
* item[0].item[2].text = "Number of sample containers"
* item[0].item[2].answer[0].valueInteger = 2

// -- Localization --
* item[1].linkId = "grp-localization"
* item[1].text = "Localization of change"

* item[1].item[0].linkId = "localization-side"
* item[1].item[0].text = "Breast side"
* item[1].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#right "Right"

* item[1].item[1].linkId = "localization-position"
* item[1].item[1].text = "Localization by clock position or quadrant"
* item[1].item[1].answer[0].valueString = "10 o'clock"

* item[1].item[2].linkId = "entity-size"
* item[1].item[2].text = "Size of entity (mm)"
* item[1].item[2].answer[0].valueQuantity = 15 'mm'

// -- Lymph nodes --
* item[2].linkId = "grp-lymph-nodes"
* item[2].text = "Lymph nodes"

* item[2].item[0].linkId = "lymph-changes"
* item[2].item[0].text = "Changes in biopsied lymph nodes"
* item[2].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// -- Conclusion --
* item[3].linkId = "grp-conclusion"
* item[3].text = "Conclusion"

* item[3].item[0].linkId = "birads-conclusion"
* item[3].item[0].text = "BI-RADS conclusion"
* item[3].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious malignant finding"

* item[3].item[1].linkId = "lymph-malignancy-suspicion"
* item[3].item[1].text = "Lymph node malignancy suspicion"
* item[3].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// -- Facility --
* item[4].linkId = "grp-facility"
* item[4].text = "Facility information"

* item[4].item[0].linkId = "facility-name"
* item[4].item[0].text = "Facility name"
* item[4].item[0].answer[0].valueString = "Vilnius University Hospital Santaros Klinikos"

* item[4].item[1].linkId = "doctor-name"
* item[4].item[1].text = "Doctor name"
* item[4].item[1].answer[0].valueString = "Dr. Jonas Kazlauskas"
