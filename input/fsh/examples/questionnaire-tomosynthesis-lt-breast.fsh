// =============================================================================
// Questionnaire: Tomosynthesis ESPBI Form (ADP Table 7.2)
// =============================================================================
// Narrative mapping (Questionnaire item -> FHIR resource):
//   Date of test              -> MammographyReportLtBreast.effectiveDateTime
//   Radiation dose            -> ObservationLt (radiation dose observation)
//   Technologist / Doctor     -> Practitioner
//   Facility                  -> Organization
//   Indication (BI-RADS 0)    -> BiradsAssessmentLtBreast (prior assessment)
//   Findings per breast       -> MammographicExaminationFindingLtBreast components
//   BI-RADS conclusion        -> BiradsAssessmentLtBreast.valueCodeableConcept
// =============================================================================

Instance: questionnaire-tomosynthesis-lt-breast
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire: Tomosynthesis ESPBI Form (LT Breast)"
Description: "Structured data-capture form for breast tomosynthesis reporting based on ADP Table 7.2."
* name = "TomosynthesisQuestionnaireLtBreast"
* status = #active
* url = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-tomosynthesis-lt-breast"

// ---------------------------------------------------------------------------
// Group 1 – Examination context
// ---------------------------------------------------------------------------
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"
* item[0].type = #group

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of test"
* item[0].item[0].type = #dateTime

* item[0].item[1].linkId = "test-indication"
* item[0].item[1].text = "Test indication – BI-RADS 0 (incomplete assessment from mammography)"
* item[0].item[1].type = #display

* item[0].item[2].linkId = "technologist-name"
* item[0].item[2].text = "Technologist name"
* item[0].item[2].type = #string

* item[0].item[3].linkId = "equipment-name"
* item[0].item[3].text = "Equipment name"
* item[0].item[3].type = #string

* item[0].item[4].linkId = "radiation-dose"
* item[0].item[4].text = "Radiation dose (Gy)"
* item[0].item[4].type = #quantity

// ---------------------------------------------------------------------------
// Group 2 – Findings
// ---------------------------------------------------------------------------
* item[1].linkId = "grp-findings"
* item[1].text = "Findings"
* item[1].type = #group

* item[1].item[0].linkId = "findings-present"
* item[1].item[0].text = "Findings present"
* item[1].item[0].type = #coding
* item[1].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[1].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

// -- Right breast findings --
* item[1].item[1].linkId = "grp-findings-right"
* item[1].item[1].text = "Right breast findings"
* item[1].item[1].type = #group

* item[1].item[1].item[0].linkId = "right-quadrant"
* item[1].item[1].item[0].text = "Localization by quadrant"
* item[1].item[1].item[0].type = #coding
* item[1].item[1].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#uoq "Upper outer quadrant"
* item[1].item[1].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#uiq "Upper inner quadrant"
* item[1].item[1].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#loq "Lower outer quadrant"
* item[1].item[1].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#liq "Lower inner quadrant"

* item[1].item[1].item[1].linkId = "right-entity"
* item[1].item[1].item[1].text = "Change entity"
* item[1].item[1].item[1].type = #coding
* item[1].item[1].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#finding-formation "Formation (mass)"
* item[1].item[1].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#finding-deformation "Deformation (architectural distortion)"
* item[1].item[1].item[1].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#finding-calcification "Calcification"

* item[1].item[1].item[2].linkId = "right-size"
* item[1].item[1].item[2].text = "Size (mm)"
* item[1].item[1].item[2].type = #quantity

// -- Left breast findings --
* item[1].item[2].linkId = "grp-findings-left"
* item[1].item[2].text = "Left breast findings"
* item[1].item[2].type = #group

* item[1].item[2].item[0].linkId = "left-quadrant"
* item[1].item[2].item[0].text = "Localization by quadrant"
* item[1].item[2].item[0].type = #coding
* item[1].item[2].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#uoq "Upper outer quadrant"
* item[1].item[2].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#uiq "Upper inner quadrant"
* item[1].item[2].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#loq "Lower outer quadrant"
* item[1].item[2].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#liq "Lower inner quadrant"

* item[1].item[2].item[1].linkId = "left-entity"
* item[1].item[2].item[1].text = "Change entity"
* item[1].item[2].item[1].type = #coding
* item[1].item[2].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#finding-formation "Formation (mass)"
* item[1].item[2].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#finding-deformation "Deformation (architectural distortion)"
* item[1].item[2].item[1].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#finding-calcification "Calcification"

* item[1].item[2].item[2].linkId = "left-size"
* item[1].item[2].item[2].text = "Size (mm)"
* item[1].item[2].item[2].type = #quantity

// ---------------------------------------------------------------------------
// Group 3 – Conclusion
// ---------------------------------------------------------------------------
* item[2].linkId = "grp-conclusion"
* item[2].text = "Conclusion"
* item[2].type = #group

