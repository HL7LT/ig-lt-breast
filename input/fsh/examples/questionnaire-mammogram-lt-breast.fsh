// =============================================================================
// Questionnaire: Mammogram ESPBI Form (ADP Table 7.1)
// =============================================================================
// Narrative mapping (Questionnaire item -> FHIR resource):
//   Date of test            -> MammographyReportLtBreast.effectiveDateTime
//   Radiation dose           -> ObservationLt (radiation dose observation)
//   Technologist / Radiologist -> Practitioner
//   Equipment / Facility     -> Organization, Device
//   Gland density            -> BreastGlandDensityLtBreast.valueCodeableConcept
//   Findings (R/L)           -> MammographicExaminationFindingLtBreast components
//   BI-RADS conclusion       -> BiradsAssessmentLtBreast.valueCodeableConcept
// =============================================================================

Instance: questionnaire-mammogram-lt-breast
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire: Mammogram ESPBI Form (LT Breast)"
Description: "Structured data-capture form for mammogram reporting based on ADP Table 7.1."
* name = "MammogramQuestionnaireLtBreast"
* status = #active
* url = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-mammogram-lt-breast"

// ---------------------------------------------------------------------------
// Group 1 – Examination context
// ---------------------------------------------------------------------------
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"
* item[0].type = #group

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of test"
* item[0].item[0].type = #dateTime

* item[0].item[1].linkId = "radiation-dose"
* item[0].item[1].text = "Radiation dose (mGy)"
* item[0].item[1].type = #quantity

* item[0].item[2].linkId = "technologist-name"
* item[0].item[2].text = "Radiology technologist"
* item[0].item[2].type = #string

* item[0].item[3].linkId = "equipment-name"
* item[0].item[3].text = "Equipment name"
* item[0].item[3].type = #string

* item[0].item[4].linkId = "facility-name"
* item[0].item[4].text = "Facility name"
* item[0].item[4].type = #string

// ---------------------------------------------------------------------------
// Group 2 – Palpable / visible changes
// ---------------------------------------------------------------------------
* item[1].linkId = "grp-palpable-changes"
* item[1].text = "Palpable / visible changes"
* item[1].type = #group

* item[1].item[0].linkId = "skin-formations"
* item[1].item[0].text = "Skin formations"
* item[1].item[0].type = #coding
* item[1].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[1].linkId = "scars"
* item[1].item[1].text = "Scars"
* item[1].item[1].type = #coding
* item[1].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[2].linkId = "nipple-inversion"
* item[1].item[2].text = "Nipple inversion"
* item[1].item[2].type = #coding
* item[1].item[2].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[2].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[3].linkId = "prior-breast-surgery"
* item[1].item[3].text = "Prior breast surgery"
* item[1].item[3].type = #coding
* item[1].item[3].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[3].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[4].linkId = "breast-injuries"
* item[1].item[4].text = "Breast injuries"
* item[1].item[4].type = #coding
* item[1].item[4].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[4].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[5].linkId = "breast-diseases"
* item[1].item[5].text = "Breast diseases"
* item[1].item[5].type = #coding
* item[1].item[5].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[5].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[6].linkId = "other-information"
* item[1].item[6].text = "Other information"
* item[1].item[6].type = #text

// ---------------------------------------------------------------------------
// Group 3 – Gland density
// ---------------------------------------------------------------------------
* item[2].linkId = "grp-gland-density"
* item[2].text = "Gland density"
* item[2].type = #group

* item[2].item[0].linkId = "acr-density"
* item[2].item[0].text = "ACR breast density category"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#acr-a "ACR A – Almost entirely fatty"
* item[2].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#acr-b "ACR B – Scattered areas of fibroglandular density"
* item[2].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#acr-c "ACR C – Heterogeneously dense"
* item[2].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#acr-d "ACR D – Extremely dense"

// ---------------------------------------------------------------------------
// Group 4 – Findings right breast
// ---------------------------------------------------------------------------
* item[3].linkId = "grp-findings-right"
* item[3].text = "Findings – right breast"
* item[3].type = #group

* item[3].item[0].linkId = "right-changes-present"
* item[3].item[0].text = "Changes present"
* item[3].item[0].type = #coding
* item[3].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[3].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[3].item[1].linkId = "right-formations"
* item[3].item[1].text = "Formations"
* item[3].item[1].type = #coding
* item[3].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[3].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[3].item[1].item[0].linkId = "right-formations-quadrant"
* item[3].item[1].item[0].text = "Quadrant location"
* item[3].item[1].item[0].type = #coding
* item[3].item[1].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#uoq "Upper outer quadrant"
* item[3].item[1].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#uiq "Upper inner quadrant"
* item[3].item[1].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#loq "Lower outer quadrant"
* item[3].item[1].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#liq "Lower inner quadrant"

