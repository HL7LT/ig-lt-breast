// =============================================================================
// Questionnaire: Pathological Histological Examination (ADP Table 7.5)
// QuestionnaireResponse: Realistic example for core needle biopsy
// =============================================================================
// Narrative mapping to FHIR resources:
//   - Clinical diagnosis     -> PathologyReportLtLab (from ig-lt-lab)
//   - Specimen               -> Specimen resource
//   - Macroscopic examination -> PathologyCompositionLtLab section[macroscopic]
//   - Microscopic examination -> PathologyCompositionLtLab section[microscopic]
//   - IHC results (ER, PR, HER2, Ki67) -> Observation resources
//   - Conclusion / WHO diagnosis -> PathologyCompositionLtLab section[synthesis]
//   - Grade / Size / LVI     -> Condition staging observations
// =============================================================================

Instance: questionnaire-pathology-lt-breast
InstanceOf: Questionnaire
Usage: #example
Title: "Questionnaire: Pathological Histological Examination ESPBI Form (LT Breast)"
Description: "ADP Table 7.5 — Pathological histological examination questionnaire for Lithuanian breast diagnostics ESPBI-style forms."
* name = "PathologyQuestionnaireLtBreast"
* title = "Questionnaire: Pathological Histological Examination ESPBI Form (LT Breast)"
* status = #active
* url = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-pathology-lt-breast"

// ---------------------------------------------------------------------------
// 1. Referral header (display only)
// ---------------------------------------------------------------------------
* item[0].linkId = "grp-referral"
* item[0].text = "Referral to perform pathology test"
* item[0].type = #display

// ---------------------------------------------------------------------------
// 2. Patient demographics
// ---------------------------------------------------------------------------
* item[1].linkId = "grp-patient"
* item[1].text = "Patient information"
* item[1].type = #group

* item[1].item[0].linkId = "patient-personal-code"
* item[1].item[0].text = "Personal code"
* item[1].item[0].type = #string

* item[1].item[1].linkId = "patient-name"
* item[1].item[1].text = "Name"
* item[1].item[1].type = #string

* item[1].item[2].linkId = "patient-surname"
* item[1].item[2].text = "Surname"
* item[1].item[2].type = #string

* item[1].item[3].linkId = "patient-birth-date"
* item[1].item[3].text = "Date of birth"
* item[1].item[3].type = #date

* item[1].item[4].linkId = "patient-age"
* item[1].item[4].text = "Age"
* item[1].item[4].type = #integer

* item[1].item[5].linkId = "patient-gender"
* item[1].item[5].text = "Gender"
* item[1].item[5].type = #coding
* item[1].item[5].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
* item[1].item[5].answerOption[1].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"

// ---------------------------------------------------------------------------
// 3. Specimen dates
// ---------------------------------------------------------------------------
* item[2].linkId = "grp-specimen-dates"
* item[2].text = "Specimen dates"
* item[2].type = #group

* item[2].item[0].linkId = "specimen-collection-date"
* item[2].item[0].text = "Date of material collection"
* item[2].item[0].type = #dateTime

* item[2].item[1].linkId = "specimen-shipment-date"
* item[2].item[1].text = "Shipment / formation date"
* item[2].item[1].type = #dateTime

// ---------------------------------------------------------------------------
// 4. Clinical diagnosis
// ---------------------------------------------------------------------------
* item[3].linkId = "grp-clinical-diagnosis"
* item[3].text = "Clinical diagnosis"
* item[3].type = #group

* item[3].item[0].linkId = "diagnosis-icd10-code"
* item[3].item[0].text = "Clinical diagnosis ICD-10-AM code"
* item[3].item[0].type = #string

* item[3].item[1].linkId = "diagnosis-name"
* item[3].item[1].text = "Clinical diagnosis name"
* item[3].item[1].type = #text

// ---------------------------------------------------------------------------
// 5. Material fixation
// ---------------------------------------------------------------------------
* item[4].linkId = "grp-material"
* item[4].text = "Material fixation"
* item[4].type = #group

