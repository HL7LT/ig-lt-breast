// -----------------------------------------------------------------------
// Questionnaire: Ultrasound Examination ESPBI Form (LT Breast)
// Based on ADP Table 7.3 – Ultrasound examination dataset
// -----------------------------------------------------------------------
// Narrative mapping to FHIR resources:
//   Parenchyma structure     -> BreastGlandDensityLtBreast
//   Findings (lesion, clock, size) -> BreastUltrasoundFindingLtBreast components
//   BI-RADS conclusion       -> BiradsAssessmentLtBreast
//   Lymph node changes       -> BreastObservationFindingLtBreast
// -----------------------------------------------------------------------

Instance: questionnaire-ultrasound-lt-breast
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: Ultrasound Examination ESPBI Form (LT Breast)"
Description: "ESPBI-style form for breast ultrasound examination data capture, based on ADP Table 7.3."
* name = "UltrasoundQuestionnaireLtBreast"
* url = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-ultrasound-lt-breast"
* status = #active
* title = "Ultrasound Examination ESPBI Form (LT Breast)"

// =====================================================================
// Group 1 – Examination context
// =====================================================================
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"
* item[0].type = #group

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of examination"
* item[0].item[0].type = #dateTime

* item[0].item[1].linkId = "exam-indication"
* item[0].item[1].text = "Indication for ultrasound (e.g. review for dense tissue, targeted for findings)"
* item[0].item[1].type = #string

// =====================================================================
// Group 2 – Right breast
// =====================================================================
* item[1].linkId = "grp-right-breast"
* item[1].text = "Right breast"
* item[1].type = #group

* item[1].item[0].linkId = "right-parenchyma"
* item[1].item[0].text = "Structure of parenchyma"
* item[1].item[0].type = #coding
* item[1].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-fatty "Homogeneous adipose tissue"
* item[1].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-fibroglandular "Homogeneous fibroglandular"
* item[1].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-heterogeneous "Heterogeneous"

* item[1].item[1].linkId = "right-findings-present"
* item[1].item[1].text = "Findings present"
* item[1].item[1].type = #coding
* item[1].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[2].linkId = "right-finding-localization"
* item[1].item[2].text = "Finding localization (clock position)"
* item[1].item[2].type = #string

* item[1].item[3].linkId = "right-change-properties"
* item[1].item[3].text = "Change properties"
* item[1].item[3].type = #text

* item[1].item[4].linkId = "right-size-length"
* item[1].item[4].text = "Size – length (mm)"
* item[1].item[4].type = #quantity

* item[1].item[5].linkId = "right-size-width"
* item[1].item[5].text = "Size – width (mm)"
* item[1].item[5].type = #quantity

* item[1].item[6].linkId = "right-nature"
* item[1].item[6].text = "Nature of change"
* item[1].item[6].type = #coding
* item[1].item[6].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#nature-cyst "Cyst"
* item[1].item[6].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#nature-lymph-node "Breast lymph node"
* item[1].item[6].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#nature-fibroadenoma "Fibroadenoma"
* item[1].item[6].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#nature-papilloma "Papilloma"
* item[1].item[6].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#nature-lipoma "Lipoma"
* item[1].item[6].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#nature-malignant "Tumor (malignant)"
* item[1].item[6].answerOption[6].valueCoding = $breast-questionnaire-options-cs-url#nature-abscess "Abscess"
* item[1].item[6].answerOption[7].valueCoding = $breast-questionnaire-options-cs-url#nature-other "Other (free text)"

* item[1].item[7].linkId = "right-ducts"
* item[1].item[7].text = "Condition of ducts"
* item[1].item[7].type = #coding
* item[1].item[7].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#ducts-normal "Ducts not expanded"
* item[1].item[7].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#ducts-expanded "Ducts expanded"

* item[1].item[8].linkId = "right-lymph-changes"
* item[1].item[8].text = "Lymph node changes"
* item[1].item[8].type = #coding
* item[1].item[8].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[8].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[9].linkId = "right-lymph-localization"
* item[1].item[9].text = "Lymph node localization"
* item[1].item[9].type = #coding
* item[1].item[9].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#right "Right"
* item[1].item[9].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#left "Left"

* item[1].item[10].linkId = "right-lymph-level"
* item[1].item[10].text = "Lymph node level"
* item[1].item[10].type = #coding
* item[1].item[10].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n1 "N1"
* item[1].item[10].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n2 "N2"
* item[1].item[10].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n3 "N3"

* item[1].item[11].linkId = "right-lymph-count"
* item[1].item[11].text = "Number of altered lymph nodes"
* item[1].item[11].type = #integer

* item[1].item[12].linkId = "right-lymph-largest-size"
* item[1].item[12].text = "Size of largest lymph node (mm)"
* item[1].item[12].type = #quantity

// =====================================================================
// Group 3 – Left breast (same structure as right)
// =====================================================================
* item[2].linkId = "grp-left-breast"
* item[2].text = "Left breast"
* item[2].type = #group