* item[3].item[2].linkId = "right-calcifications"
* item[3].item[2].text = "Calcifications"
* item[3].item[2].type = #coding
* item[3].item[2].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[3].item[2].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[3].item[3].linkId = "right-deformation"
* item[3].item[3].text = "Deformation"
* item[3].item[3].type = #coding
* item[3].item[3].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[3].item[3].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[3].item[4].linkId = "right-asymmetric-tissue"
* item[3].item[4].text = "Asymmetric tissue"
* item[3].item[4].type = #coding
* item[3].item[4].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[3].item[4].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[3].item[5].linkId = "right-dataset-size"
* item[3].item[5].text = "Dataset size (mm)"
* item[3].item[5].type = #quantity

// ---------------------------------------------------------------------------
// Group 5 – Findings left breast
// ---------------------------------------------------------------------------
* item[4].linkId = "grp-findings-left"
* item[4].text = "Findings – left breast"
* item[4].type = #group

* item[4].item[0].linkId = "left-changes-present"
* item[4].item[0].text = "Changes present"
* item[4].item[0].type = #coding
* item[4].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[4].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[4].item[1].linkId = "left-formations"
* item[4].item[1].text = "Formations"
* item[4].item[1].type = #coding
* item[4].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[4].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[4].item[1].item[0].linkId = "left-formations-quadrant"
* item[4].item[1].item[0].text = "Quadrant location"
* item[4].item[1].item[0].type = #coding
* item[4].item[1].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#uoq "Upper outer quadrant"
* item[4].item[1].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#uiq "Upper inner quadrant"
* item[4].item[1].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#loq "Lower outer quadrant"
* item[4].item[1].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#liq "Lower inner quadrant"

* item[4].item[2].linkId = "left-calcifications"
* item[4].item[2].text = "Calcifications"
* item[4].item[2].type = #coding
* item[4].item[2].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[4].item[2].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[4].item[3].linkId = "left-deformation"
* item[4].item[3].text = "Deformation"
* item[4].item[3].type = #coding
* item[4].item[3].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[4].item[3].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[4].item[4].linkId = "left-asymmetric-tissue"
* item[4].item[4].text = "Asymmetric tissue"
* item[4].item[4].type = #coding
* item[4].item[4].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[4].item[4].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[4].item[5].linkId = "left-dataset-size"
* item[4].item[5].text = "Dataset size (mm)"
* item[4].item[5].type = #quantity

// ---------------------------------------------------------------------------
// Group 6 – Dynamic changes
// ---------------------------------------------------------------------------
* item[5].linkId = "grp-dynamics"
* item[5].text = "Dynamic changes compared to previous examination"
* item[5].type = #group

* item[5].item[0].linkId = "dynamics"
* item[5].item[0].text = "Dynamic changes"
* item[5].item[0].type = #coding
* item[5].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#dynamics-none "No dynamic changes"
* item[5].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#dynamics-negative "Negative dynamic changes"

// ---------------------------------------------------------------------------
// Group 7 – Related changes
// ---------------------------------------------------------------------------
* item[6].linkId = "grp-related-changes"
* item[6].text = "Related changes"
* item[6].type = #group

* item[6].item[0].linkId = "skin-changes"
* item[6].item[0].text = "Skin changes"
* item[6].item[0].type = #coding
* item[6].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[6].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[6].item[1].linkId = "nipple-changes"
* item[6].item[1].text = "Nipple changes"
* item[6].item[1].type = #coding
* item[6].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[6].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[6].item[2].linkId = "lymph-node-changes"
* item[6].item[2].text = "Lymph node changes"
* item[6].item[2].type = #coding
* item[6].item[2].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[6].item[2].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// ---------------------------------------------------------------------------
// Group 8 – Conclusion
// ---------------------------------------------------------------------------
* item[7].linkId = "grp-conclusion"
* item[7].text = "Conclusion"
* item[7].type = #group

* item[7].item[0].linkId = "birads-conclusion"
* item[7].item[0].text = "BI-RADS conclusion"
* item[7].item[0].type = #coding
* item[7].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#birads-0 "BI-RADS 0 – Incomplete, additional assessment needed"
* item[7].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – Negative"
* item[7].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#birads-2 "BI-RADS 2 – Benign"
* item[7].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#birads-3 "BI-RADS 3 – Probably benign"
* item[7].item[0].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious"
* item[7].item[0].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#birads-5 "BI-RADS 5 – Highly suggestive of malignancy"