* item[4].item[0].linkId = "fixation-type"
* item[4].item[0].text = "Material fixation type"
* item[4].item[0].type = #coding
* item[4].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#fixation-formalin "Fixed (10% formalin buffered solution)"
* item[4].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#fixation-unfixed "Unfixed"

// ---------------------------------------------------------------------------
// 6. Previous procedures / key clinical data
// ---------------------------------------------------------------------------
* item[5].linkId = "grp-previous-procedures"
* item[5].text = "Previous procedures and key clinical data"
* item[5].type = #group

* item[5].item[0].linkId = "previous-procedures"
* item[5].item[0].text = "Key clinical data"
* item[5].item[0].type = #coding
* item[5].item[0].repeats = true
* item[5].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#proc-none "No important information"
* item[5].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#proc-biopsy "Biopsy"
* item[5].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#proc-excision "Excision"
* item[5].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#proc-other-operation "Other operation"
* item[5].item[0].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#proc-chemotherapy "Chemotherapy"
* item[5].item[0].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#proc-radiation "Radiation (breast)"
* item[5].item[0].answerOption[6].valueCoding = $breast-questionnaire-options-cs-url#proc-immunotherapy "Immunotherapy"

* item[5].item[1].linkId = "previous-procedures-other"
* item[5].item[1].text = "Other information"
* item[5].item[1].type = #text

// ---------------------------------------------------------------------------
// 7. Special tests
// ---------------------------------------------------------------------------
* item[6].linkId = "grp-special-tests"
* item[6].text = "Special tests"
* item[6].type = #group

* item[6].item[0].linkId = "special-tests-required"
* item[6].item[0].text = "Special tests required"
* item[6].item[0].type = #text

// ---------------------------------------------------------------------------
// 8. Radiological data
// ---------------------------------------------------------------------------
* item[7].linkId = "grp-radiological-data"
* item[7].text = "Radiological examination data"
* item[7].type = #group

* item[7].item[0].linkId = "radiology-performed"
* item[7].item[0].text = "Radiological examination performed"
* item[7].item[0].type = #coding
* item[7].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"
* item[7].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#no "No"

* item[7].item[1].linkId = "radiology-exam-type"
* item[7].item[1].text = "Examination type"
* item[7].item[1].type = #coding
* item[7].item[1].repeats = true
* item[7].item[1].answerOption[0].valueCoding = $sct#71651007 "Mammography"
* item[7].item[1].answerOption[1].valueCoding = $sct#439324009 "Digital breast tomosynthesis"
* item[7].item[1].answerOption[2].valueCoding = $sct#16310003 "Ultrasonography"

* item[7].item[2].linkId = "radiology-exam-date"
* item[7].item[2].text = "Examination date"
* item[7].item[2].type = #date

* item[7].item[3].linkId = "birads-right"
* item[7].item[3].text = "BI-RADS right breast"
* item[7].item[3].type = #coding
* item[7].item[3].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#birads-0 "BI-RADS 0 – Incomplete examination"
* item[7].item[3].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – No changes found"
* item[7].item[3].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#birads-2 "BI-RADS 2 – Benign changes found"
* item[7].item[3].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#birads-3 "BI-RADS 3 – Possibly benign changes"
* item[7].item[3].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious malignant finding"
* item[7].item[3].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#birads-5 "BI-RADS 5 – Highly probable malignant finding"

* item[7].item[4].linkId = "birads-left"
* item[7].item[4].text = "BI-RADS left breast"
* item[7].item[4].type = #coding
* item[7].item[4].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#birads-0 "BI-RADS 0 – Incomplete examination"
* item[7].item[4].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – No changes found"
* item[7].item[4].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#birads-2 "BI-RADS 2 – Benign changes found"
* item[7].item[4].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#birads-3 "BI-RADS 3 – Possibly benign changes"
* item[7].item[4].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious malignant finding"
* item[7].item[4].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#birads-5 "BI-RADS 5 – Highly probable malignant finding"

// ---------------------------------------------------------------------------
// 9. Operation
// ---------------------------------------------------------------------------
* item[8].linkId = "grp-operation"
* item[8].text = "Operation details"
* item[8].type = #group

