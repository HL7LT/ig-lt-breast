# Breast cancer screening and diagnostic workflow

The breast cancer screening and diagnostic workflow is a structured, sequential clinical process that supports the early detection, diagnosis, and classification of breast cancer. The workflow is driven primarily by diagnostic imaging and subsequent clinical decision-making across multiple clinical specialties, including radiology, pathology, and oncology.

The workflow begins with an imaging acquisition visit, during which the patient is physically present and one or more imaging procedures are performed, typically including mammography and, when indicated, tomosynthesis or ultrasound.

## Imaging acquisition

The process starts when a clinician or screening programme initiates a breast imaging examination by placing an [imaging order](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-ImOrder.html), for example a [breast screening request](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ServiceRequest-servicerequest-breast-screening-example.html). The order specifies the type of examination (screening or diagnostic), the anatomical focus, and any relevant clinical indications.

During the imaging acquisition visit, a radiology technologist performs the imaging procedures, such as mammography (example: [Mammography Procedure](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Procedure-ExampleMammographyProcedure.html)), tomosynthesis, or breast ultrasound. The patient is present during this encounter (example: [Breast Imaging Acquisition Encounter](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Encounter-ExampleBreastStep2ImagingEncounter.html)).

The resulting imaging data are captured as structured [ImagingStudy](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ImagingStudy-ExampleMammographyImagingStudy.html) resources together with contextual information such as breast laterality, quadrant localisation, breast density, and relevant clinical background. No diagnostic conclusion is made at this stage.

## Radiological evaluation and reporting

After acquisition, the imaging studies are interpreted by a radiologist, usually in a separate evaluation encounter without the patient present.

The radiologist reviews the imaging data and documents findings such as masses, calcifications, asymmetries, or architectural distortions as structured observations, for example:

- [Breast Observation Finding](StructureDefinition-breast-observation-finding-lt-breast.html),
- [Breast Ultrasound Findings](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-breast-ultrasound-finding.html),
- [Breast Gland Density](StructureDefinition-breast-gland-density-lt-breast.html).

The radiologist then assigns a BI-RADS category using a [BI-RADS Assessment](StructureDefinition-birads-assessment-lt-breast.html) (example: [BI-RADS 4](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Observation-example-birads-cat4.html)) and compiles the results into a structured [imaging diagnostic report](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-mammography-lt.html).

The diagnostic report includes:

- imaging findings and their localisation,
- breast density,
- BI-RADS assessment for each breast,
- and recommended next steps.

## Tomosynthesis

Digital breast tomosynthesis (DBT) is used as a supplementary imaging modality when mammographic findings are inconclusive (typically BI-RADS 0). The indication for tomosynthesis is usually a prior mammographic assessment requiring additional imaging.

Tomosynthesis findings are recorded using the [Tomosynthesis Examination Finding](StructureDefinition-tomosynthesis-finding-lt-breast.html) profile, which captures:

- the type of finding (mass, calcification, architectural deformation) using the same finding codes as mammography,
- the largest dimension of the finding in millimeters,
- cross-section localization in the **CC (craniocaudal) projection** as free text (e.g. slices 42–58),
- cross-section localization in the **MLO (mediolateral oblique) projection** as free text,
- localisation by breast side and quadrant using [BodyStructure](StructureDefinition-body-structure-lt-breast.html),
- evolution compared to prior examinations.

The radiologist assigns a BI-RADS category and recommendation using the same assessment and referral profiles as mammography.

Tomosynthesis findings are included in the [Breast Composition](StructureDefinition-breast-composition-lt-breast.html) alongside mammographic and ultrasound findings.

## Assessment and decision logic based on BI-RADS

A central design principle of the workflow is the explicit separation between:

- clinical assessment (what is observed and classified), and  
- workflow decision logic (what happens next as a result of that assessment).

The BI-RADS category acts as the main decision point:

- **BI-RADS 0** → additional imaging is required,  
- **BI-RADS 1–2** → routine screening or no further action,  
- **BI-RADS 3** → short-interval follow-up,  
- **BI-RADS 4–5** → referral for biopsy.

The recommended action is represented as a [ServiceRequest](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-breast-service-request.html), for example a [BI-RADS 4 referral](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ServiceRequest-birads-referral-cat4.html).

## Additional imaging and biopsy

If additional imaging is recommended, a new imaging order is created and the patient undergoes further imaging studies, generating new imaging datasets and reports.

### Biopsy procedure