* item[2].item[0].linkId = "left-parenchyma"
* item[2].item[0].text = "Structure of parenchyma"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-fatty "Homogeneous adipose tissue"
* item[2].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-fibroglandular "Homogeneous fibroglandular"
* item[2].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-heterogeneous "Heterogeneous"

* item[2].item[1].linkId = "left-findings-present"
* item[2].item[1].text = "Findings present"
* item[2].item[1].type = #coding
* item[2].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[2].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[2].item[2].linkId = "left-finding-localization"
* item[2].item[2].text = "Finding localization (clock position)"
* item[2].item[2].type = #string

* item[2].item[3].linkId = "left-change-properties"
* item[2].item[3].text = "Change properties"
* item[2].item[3].type = #text

* item[2].item[4].linkId = "left-size-length"
* item[2].item[4].text = "Size – length (mm)"
* item[2].item[4].type = #quantity

* item[2].item[5].linkId = "left-size-width"
* item[2].item[5].text = "Size – width (mm)"
* item[2].item[5].type = #quantity

* item[2].item[6].linkId = "left-nature"
* item[2].item[6].text = "Nature of change"
* item[2].item[6].type = #coding
* item[2].item[6].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#nature-cyst "Cyst"
* item[2].item[6].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#nature-lymph-node "Breast lymph node"
* item[2].item[6].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#nature-fibroadenoma "Fibroadenoma"
* item[2].item[6].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#nature-papilloma "Papilloma"
* item[2].item[6].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#nature-lipoma "Lipoma"
* item[2].item[6].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#nature-malignant "Tumor (malignant)"
* item[2].item[6].answerOption[6].valueCoding = $breast-questionnaire-options-cs-url#nature-abscess "Abscess"
* item[2].item[6].answerOption[7].valueCoding = $breast-questionnaire-options-cs-url#nature-other "Other (free text)"

* item[2].item[7].linkId = "left-ducts"
* item[2].item[7].text = "Condition of ducts"
* item[2].item[7].type = #coding
* item[2].item[7].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#ducts-normal "Ducts not expanded"
* item[2].item[7].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#ducts-expanded "Ducts expanded"

* item[2].item[8].linkId = "left-lymph-changes"
* item[2].item[8].text = "Lymph node changes"
* item[2].item[8].type = #coding
* item[2].item[8].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[2].item[8].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[2].item[9].linkId = "left-lymph-localization"
* item[2].item[9].text = "Lymph node localization"
* item[2].item[9].type = #coding
* item[2].item[9].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#right "Right"
* item[2].item[9].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#left "Left"

* item[2].item[10].linkId = "left-lymph-level"
* item[2].item[10].text = "Lymph node level"
* item[2].item[10].type = #coding
* item[2].item[10].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n1 "N1"
* item[2].item[10].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n2 "N2"
* item[2].item[10].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#ln-level-n3 "N3"

* item[2].item[11].linkId = "left-lymph-count"
* item[2].item[11].text = "Number of altered lymph nodes"
* item[2].item[11].type = #integer

* item[2].item[12].linkId = "left-lymph-largest-size"
* item[2].item[12].text = "Size of largest lymph node (mm)"
* item[2].item[12].type = #quantity

// =====================================================================
// Group 4 – Notes
// =====================================================================
* item[3].linkId = "grp-notes"
* item[3].text = "Notes"
* item[3].type = #group

* item[3].item[0].linkId = "notes"
* item[3].item[0].text = "Additional notes"
* item[3].item[0].type = #text

// =====================================================================
// Group 5 – Conclusion
// =====================================================================
* item[4].linkId = "grp-conclusion"
* item[4].text = "Conclusion"
* item[4].type = #group

* item[4].item[0].linkId = "birads-right"
* item[4].item[0].text = "BI-RADS – right breast"
* item[4].item[0].type = #coding
* item[4].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – No changes found"
* item[4].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#birads-2 "BI-RADS 2 – Benign changes found"
* item[4].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#birads-3 "BI-RADS 3 – Possibly benign changes"
* item[4].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious malignant finding"
* item[4].item[0].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#birads-5 "BI-RADS 5 – Highly probable malignant finding"

* item[4].item[1].linkId = "birads-left"
* item[4].item[1].text = "BI-RADS – left breast"
* item[4].item[1].type = #coding
* item[4].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – No changes found"
* item[4].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#birads-2 "BI-RADS 2 – Benign changes found"
* item[4].item[1].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#birads-3 "BI-RADS 3 – Possibly benign changes"
* item[4].item[1].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious malignant finding"
* item[4].item[1].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#birads-5 "BI-RADS 5 – Highly probable malignant finding"

* item[4].item[2].linkId = "recommendations"
* item[4].item[2].text = "Recommendations"
* item[4].item[2].type = #coding
* item[4].item[2].repeats = true
* item[4].item[2].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#rec-mammographic-control "Mammographic control"
* item[4].item[2].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#rec-additional-mammography "Additional mammography"
* item[4].item[2].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#rec-ultrasound "Ultrasound examination"
* item[4].item[2].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#rec-breast-specialist "Breast specialist consultation"
* item[4].item[2].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#rec-biopsy-ultrasound "Biopsy under ultrasound"
* item[4].item[2].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#rec-follow-up-6m "Follow-up in 6 months"