* item[8].item[0].linkId = "operation-nature"
* item[8].item[0].text = "Nature of operation"
* item[8].item[0].type = #coding
* item[8].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#op-thick-needle-biopsy "Thick needle biopsy"
* item[8].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#op-excision "Excision"
* item[8].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#op-other "Other (free text)"

* item[8].item[1].linkId = "operation-other-details"
* item[8].item[1].text = "Other operation details"
* item[8].item[1].type = #text

// ---------------------------------------------------------------------------
// 10. Histological sample description
// ---------------------------------------------------------------------------
* item[9].linkId = "grp-histological-sample"
* item[9].text = "Description of histological sample / object"
* item[9].type = #group

* item[9].item[0].linkId = "sample-container-info"
* item[9].item[0].text = "Container information"
* item[9].item[0].type = #text

* item[9].item[1].linkId = "sample-biopsy-location"
* item[9].item[1].text = "Biopsy location"
* item[9].item[1].type = #text

// ---------------------------------------------------------------------------
// 11. Macroscopic examination
// ---------------------------------------------------------------------------
* item[10].linkId = "grp-macroscopic"
* item[10].text = "Description of macroscopic examination"
* item[10].type = #group

* item[10].item[0].linkId = "macro-biopsy-size"
* item[10].item[0].text = "Biopsy size (mm)"
* item[10].item[0].type = #quantity

* item[10].item[1].linkId = "macro-fragment-details"
* item[10].item[1].text = "Fragment details"
* item[10].item[1].type = #text

* item[10].item[2].linkId = "macro-notes"
* item[10].item[2].text = "Notes"
* item[10].item[2].type = #text

// ---------------------------------------------------------------------------
// 12. Microscopic examination
// ---------------------------------------------------------------------------
* item[11].linkId = "grp-microscopic"
* item[11].text = "Description of microscopic examination"
* item[11].type = #group

* item[11].item[0].linkId = "microscopic-description"
* item[11].item[0].text = "Microscopic examination description"
* item[11].item[0].type = #text

// ---------------------------------------------------------------------------
// 13. Immunohistochemistry (IHC)
// ---------------------------------------------------------------------------
* item[12].linkId = "grp-ihc"
* item[12].text = "Immunohistochemistry (IHC)"
* item[12].type = #group

* item[12].item[0].linkId = "ihc-er-status"
* item[12].item[0].text = "Estrogen receptors ER"
* item[12].item[0].type = #coding
* item[12].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#ihc-negative "Negative"
* item[12].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#ihc-weak "Weak (+)"
* item[12].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#ihc-moderate "Moderate (++)"
* item[12].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#ihc-strong "Strong (+++)"

* item[12].item[1].linkId = "ihc-er-percent"
* item[12].item[1].text = "ER expression in nuclei (%)"
* item[12].item[1].type = #quantity

* item[12].item[2].linkId = "ihc-pr-status"
* item[12].item[2].text = "Progesterone receptors PR"
* item[12].item[2].type = #coding
* item[12].item[2].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#ihc-negative "Negative"
* item[12].item[2].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#ihc-weak "Weak (+)"
* item[12].item[2].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#ihc-moderate "Moderate (++)"
* item[12].item[2].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#ihc-strong "Strong (+++)"

* item[12].item[3].linkId = "ihc-pr-percent"
* item[12].item[3].text = "PR expression in nuclei (%)"
* item[12].item[3].type = #quantity

* item[12].item[4].linkId = "ihc-her2-status"
* item[12].item[4].text = "HER2 status"
* item[12].item[4].type = #coding
* item[12].item[4].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#her2-negative "HER2: expression absent (0)"
* item[12].item[4].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#her2-low "HER2: low immunohistochemical expression (1+)"
* item[12].item[4].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#her2-borderline "HER2: expression borderline (2+)"
* item[12].item[4].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#her2-positive "HER2: expression positive (3+)"

* item[12].item[5].linkId = "ihc-her2-evaluation"
* item[12].item[5].text = "HER2 evaluation"
* item[12].item[5].type = #coding
* item[12].item[5].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#her2-eval-0 "HER2 evaluation: 0+"
* item[12].item[5].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#her2-eval-1 "HER2 evaluation: 1+"
* item[12].item[5].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#her2-eval-2 "HER2 evaluation: 2+"
* item[12].item[5].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#her2-eval-3 "HER2 evaluation: 3+"

