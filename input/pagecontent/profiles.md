### Profiles

This page lists all StructureDefinition profiles defined in the Lithuanian Breast Diagnostics Implementation Guide. These profiles support the breast cancer prevention programme — from patient history collection and imaging acquisition through radiological evaluation, biopsy, and pathology reporting.

#### Report and Composition Profiles

| Profile | Description |
|---|---|
| [BreastReportLtBreast](StructureDefinition-breast-report-lt-breast.html) | Overall breast diagnostic report covering the entire breast cancer diagnostic pathway. Aggregates a composition and structured results. |
| [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | Diagnostic report specific to mammography imaging studies, with sliced results for BI-RADS, mammographic, and ultrasound findings. |
| [BreastCompositionLtBreast](StructureDefinition-breast-composition-lt-breast.html) | Breast-specific imaging composition extending the base imaging composition with constrained findings, impression, and history sections. |

#### Assessment Profiles

| Profile | Description |
|---|---|
| [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | Standardised BI-RADS (Breast Imaging Reporting and Data System) assessment observation. Categories 0–5 per breast. |
| [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | ACR BI-RADS breast gland density classification (A–D). |
| [BreastHistoryAssessmentLtBreast](StructureDefinition-breast-history-assessment-lt-breast.html) | Pre-examination breast history collected from the patient: prior surgery, injuries, diseases, and family history. |
| [BreastNippleInversionLtBreast](StructureDefinition-breast-nipple-inversion-lt-breast.html) | Nipple appearance assessment (normal or retracted). |

#### Finding Profiles

| Profile | Description |
|---|---|
| [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | General breast observation findings such as scars, skin lesions, and palpable changes. |
| [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | Structured mammographic findings with components for finding type, diameter, and evolution. |
| [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | Ultrasound lesion findings with components for lesion type, clock-face position, and dimensions. |

#### Structure Profiles

| Profile | Description |
|---|---|
| [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | Breast body structure with laterality and quadrant localization. Used to identify specific anatomical locations of findings. |

#### Workflow Profiles

| Profile | Description |
|---|---|
| [BreastServiceRequestLtBreast](StructureDefinition-breast-service-request-lt-breast.html) | Clinical recommendation or order for breast examination, follow-up, or referral. Driven by BI-RADS assessment results. |

#### Cross-IG Dependencies

The breast diagnostics pathway relies on observations from other Lithuanian FHIR IGs:

- **[Vital Signs IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — blood pressure, BMI, body weight observations collected during the patient visit
- **[Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — tobacco use, alcohol consumption, physical activity, and family history observations relevant to breast cancer risk assessment