// =======================================================================
// QuestionnaireResponse – Ultrasound example
// Scenario: targeted ultrasound, cyst found in left breast at 2 o'clock,
//           8 x 6 mm, BI-RADS 2 left, BI-RADS 1 right
// =======================================================================

Instance: questionnaireresponse-ultrasound-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Ultrasound – Cyst Left Breast (example)"
Description: "Completed ultrasound ESPBI form: targeted examination revealing a simple cyst in the left breast at 2 o'clock, 8 x 6 mm, BI-RADS 2."
* questionnaire = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-ultrasound-lt-breast"
* status = #completed
* authored = "2026-01-15T11:30:00+02:00"
* subject = Reference(example-patient-female)

// -- Examination context --
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of examination"
* item[0].item[0].answer[0].valueDateTime = "2026-01-15T11:00:00+02:00"

* item[0].item[1].linkId = "exam-indication"
* item[0].item[1].text = "Indication for ultrasound (e.g. review for dense tissue, targeted for findings)"
* item[0].item[1].answer[0].valueString = "Targeted test for mammographic findings"

// -- Right breast --
* item[1].linkId = "grp-right-breast"
* item[1].text = "Right breast"

* item[1].item[0].linkId = "right-parenchyma"
* item[1].item[0].text = "Structure of parenchyma"
* item[1].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-fibroglandular "Homogeneous fibroglandular"

* item[1].item[1].linkId = "right-findings-present"
* item[1].item[1].text = "Findings present"
* item[1].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[2].linkId = "right-ducts"
* item[1].item[2].text = "Condition of ducts"
* item[1].item[2].answer[0].valueCoding = $breast-questionnaire-options-cs-url#ducts-normal "Ducts not expanded"

* item[1].item[3].linkId = "right-lymph-changes"
* item[1].item[3].text = "Lymph node changes"
* item[1].item[3].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// -- Left breast --
* item[2].linkId = "grp-left-breast"
* item[2].text = "Left breast"

* item[2].item[0].linkId = "left-parenchyma"
* item[2].item[0].text = "Structure of parenchyma"
* item[2].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#parenchyma-fibroglandular "Homogeneous fibroglandular"

* item[2].item[1].linkId = "left-findings-present"
* item[2].item[1].text = "Findings present"
* item[2].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"

* item[2].item[2].linkId = "left-finding-localization"
* item[2].item[2].text = "Finding localization (clock position)"
* item[2].item[2].answer[0].valueString = "2 o'clock"

* item[2].item[3].linkId = "left-change-properties"
* item[2].item[3].text = "Change properties"
* item[2].item[3].answer[0].valueString = "Well-circumscribed anechoic lesion, smooth margins, posterior acoustic enhancement"

* item[2].item[4].linkId = "left-size-length"
* item[2].item[4].text = "Size – length (mm)"
* item[2].item[4].answer[0].valueQuantity = 8 'mm'

* item[2].item[5].linkId = "left-size-width"
* item[2].item[5].text = "Size – width (mm)"
* item[2].item[5].answer[0].valueQuantity = 6 'mm'

* item[2].item[6].linkId = "left-nature"
* item[2].item[6].text = "Nature of change"
* item[2].item[6].answer[0].valueCoding = $breast-questionnaire-options-cs-url#nature-cyst "Cyst"

* item[2].item[7].linkId = "left-ducts"
* item[2].item[7].text = "Condition of ducts"
* item[2].item[7].answer[0].valueCoding = $breast-questionnaire-options-cs-url#ducts-normal "Ducts not expanded"

* item[2].item[8].linkId = "left-lymph-changes"
* item[2].item[8].text = "Lymph node changes"
* item[2].item[8].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// -- Notes --
* item[3].linkId = "grp-notes"
* item[3].text = "Notes"

* item[3].item[0].linkId = "notes"
* item[3].item[0].text = "Additional notes"
* item[3].item[0].answer[0].valueString = "Simple cyst, no solid component. No vascularity on Doppler."

// -- Conclusion --
* item[4].linkId = "grp-conclusion"
* item[4].text = "Conclusion"

* item[4].item[0].linkId = "birads-right"
* item[4].item[0].text = "BI-RADS – right breast"
* item[4].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – No changes found"

* item[4].item[1].linkId = "birads-left"
* item[4].item[1].text = "BI-RADS – left breast"
* item[4].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#birads-2 "BI-RADS 2 – Benign changes found"

* item[4].item[2].linkId = "recommendations"
* item[4].item[2].text = "Recommendations"
* item[4].item[2].answer[0].valueCoding = $breast-questionnaire-options-cs-url#rec-follow-up-6m "Follow-up in 6 months"