* item[12].item[6].linkId = "ihc-ki67"
* item[12].item[6].text = "Ki67 proliferation index (%)"
* item[12].item[6].type = #quantity

// ---------------------------------------------------------------------------
// 14. Molecular studies (FISH / CISH / SISH)
// ---------------------------------------------------------------------------
* item[13].linkId = "grp-molecular"
* item[13].text = "Molecular studies"
* item[13].type = #group

* item[13].item[0].linkId = "fish-result"
* item[13].item[0].text = "FISH result"
* item[13].item[0].type = #coding
* item[13].item[0].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#fish-amplified "FISH: HER2 amplified"
* item[13].item[0].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#fish-amplified-clusters "FISH: amplified (clusters)"
* item[13].item[0].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#fish-co-amplified "FISH: co-amplified (HER2>=6, HER2/CEP17<2)"
* item[13].item[0].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#fish-borderline "FISH: borderline (4<=HER2<6, HER2/CEP17<2)"
* item[13].item[0].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#fish-monosomic "FISH: monosomic (HER2<4, HER2/CEP17>=2)"
* item[13].item[0].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#fish-negative "FISH: negative (HER2<4, HER2/CEP17<2)"
* item[13].item[0].answerOption[6].valueCoding = $breast-questionnaire-options-cs-url#fish-not-evaluated "FISH: not to be evaluated"

* item[13].item[1].linkId = "fish-her2-average"
* item[13].item[1].text = "HER2 average"
* item[13].item[1].type = #decimal

* item[13].item[2].linkId = "fish-cep17-average"
* item[13].item[2].text = "Average CEP17"
* item[13].item[2].type = #decimal

* item[13].item[3].linkId = "fish-her2-cep17-ratio"
* item[13].item[3].text = "HER2/CEP17 ratio"
* item[13].item[3].type = #decimal

* item[13].item[4].linkId = "cish-sish-result"
* item[13].item[4].text = "CISH/SISH result"
* item[13].item[4].type = #coding
* item[13].item[4].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#cish-amplified "CISH/SISH: HER2 amplified"
* item[13].item[4].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#cish-not-amplified "CISH/SISH: HER2 not amplified"
* item[13].item[4].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#cish-not-evaluated "CISH/SISH: not to be evaluated"

// ---------------------------------------------------------------------------
// 15. Conclusion
// ---------------------------------------------------------------------------
* item[14].linkId = "grp-conclusion"
* item[14].text = "Conclusion"
* item[14].type = #group

* item[14].item[0].linkId = "conclusion-who-diagnosis"
* item[14].item[0].text = "WHO Classification diagnosis"
* item[14].item[0].type = #text

* item[14].item[1].linkId = "conclusion-tumour-grade"
* item[14].item[1].text = "Tumour grade"
* item[14].item[1].type = #coding
* item[14].item[1].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#grade-g1 "G1 (well-differentiated)"
* item[14].item[1].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#grade-g2 "G2 (moderately differentiated)"
* item[14].item[1].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#grade-g3 "G3 (poorly differentiated)"
* item[14].item[1].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#grade-gx "Gx (degree of differentiation undetermined)"

* item[14].item[2].linkId = "conclusion-tumour-size"
* item[14].item[2].text = "Tumour size (mm)"
* item[14].item[2].type = #quantity

* item[14].item[3].linkId = "conclusion-lvi"
* item[14].item[3].text = "Lymphovascular invasion"
* item[14].item[3].type = #coding
* item[14].item[3].answerOption[0].valueCoding = $breast-questionnaire-options-cs-url#lvi-0 "pLVI-0: not detected"
* item[14].item[3].answerOption[1].valueCoding = $breast-questionnaire-options-cs-url#lvi-1 "pLVI-1: spreading, otherwise unclassified"
* item[14].item[3].answerOption[2].valueCoding = $breast-questionnaire-options-cs-url#lvi-2 "pLVI-2: only in lymphatic vessels and small blood vessels"
* item[14].item[3].answerOption[3].valueCoding = $breast-questionnaire-options-cs-url#lvi-3 "pLVI-3: only in veins (large, thick-walled blood vessels)"
* item[14].item[3].answerOption[4].valueCoding = $breast-questionnaire-options-cs-url#lvi-4 "pLVI-4: present in both lymphatic vessels and veins"
* item[14].item[3].answerOption[5].valueCoding = $breast-questionnaire-options-cs-url#lvi-9 "pLVI-9: undetectable/unknown"


