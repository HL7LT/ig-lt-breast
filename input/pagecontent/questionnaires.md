### Questionnaires

This page describes the five ESPBI (Electronic Health Services and Cooperation Infrastructure) questionnaire forms used in the Lithuanian breast cancer prevention programme. Each questionnaire captures a structured dataset defined in the ADP (Early Diagnostics and Preventive Programmes) research specification.

These Questionnaire resources are independent of the FHIR profile-based data model. They represent the ESPBI form structure as-is, while the narrative mapping tables below show how each questionnaire item maps to the corresponding FHIR profile and element.

#### Overview

| Questionnaire | ESPBI Form | Clinical Stage |
|---|---|---|
| [Mammogram](Questionnaire-questionnaire-mammogram-lt-breast.html) | ADP Table 7.1 | Imaging acquisition and radiological evaluation |
| [Tomosynthesis](Questionnaire-questionnaire-tomosynthesis-lt-breast.html) | ADP Table 7.2 | Additional imaging (when BIRADS-0) |
| [Ultrasound](Questionnaire-questionnaire-ultrasound-lt-breast.html) | ADP Table 7.3 | Targeted examination for dense tissue or findings |
| [Biopsy](Questionnaire-questionnaire-biopsy-lt-breast.html) | ADP Table 7.4 | Image-guided biopsy (BIRADS 4–5) |
| [Pathology](Questionnaire-questionnaire-pathology-lt-breast.html) | ADP Table 7.5 | Histological examination and diagnosis |

---

#### Mammogram Questionnaire

The mammogram form captures the full screening mammography workflow: examination context, pre-examination clinical findings (palpable changes, scars, nipple status, surgical history), ACR gland density assessment, structured findings per breast (formations, calcifications, deformations, asymmetric tissue), comparison with prior studies, BI-RADS conclusion, and recommendations.

**Example response:** [questionnaireresponse-mammogram-example](QuestionnaireResponse-questionnaireresponse-mammogram-example.html)

**Narrative mapping to FHIR profiles:**

| Questionnaire Item | FHIR Profile | Element |
|---|---|---|
| Date of test | [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | effectiveDateTime |
| Radiation dose | ObservationLt | valueQuantity (mGy) |
| Palpable changes – Scars | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | valueCodeableConcept |
| Palpable changes – Nipple | [BreastNippleInversionLtBreast](StructureDefinition-breast-nipple-inversion-lt-breast.html) | valueCodeableConcept |
| Palpable changes – Surgery history | [BreastHistoryAssessmentLtBreast](StructureDefinition-breast-history-assessment-lt-breast.html) | valueCodeableConcept |
| Gland density (ACR) | [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | valueCodeableConcept |
| Findings – Formations | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Type] |
| Findings – Size | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Diameter] |
| BI-RADS conclusion | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |
| Recommendations | [BreastServiceRequestLtBreast](StructureDefinition-breast-service-request-lt-breast.html) | code |
| Radiologist | PractitionerLt / PractitionerRoleLt | name |
| Facility | OrganizationLt | name |

---

#### Tomosynthesis Questionnaire

The tomosynthesis form captures data for follow-up imaging when the initial mammogram result is BIRADS-0 (incomplete). Structure mirrors the mammogram form with additional detail on the indication and technologist.

**Example response:** [questionnaireresponse-tomosynthesis-example](QuestionnaireResponse-questionnaireresponse-tomosynthesis-example.html)

**Narrative mapping to FHIR profiles:**

| Questionnaire Item | FHIR Profile | Element |
|---|---|---|
| Date of test | [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | effectiveDateTime |
| Test indication (BIRADS-0) | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | Prior assessment triggering this study |
| Radiation dose | ObservationLt | valueQuantity (Gy) |
| Findings – Localization | [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | includedStructure.laterality + qualifier |
| Findings – Entity/Deformation/Calcined | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Type] |
| Findings – Size | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Diameter] |
| BI-RADS conclusion | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |

