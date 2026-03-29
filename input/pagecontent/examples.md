### Examples

This page lists all example instances in the Lithuanian Breast Diagnostics Implementation Guide, grouped by category. Cross-IG references to published examples in the Vital Signs and Lifestyle IGs are included.

#### Report and Composition Examples

| Instance | Profile | Description |
|---|---|---|
| [diagnosticreport-breast-report-example](DiagnosticReport-diagnosticreport-breast-report-example.html) | BreastReportLtBreast | Complete breast diagnostic report aggregating composition, BI-RADS, findings, and gland density. |
| [breast-adp-process-composition-example](Composition-breast-adp-process-composition-example.html) | BreastCompositionLtBreast | Imaging composition summarizing the breast cancer diagnostic process with all required sections. |

#### BI-RADS Assessment Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-birads-1-negative-example](Observation-observation-birads-1-negative-example.html) | BiradsAssessmentLtBreast | BI-RADS 1 – Negative (no changes found). |
| [observation-birads-cat4-example](Observation-observation-birads-cat4-example.html) | BiradsAssessmentLtBreast | BI-RADS 4 – Suspicious abnormality. |

#### Gland Density and Nipple Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-gland-density-fatty-example](Observation-observation-gland-density-fatty-example.html) | BreastGlandDensityLtBreast | ACR A – Almost entirely fatty breast composition. |
| [observation-nipple-inversion-example](Observation-observation-nipple-inversion-example.html) | BreastNippleInversionLtBreast | Nipple retraction observed. |

#### Mammographic Finding Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-mammo-mass-left-uoq-example](Observation-observation-mammo-mass-left-uoq-example.html) | MammographicExaminationFindingLtBreast | Mass finding in left UOQ with size and evolution status. |
| [observation-mammo-calc-right-liq-example](Observation-observation-mammo-calc-right-liq-example.html) | MammographicExaminationFindingLtBreast | Calcification finding in right LIQ. |
| [observation-mammo-no-distortion-example](Observation-observation-mammo-no-distortion-example.html) | MammographicExaminationFindingLtBreast | No architectural distortion. |
| [observation-mammo-asym-bilateral-uiq-example](Observation-observation-mammo-asym-bilateral-uiq-example.html) | MammographicExaminationFindingLtBreast | Bilateral asymmetric tissue finding. |

#### Ultrasound Finding Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-lesion-right-10-oclock-cyst-example](Observation-observation-lesion-right-10-oclock-cyst-example.html) | BreastUltrasoundFindingLtBreast | Right breast cyst at 10 o'clock position. |
| [observation-lesion-left-3-oclock-fibroadenoma-example](Observation-observation-lesion-left-3-oclock-fibroadenoma-example.html) | BreastUltrasoundFindingLtBreast | Left breast fibroadenoma at 3 o'clock. |
| [observation-lesion-right-6-oclock-malignant-example](Observation-observation-lesion-right-6-oclock-malignant-example.html) | BreastUltrasoundFindingLtBreast | Right breast malignant tumor at 6 o'clock. |

#### Breast History Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-history-surgery-example](Observation-observation-history-surgery-example.html) | BreastHistoryAssessmentLtBreast | Prior breast surgery history. |
| [observation-history-injury-example](Observation-observation-history-injury-example.html) | BreastHistoryAssessmentLtBreast | History of breast injury. |
| [observation-history-disease-example](Observation-observation-history-disease-example.html) | BreastHistoryAssessmentLtBreast | No breast disease history (negative finding). |

#### Observation Finding Examples

| Instance | Profile | Description |
|---|---|---|
| [observation-breast-scar-example](Observation-observation-breast-scar-example.html) | BreastObservationFindingLtBreast | Surgical scar observation with body structure reference. |
| [observation-breast-skin-formation-example](Observation-observation-breast-skin-formation-example.html) | BreastObservationFindingLtBreast | Skin formation (mass of skin) observation. |

#### Body Structure Examples

| Instance | Profile | Description |
|---|---|---|
| [breast-body-structure-left-uoq-example](BodyStructure-breast-body-structure-left-uoq-example.html) | BodyStructureLtBreast | Left breast, upper outer quadrant. |
| [breast-body-structure-right-uiq-example](BodyStructure-breast-body-structure-right-uiq-example.html) | BodyStructureLtBreast | Right breast, upper inner quadrant. |

#### Workflow and Procedure Examples

| Instance | Profile | Description |
|---|---|---|
| [servicerequest-birads-referral-cat4-example](ServiceRequest-servicerequest-birads-referral-cat4-example.html) | BreastServiceRequestLtBreast | BI-RADS 4 triggered referral for biopsy. |
| [procedure-mammography-example](Procedure-procedure-mammography-example.html) | ProcedureLt | Mammography procedure. |
| [imagingstudy-mammography-example](ImagingStudy-imagingstudy-mammography-example.html) | ImagingStudyLt | Mammography imaging study. |
| [observation-radiation-dose-example](Observation-observation-radiation-dose-example.html) | ObservationLt | Radiation dose observation (2.5 mGy). |

#### Questionnaire Examples

See the [Questionnaires](questionnaires.html) page for the five ESPBI questionnaire and response examples.

#### Cross-IG Example References

The breast diagnostic pathway collects patient data that is modelled in other Lithuanian FHIR IGs. These published examples demonstrate the referenced resources:

**Vital Signs IG** ([https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)):

| Example | Description |
|---|---|
| [observation-blood-pressure-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html) | Blood pressure measurement during patient visit. |
| [observation-body-weight-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-weight-example.html) | Body weight measurement. |
| [observation-bmi-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-bmi-example.html) | Body Mass Index calculation. |
| [observation-body-height-example](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-body-height-example.html) | Body height measurement. |

**Lifestyle IG** ([https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)):

| Example | Description |
|---|---|
| [observation-tobacco-smoking-consumption-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-smoking-consumption-example.html) | Tobacco smoking consumption status. |
| [observation-alcohol-consumption-no-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-alcohol-consumption-no-example.html) | Alcohol consumption (no use). |
| [observation-physical-activity-below-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-physical-activity-below-example.html) | Physical activity level. |
| [observation-nutrition-balanced-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-nutrition-balanced-example.html) | Nutrition assessment. |
| [observation-family-history-cvd-positive-example](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-family-history-cvd-positive-example.html) | Family history of cardiovascular disease. |