// =============================================================================
// QuestionnaireResponse: Realistic pathology example
// =============================================================================
// Scenario: 40-year-old woman, core needle biopsy of left breast,
//   formalin-fixed specimen. Invasive ductal carcinoma (NST), grade G2,
//   ER strong (90%), PR moderate (60%), HER2 borderline (2+), Ki67 25%,
//   tumour size 18 mm, no lymphovascular invasion.
// =============================================================================

Instance: questionnaireresponse-pathology-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: Pathological Histological Examination (example)"
Description: "Example response for pathological histological examination — invasive ductal carcinoma, core needle biopsy, ER+/PR+/HER2 borderline."
* questionnaire = "https://hl7.lt/fhir/breast/Questionnaire/questionnaire-pathology-lt-breast"
* status = #completed
* authored = "2025-03-10T14:30:00+02:00"
* subject = Reference(example-patient-female)

// 1. Referral (display — no answer)
* item[0].linkId = "grp-referral"
* item[0].text = "Referral to perform pathology test"

// 2. Patient information
* item[1].linkId = "grp-patient"
* item[1].text = "Patient information"

* item[1].item[0].linkId = "patient-personal-code"
* item[1].item[0].text = "Personal code"
* item[1].item[0].answer[0].valueString = "48501019999"

* item[1].item[1].linkId = "patient-name"
* item[1].item[1].text = "Name"
* item[1].item[1].answer[0].valueString = "Janette"

* item[1].item[2].linkId = "patient-surname"
* item[1].item[2].text = "Surname"
* item[1].item[2].answer[0].valueString = "Petrauskaite"

* item[1].item[3].linkId = "patient-birth-date"
* item[1].item[3].text = "Date of birth"
* item[1].item[3].answer[0].valueDate = "1985-01-01"

* item[1].item[4].linkId = "patient-age"
* item[1].item[4].text = "Age"
* item[1].item[4].answer[0].valueInteger = 40

* item[1].item[5].linkId = "patient-gender"
* item[1].item[5].text = "Gender"
* item[1].item[5].answer[0].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"

// 3. Specimen dates
* item[2].linkId = "grp-specimen-dates"
* item[2].text = "Specimen dates"

* item[2].item[0].linkId = "specimen-collection-date"
* item[2].item[0].text = "Date of material collection"
* item[2].item[0].answer[0].valueDateTime = "2025-03-07T09:15:00+02:00"

* item[2].item[1].linkId = "specimen-shipment-date"
* item[2].item[1].text = "Shipment / formation date"
* item[2].item[1].answer[0].valueDateTime = "2025-03-07T10:00:00+02:00"

// 4. Clinical diagnosis
* item[3].linkId = "grp-clinical-diagnosis"
* item[3].text = "Clinical diagnosis"

* item[3].item[0].linkId = "diagnosis-icd10-code"
* item[3].item[0].text = "Clinical diagnosis ICD-10-AM code"
* item[3].item[0].answer[0].valueString = "C50.4"

* item[3].item[1].linkId = "diagnosis-name"
* item[3].item[1].text = "Clinical diagnosis name"
* item[3].item[1].answer[0].valueString = "Malignant neoplasm of upper-outer quadrant of breast"

// 5. Material fixation
* item[4].linkId = "grp-material"
* item[4].text = "Material fixation"

* item[4].item[0].linkId = "fixation-type"
* item[4].item[0].text = "Material fixation type"
* item[4].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#fixation-formalin "Fixed (10% formalin buffered solution)"

// 6. Previous procedures
* item[5].linkId = "grp-previous-procedures"
* item[5].text = "Previous procedures and key clinical data"

