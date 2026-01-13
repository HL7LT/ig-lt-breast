# Breast cancer screening and diagnostic workflow

The breast cancer screening and diagnostic workflow is a structured, sequential clinical process that supports the early detection, diagnosis, and classification of breast cancer. The workflow is driven primarily by diagnostic imaging and subsequent clinical decision-making across multiple clinical specialties, including radiology, pathology, and oncology.

The workflow begins with an imaging acquisition visit, during which the patient is physically present and one or more imaging procedures are performed, typically including mammography and, when indicated, tomosynthesis or ultrasound.

## Imaging acquisition

The process starts when a clinician or screening programme initiates a breast imaging examination by placing an [imaging order](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-ImOrder.html), for example a [breast screening request](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ServiceRequest-breast-screening-request.html). The order specifies the type of examination (screening or diagnostic), the anatomical focus, and any relevant clinical indications.

During the imaging acquisition visit, a radiology technologist performs the imaging procedures, such as mammography (example: [Mammography Procedure](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Procedure-ExampleMammographyProcedure.html)), tomosynthesis, or breast ultrasound. The patient is present during this encounter (example: [Breast Imaging Acquisition Encounter](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Encounter-ExampleBreastStep2ImagingEncounter.html)).

The resulting imaging data are captured as structured [ImagingStudy](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ImagingStudy-ExampleMammographyImagingStudy.html) resources together with contextual information such as breast laterality, quadrant localisation, breast density, and relevant clinical background. No diagnostic conclusion is made at this stage.

## Radiological evaluation and reporting

After acquisition, the imaging studies are interpreted by a radiologist, usually in a separate evaluation encounter without the patient present.

The radiologist reviews the imaging data and documents findings such as masses, calcifications, asymmetries, or architectural distortions as structured observations, for example:

- [Breast Observation Finding](StructureDefinition-breast-observation-finding.html),
- [Breast Ultrasound Findings](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-breast-ultrasound-finding.html),
- [Breast Gland Density](StructureDefinition-breast-gland-density.html).

The radiologist then assigns a BI-RADS category using a [BI-RADS Assessment](StructureDefinition-birads-assessment.html) (example: [BI-RADS 4](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Observation-example-birads-cat4.html)) and compiles the results into a structured [imaging diagnostic report](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-mammography-lt.html).

The diagnostic report includes:

- imaging findings and their localisation,
- breast density,
- BI-RADS assessment for each breast,
- and recommended next steps.

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

If biopsy is indicated, an image-guided biopsy procedure is performed. One or more tissue specimens are collected and labelled according to laboratory procedures.

The biopsy procedure itself is documented as a Procedure resource and includes localisation information about the biopsied lesion.

## Pathology reporting and diagnosis

The collected tissue specimens are transported to the pathology laboratory and analysed as part of a structured diagnostic reporting process.

Pathological examination includes macroscopic and microscopic analysis, optional immunohistochemical and molecular tests (e.g. ER, PR, HER2, Ki-67), and tumour classification according to international standards.

The findings and interpretations are compiled into a structured pathology diagnostic report, which represents the definitive diagnostic conclusion.

## Communication and completion of the diagnostic cycle

The pathology diagnostic report is reviewed and signed off by the pathologist and communicated back to the referring clinician. At this point, the diagnostic phase of the workflow is complete and the patient may be referred onward for treatment planning, oncology consultation, or follow-up, depending on the diagnosis.

This workflow model reflects real clinical practice while ensuring a clear separation between:

- data acquisition and interpretation,
- clinical observations and workflow decisions,
- procedural steps and diagnostic conclusions.

It provides a structured and interoperable representation of the breast cancer screening and diagnostic pathway and supports standardised data exchange, reporting, and programme monitoring within the national breast cancer screening and diagnostic programme.