---

#### Ultrasound Questionnaire

The ultrasound form captures targeted examination data when referred for dense tissue review (BIRADS 1–2 with dense gland) or finding evaluation (BIRADS 0, 4, 5). It records parenchyma structure, clock-face position findings, lesion characteristics, duct condition, and lymph node assessment per breast.

**Example response:** [questionnaireresponse-ultrasound-example](QuestionnaireResponse-questionnaireresponse-ultrasound-example.html)

**Narrative mapping to FHIR profiles:**

| Questionnaire Item | FHIR Profile | Element |
|---|---|---|
| Parenchyma structure | [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | valueCodeableConcept |
| Finding localization (clock) | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[clock-position] |
| Change properties | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[lesion] |
| Size (length, width) | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[length-mm], component[width-mm] |
| Nature of change | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | valueCodeableConcept |
| Lymph node changes | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | component |
| BI-RADS conclusion | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |

---

#### Biopsy Questionnaire

The biopsy form captures image-guided biopsy procedure data when BIRADS 4–5 triggers a tissue sampling recommendation. It records the guidance modality, specimen containers, lesion localization, and lymph node status.

**Example response:** [questionnaireresponse-biopsy-example](QuestionnaireResponse-questionnaireresponse-biopsy-example.html)

**Narrative mapping to FHIR profiles:**

| Questionnaire Item | FHIR Profile | Element |
|---|---|---|
| Type of procedure | ProcedureLt | code (ACHI codes 31548-00, 90724-00) |
| Sample containers | Specimen | container |
| Localization | [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | includedStructure |
| Size of entity | ProcedureLt or Specimen | note |
| BI-RADS conclusion | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |
| Lymph node changes | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | component |

---

#### Pathology Questionnaire

The pathology form is the most comprehensive, capturing the entire histological examination workflow: referral data, specimen details, macroscopic and microscopic descriptions, immunohistochemistry (ER, PR, HER2, Ki67), molecular tests (FISH, CISH/SISH), and the final WHO classification diagnosis with grading, tumour size, and lymphovascular invasion.

**Example response:** [questionnaireresponse-pathology-example](QuestionnaireResponse-questionnaireresponse-pathology-example.html)

**Narrative mapping to FHIR profiles:**

| Questionnaire Item | FHIR Profile (cross-IG) | Element |
|---|---|---|
| Clinical diagnosis (ICD-10-AM) | PathologyReportLtLab (ig-lt-lab) | conclusionCode.coding[icd10] |
| Material fixation | Specimen | processing.method |
| Previous procedures | ConditionLt | evidence |
| Macroscopic examination | PathologyCompositionLtLab (ig-lt-lab) | section[macroscopic].text |
| Microscopic examination | PathologyCompositionLtLab (ig-lt-lab) | section[microscopic].text |
| ER / PR status | ObservationLt | valueCodeableConcept |
| HER2 status | ObservationLt | valueCodeableConcept |
| Ki67 proliferation index | ObservationLt | valueQuantity (%) |
| FISH / CISH result | ObservationLt | valueCodeableConcept |
| WHO diagnosis | PathologyCompositionLtLab (ig-lt-lab) | section[synthesis].text |
| Tumour grade | ObservationLt | valueCodeableConcept (AJCC G1–G3) |
| Tumour size | ObservationLt | valueQuantity (mm) |
| Lymphovascular invasion | ObservationLt | valueCodeableConcept (pLVI-0 to pLVI-9) |

#### Cross-IG References

The questionnaire mapping connects to resources defined in several Lithuanian FHIR IGs:

- **[Breast IG](index.html)** — imaging findings, BI-RADS, gland density, body structure
- **[Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)** — pathology report and composition (PathologyReportLtLab, PathologyCompositionLtLab)
- **[Vital Signs IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — anthropometric measurements collected during visit
- **[Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — smoking, alcohol, family history relevant to breast cancer risk