* item[5].item[0].linkId = "previous-procedures"
* item[5].item[0].text = "Key clinical data"
* item[5].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#proc-none "No important information"

* item[5].item[1].linkId = "previous-procedures-other"
* item[5].item[1].text = "Other information"

// 7. Special tests
* item[6].linkId = "grp-special-tests"
* item[6].text = "Special tests"

* item[6].item[0].linkId = "special-tests-required"
* item[6].item[0].text = "Special tests required"
* item[6].item[0].answer[0].valueString = "IHC panel (ER, PR, HER2, Ki67)"

// 8. Radiological data
* item[7].linkId = "grp-radiological-data"
* item[7].text = "Radiological examination data"

* item[7].item[0].linkId = "radiology-performed"
* item[7].item[0].text = "Radiological examination performed"
* item[7].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#yes "Yes"

* item[7].item[1].linkId = "radiology-exam-type"
* item[7].item[1].text = "Examination type"
* item[7].item[1].answer[0].valueCoding = $sct#71651007 "Mammography"
* item[7].item[1].answer[1].valueCoding = $sct#16310003 "Ultrasonography"

* item[7].item[2].linkId = "radiology-exam-date"
* item[7].item[2].text = "Examination date"
* item[7].item[2].answer[0].valueDate = "2025-03-05"

* item[7].item[3].linkId = "birads-right"
* item[7].item[3].text = "BI-RADS right breast"
* item[7].item[3].answer[0].valueCoding = $breast-questionnaire-options-cs-url#birads-1 "BI-RADS 1 – No changes found"

* item[7].item[4].linkId = "birads-left"
* item[7].item[4].text = "BI-RADS left breast"
* item[7].item[4].answer[0].valueCoding = $breast-questionnaire-options-cs-url#birads-4 "BI-RADS 4 – Suspicious malignant finding"

// 9. Operation
* item[8].linkId = "grp-operation"
* item[8].text = "Operation details"

* item[8].item[0].linkId = "operation-nature"
* item[8].item[0].text = "Nature of operation"
* item[8].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#op-thick-needle-biopsy "Thick needle biopsy"

* item[8].item[1].linkId = "operation-other-details"
* item[8].item[1].text = "Other operation details"

// 10. Histological sample
* item[9].linkId = "grp-histological-sample"
* item[9].text = "Description of histological sample / object"

* item[9].item[0].linkId = "sample-container-info"
* item[9].item[0].text = "Container information"
* item[9].item[0].answer[0].valueString = "1 container, labelled 'Left breast UOQ, CNB'"

* item[9].item[1].linkId = "sample-biopsy-location"
* item[9].item[1].text = "Biopsy location"
* item[9].item[1].answer[0].valueString = "Left breast, upper-outer quadrant, 2 o'clock position, 5 cm from nipple"

// 11. Macroscopic examination
// -> maps to PathologyCompositionLtLab section[macroscopic]
* item[10].linkId = "grp-macroscopic"
* item[10].text = "Description of macroscopic examination"

* item[10].item[0].linkId = "macro-biopsy-size"
* item[10].item[0].text = "Biopsy size (mm)"
* item[10].item[0].answer[0].valueQuantity = 15 'mm' "mm"

* item[10].item[1].linkId = "macro-fragment-details"
* item[10].item[1].text = "Fragment details"
* item[10].item[1].answer[0].valueString = "4 tissue cores, pale grey, firm, longest 15 mm"

* item[10].item[2].linkId = "macro-notes"
* item[10].item[2].text = "Notes"
* item[10].item[2].answer[0].valueString = "Entirely submitted in 2 cassettes"

// 12. Microscopic examination
// -> maps to PathologyCompositionLtLab section[microscopic]
* item[11].linkId = "grp-microscopic"
* item[11].text = "Description of microscopic examination"

* item[11].item[0].linkId = "microscopic-description"
* item[11].item[0].text = "Microscopic examination description"
* item[11].item[0].answer[0].valueString = "Core biopsy fragments showing invasive carcinoma of no special type (NST). Tumour cells arranged in nests, cords and tubular structures, surrounded by desmoplastic stroma. Moderate nuclear pleomorphism, mitotic count 8/10 HPF. No definite in-situ component identified in this limited sample."