If biopsy is indicated (typically BI-RADS 4–5), an image-guided biopsy procedure is performed. The procedure is documented using the [Breast Biopsy Procedure](StructureDefinition-breast-biopsy-procedure-lt-breast.html) profile, which captures:

- the **type of procedure**: ultrasound-guided core needle biopsy (SNOMED 432550005), ultrasound-guided fine needle aspiration (SNOMED 432337008), lymph node biopsy under ultrasound guidance (SNOMED 702556008), or other biopsy types from the [Breast Biopsy Procedure Type](ValueSet-breast-biopsy-procedure-type.html) value set,
- the **anatomical site** of the biopsied lesion,
- the **date** the procedure was performed,
- references to the **specimens** collected.

Multiple changes may be biopsied in a single session. Each biopsied change generates a separate specimen container, with information about localization (by clock position for ultrasound-guided procedures, or by quadrant for X-ray-guided procedures) and the size of the biopsied entity in millimeters.

If lymph node biopsy is performed, the localization (right/left), involvement level (N1/N2/N3), and size of the lymph node are recorded.

Detailed biopsy data is also captured via the [Biopsy ESPBI Questionnaire](Questionnaire-questionnaire-biopsy-lt-breast.html) which includes additional fields for sample containers, radiological conclusion, and facility information.

## Pathology reporting and diagnosis

The collected tissue specimens are transported to the pathology laboratory and analysed as part of a structured diagnostic reporting process defined in the [Lithuanian Laboratory IG](https://hl7.lt/fhir/lab).

### Synoptic pathology composition

The pathology report follows the [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-pathology-composition-lt-lab.html) structure from the Laboratory IG, organized into four LOINC-coded sections:

1. **Pre-Analytic** (LOINC 22636-5): clinical context, service request, biopsy procedure, and submitted specimens,
2. **Macroscopic** (LOINC 74574-5): gross specimen measurements, specimen adequacy, paraffin blocks,
3. **Microscopic** (LOINC 660-1): tumour characterisation, measurements, and immunohistochemistry,
4. **Synthesis** (LOINC 22637-3): signed diagnostic report with WHO classification and coding.

### Immunohistochemistry (IHC)

The microscopic section includes structured observations for immunohistochemical tests:

- [Estrogen Receptor (ER) Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-estrogen-receptor-status-observation-lt-lab.html) — expression level (negative/weak/moderate/strong) and percentage of positive tumour cell nuclei,
- [Progesterone Receptor (PR) Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-progesterone-receptor-status-observation-lt-lab.html) — same scale as ER,
- [HER2 Receptor Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-her2-receptor-status-observation-lt-lab.html) — IHC scoring (0+/1+/2+/3+),
- [Ki-67 Proliferation Index](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-ki67-proliferation-observation-lt-lab.html) — percentage of proliferating tumour cells.

### Molecular testing

When HER2 IHC results are borderline (2+), molecular testing is performed:

- [HER2 FISH/CISH/SISH](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-her2-fish-observation-lt-lab.html) — HER2 average, CEP17 average, HER2/CEP17 ratio, and amplification classification.

### Tumour grading and invasion

Histological grading uses the [Histological Grading](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/ValueSet-histological-grading.html) value set (G1–G3, Gx). Lymphovascular invasion is assessed using the [pLVI Classification](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/ValueSet-plvi-classification.html) (pLVI-0 to pLVI-4, pLVI-9).

### Pathological conclusion

The final diagnosis uses the [WHO Breast Tumor Classification](ValueSet-breast-tumor-who-classification.html) value set, which includes approximately 80 tumour types from the WHO Classification of Tumours, 5th edition. Each diagnosis is coded with SNOMED CT and accompanied by ICD-10-AM and ICD-O-3 morphology codes in the [Pathology Report](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-pathology-report-lt-lab.html).

Detailed pathology data is also captured via the [Pathology ESPBI Questionnaire](Questionnaire-questionnaire-pathology-lt-breast.html).

## Communication and completion of the diagnostic cycle

The pathology diagnostic report is reviewed and signed off by the pathologist and communicated back to the referring clinician. At this point, the diagnostic phase of the workflow is complete and the patient may be referred onward for treatment planning, oncology consultation, or follow-up, depending on the diagnosis.

This workflow model reflects real clinical practice while ensuring a clear separation between:

- data acquisition and interpretation,
- clinical observations and workflow decisions,
- procedural steps and diagnostic conclusions.

It provides a structured and interoperable representation of the breast cancer screening and diagnostic pathway and supports standardised data exchange, reporting, and programme monitoring within the national breast cancer screening and diagnostic programme.