* item[2].item[0].linkId = "birads-conclusion"
* item[2].item[0].text = "BI-RADS conclusion"
* item[2].item[0].type = #coding
* item[2].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#birads-0 "BI-RADS 0 – Incomplete, additional assessment needed"
* item[2].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – Negative"
* item[2].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#birads-2 "BI-RADS 2 – Benign"
* item[2].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#birads-3 "BI-RADS 3 – Probably benign"
* item[2].item[0].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious"
* item[2].item[0].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#birads-5 "BI-RADS 5 – Highly suggestive of malignancy"

* item[2].item[1].linkId = "recommendations"
* item[2].item[1].text = "Recommendations"
* item[2].item[1].type = #coding
* item[2].item[1].repeats = true
* item[2].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#rec-mammographic-control "Mammographic control"
* item[2].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#rec-additional-mammography "Additional mammography"
* item[2].item[1].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#rec-ultrasound "Ultrasound examination"
* item[2].item[1].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#rec-mri "MRI examination"
* item[2].item[1].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#rec-biopsy "Biopsy"
* item[2].item[1].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#rec-consultation "Consultation"

* item[2].item[2].linkId = "facility-name"
* item[2].item[2].text = "Facility"
* item[2].item[2].type = #string

* item[2].item[3].linkId = "doctor-name"
* item[2].item[3].text = "Doctor"
* item[2].item[3].type = #string


// =============================================================================
// QuestionnaireResponse: Tomosynthesis ESPBI example
// =============================================================================

Instance: questionnaireresponse-tomosynthesis-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Tomosynthesis ESPBI (example)"
Description: "Tomosynthesis follow-up for BI-RADS 0 – mass found in right breast UOQ, BI-RADS 4."
* questionnaire = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-tomosynthesis-lt-breast"
* status = #completed
* authored = "2025-10-22T14:15:00Z"
* subject = Reference(example-patient-female)
* author = Reference(Practitioner/example-practitioner)

// Group 1 – Examination context
* item[0].linkId = "grp-exam-context"
* item[0].text = "Examination context"

* item[0].item[0].linkId = "exam-date"
* item[0].item[0].text = "Date of test"
* item[0].item[0].answer[0].valueDateTime = "2025-10-22T13:30:00Z"

* item[0].item[1].linkId = "test-indication"
* item[0].item[1].text = "Test indication – BI-RADS 0 (incomplete assessment from mammography)"

* item[0].item[2].linkId = "technologist-name"
* item[0].item[2].text = "Technologist name"
* item[0].item[2].answer[0].valueString = "Rima Kazlauskiene"

* item[0].item[3].linkId = "equipment-name"
* item[0].item[3].text = "Equipment name"
* item[0].item[3].answer[0].valueString = "Hologic Selenia Dimensions 3D"

* item[0].item[4].linkId = "radiation-dose"
* item[0].item[4].text = "Radiation dose (Gy)"
* item[0].item[4].answer[0].valueQuantity = 0.0035 'Gy' "Gy"

// Group 2 – Findings
* item[1].linkId = "grp-findings"
* item[1].text = "Findings"

* item[1].item[0].linkId = "findings-present"
* item[1].item[0].text = "Findings present"
* item[1].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"

// -- Right breast findings --
* item[1].item[1].linkId = "grp-findings-right"
* item[1].item[1].text = "Right breast findings"

* item[1].item[1].item[0].linkId = "right-quadrant"
* item[1].item[1].item[0].text = "Localization by quadrant"
* item[1].item[1].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#uoq "Upper outer quadrant"

* item[1].item[1].item[1].linkId = "right-entity"
* item[1].item[1].item[1].text = "Change entity"
* item[1].item[1].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#finding-formation "Formation (mass)"

* item[1].item[1].item[2].linkId = "right-size"
* item[1].item[1].item[2].text = "Size (mm)"
* item[1].item[1].item[2].answer[0].valueQuantity = 14 'mm' "mm"

// -- Left breast findings (none) --
* item[1].item[2].linkId = "grp-findings-left"
* item[1].item[2].text = "Left breast findings"

// Group 3 – Conclusion
* item[2].linkId = "grp-conclusion"
* item[2].text = "Conclusion"

* item[2].item[0].linkId = "birads-conclusion"
* item[2].item[0].text = "BI-RADS conclusion"
* item[2].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious"

* item[2].item[1].linkId = "recommendations"
* item[2].item[1].text = "Recommendations"
* item[2].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#rec-biopsy "Biopsy"
* item[2].item[1].answer[1].valueCoding = $breast-questionnaire-options-cs-url#rec-ultrasound "Ultrasound examination"

* item[2].item[2].linkId = "facility-name"
* item[2].item[2].text = "Facility"
* item[2].item[2].answer[0].valueString = "Vilniaus universiteto ligonines Santaros klinikos"

* item[2].item[3].linkId = "doctor-name"
* item[2].item[3].text = "Doctor"
* item[2].item[3].answer[0].valueString = "Dr. Jonas Petrauskas"