// 13. IHC
// -> maps to Observation resources (ER, PR, HER2, Ki67)
* item[12].linkId = "grp-ihc"
* item[12].text = "Immunohistochemistry (IHC)"

* item[12].item[0].linkId = "ihc-er-status"
* item[12].item[0].text = "Estrogen receptors ER"
* item[12].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#ihc-strong "Strong (+++)"

* item[12].item[1].linkId = "ihc-er-percent"
* item[12].item[1].text = "ER expression in nuclei (%)"
* item[12].item[1].answer[0].valueQuantity = 90 '%' "%"

* item[12].item[2].linkId = "ihc-pr-status"
* item[12].item[2].text = "Progesterone receptors PR"
* item[12].item[2].answer[0].valueCoding = $breast-questionnaire-options-cs-url#ihc-moderate "Moderate (++)"

* item[12].item[3].linkId = "ihc-pr-percent"
* item[12].item[3].text = "PR expression in nuclei (%)"
* item[12].item[3].answer[0].valueQuantity = 60 '%' "%"

* item[12].item[4].linkId = "ihc-her2-status"
* item[12].item[4].text = "HER2 status"
* item[12].item[4].answer[0].valueCoding = $breast-questionnaire-options-cs-url#her2-borderline "HER2: expression borderline (2+)"

* item[12].item[5].linkId = "ihc-her2-evaluation"
* item[12].item[5].text = "HER2 evaluation"
* item[12].item[5].answer[0].valueCoding = $breast-questionnaire-options-cs-url#her2-eval-2 "HER2 evaluation: 2+"

* item[12].item[6].linkId = "ihc-ki67"
* item[12].item[6].text = "Ki67 proliferation index (%)"
* item[12].item[6].answer[0].valueQuantity = 25 '%' "%"

// 14. Molecular studies
* item[13].linkId = "grp-molecular"
* item[13].text = "Molecular studies"

* item[13].item[0].linkId = "fish-result"
* item[13].item[0].text = "FISH result"
* item[13].item[0].answer[0].valueCoding = $breast-questionnaire-options-cs-url#fish-not-evaluated "FISH: not to be evaluated"

* item[13].item[1].linkId = "fish-her2-average"
* item[13].item[1].text = "HER2 average"

* item[13].item[2].linkId = "fish-cep17-average"
* item[13].item[2].text = "Average CEP17"

* item[13].item[3].linkId = "fish-her2-cep17-ratio"
* item[13].item[3].text = "HER2/CEP17 ratio"

* item[13].item[4].linkId = "cish-sish-result"
* item[13].item[4].text = "CISH/SISH result"
* item[13].item[4].answer[0].valueCoding = $breast-questionnaire-options-cs-url#cish-not-evaluated "CISH/SISH: not to be evaluated"

// 15. Conclusion
// -> maps to PathologyCompositionLtLab section[synthesis], Condition staging
* item[14].linkId = "grp-conclusion"
* item[14].text = "Conclusion"

* item[14].item[0].linkId = "conclusion-who-diagnosis"
* item[14].item[0].text = "WHO Classification diagnosis"
* item[14].item[0].answer[0].valueString = "Invasive breast carcinoma of no special type (NST) (ICD-O 8500/3)"

* item[14].item[1].linkId = "conclusion-tumour-grade"
* item[14].item[1].text = "Tumour grade"
* item[14].item[1].answer[0].valueCoding = $breast-questionnaire-options-cs-url#grade-g2 "G2 (moderately differentiated)"

* item[14].item[2].linkId = "conclusion-tumour-size"
* item[14].item[2].text = "Tumour size (mm)"
* item[14].item[2].answer[0].valueQuantity = 18 'mm' "mm"

* item[14].item[3].linkId = "conclusion-lvi"
* item[14].item[3].text = "Lymphovascular invasion"
* item[14].item[3].answer[0].valueCoding = $breast-questionnaire-options-cs-url#lvi-0 "pLVI-0: not detected"