* item[7].item[1].linkId = "recommendations"
* item[7].item[1].text = "Recommendations"
* item[7].item[1].type = #coding
* item[7].item[1].repeats = true
* item[7].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#rec-mammographic-control "Mammographic control"
* item[7].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#rec-additional-mammography "Additional mammography"
* item[7].item[1].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#rec-ultrasound "Ultrasound examination"
* item[7].item[1].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#rec-mri "MRI examination"
* item[7].item[1].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#rec-biopsy "Biopsy"
* item[7].item[1].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#rec-consultation "Consultation"

* item[7].item[2].linkId = "conclusion-notes"
* item[7].item[2].text = "Notes"
* item[7].item[2].type = #text


// =============================================================================
// QuestionnaireResponse: Mammogram ESPBI example
// =============================================================================

Instance: questionnaireresponse-mammogram-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Mammogram ESPBI (example)"
Description: "Screening mammogram example – ACR B density, no findings, BI-RADS 1."
* questionnaire = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-mammogram-lt-breast"
* status = #completed
* authored = "2025-10-15T11:30:00Z"
* subject = Reference(example-patient-female)
* author = Reference(Practitioner/example-practitioner)

// Group 1 – Examination context
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of test"
* item[0].item[0].answer[0].valueDateTime = "2025-10-15T10:00:00Z"

* item[0].item[1].linkId = "radiation-dose"
* item[0].item[1].text = "Radiation dose (mGy)"
* item[0].item[1].answer[0].valueQuantity = 2.5 'mGy' "mGy"

* item[0].item[2].linkId = "technologist-name"
* item[0].item[2].text = "Radiology technologist"
* item[0].item[2].answer[0].valueString = "Rima Kazlauskiene"

* item[0].item[3].linkId = "equipment-name"
* item[0].item[3].text = "Equipment name"
* item[0].item[3].answer[0].valueString = "Hologic Selenia Dimensions"

* item[0].item[4].linkId = "facility-name"
* item[0].item[4].text = "Facility name"
* item[0].item[4].answer[0].valueString = "Vilniaus universiteto ligonines Santaros klinikos"

// Group 2 – Palpable / visible changes
* item[1].linkId = "grp-palpable-changes"
* item[1].text = "Palpable / visible changes"

* item[1].item[0].linkId = "skin-formations"
* item[1].item[0].text = "Skin formations"
* item[1].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[1].linkId = "scars"
* item[1].item[1].text = "Scars"
* item[1].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[2].linkId = "nipple-inversion"
* item[1].item[2].text = "Nipple inversion"
* item[1].item[2].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[3].linkId = "prior-breast-surgery"
* item[1].item[3].text = "Prior breast surgery"
* item[1].item[3].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[4].linkId = "breast-injuries"
* item[1].item[4].text = "Breast injuries"
* item[1].item[4].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[1].item[5].linkId = "breast-diseases"
* item[1].item[5].text = "Breast diseases"
* item[1].item[5].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// Group 3 – Gland density
* item[2].linkId = "grp-gland-density"
* item[2].text = "Gland density"

* item[2].item[0].linkId = "acr-density"
* item[2].item[0].text = "ACR breast density category"
* item[2].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#acr-b "ACR B – Scattered areas of fibroglandular density"

// Group 4 – Findings right breast
* item[3].linkId = "grp-findings-right"
* item[3].text = "Findings – right breast"

* item[3].item[0].linkId = "right-changes-present"
* item[3].item[0].text = "Changes present"
* item[3].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// Group 5 – Findings left breast
* item[4].linkId = "grp-findings-left"
* item[4].text = "Findings – left breast"

* item[4].item[0].linkId = "left-changes-present"
* item[4].item[0].text = "Changes present"
* item[4].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// Group 6 – Dynamic changes
* item[5].linkId = "grp-dynamics"
* item[5].text = "Dynamic changes compared to previous examination"

* item[5].item[0].linkId = "dynamics"
* item[5].item[0].text = "Dynamic changes"
* item[5].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#dynamics-none "No dynamic changes"

// Group 7 – Related changes
* item[6].linkId = "grp-related-changes"
* item[6].text = "Related changes"

* item[6].item[0].linkId = "skin-changes"
* item[6].item[0].text = "Skin changes"
* item[6].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[6].item[1].linkId = "nipple-changes"
* item[6].item[1].text = "Nipple changes"
* item[6].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[6].item[2].linkId = "lymph-node-changes"
* item[6].item[2].text = "Lymph node changes"
* item[6].item[2].answer[0].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// Group 8 – Conclusion
* item[7].linkId = "grp-conclusion"
* item[7].text = "Conclusion"

* item[7].item[0].linkId = "birads-conclusion"
* item[7].item[0].text = "BI-RADS conclusion"
* item[7].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – Negative"

* item[7].item[1].linkId = "conclusion-notes"
* item[7].item[1].text = "Notes"
* item[7].item[1].answer[0].valueString = "Routine screening mammogram. No suspicious findings."
