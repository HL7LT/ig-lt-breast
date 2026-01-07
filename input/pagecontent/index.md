# Lithuanian Breast Cancer Screening and Diagnostic Implementation Guide

## Introduction and Purpose

This Implementation Guide specifies how to consistently represent and exchange structured clinical data related to the **Breast Cancer Screening and Diagnostic Programme** using the **HL7® FHIR® standard**.

The guide supports the national programme for **early detection and diagnosis of breast cancer** by defining interoperable data structures for **imaging, clinical interpretation, diagnostic decisions, invasive procedures, and pathology reporting**. Its purpose is to enable:

* consistent and high-quality data capture across healthcare providers,
* semantic interoperability between **radiology, pathology, and clinical systems**,
* structured reporting for **programme monitoring, quality assurance, and secondary use**,
* and reliable **longitudinal follow-up of patients** across diagnostic episodes.

The guide is developed as part of the national **ADP project** to support coordinated, data-driven management of preventive and early diagnostic programmes in Lithuania.

## Scope 

This guide focuses specifically on the **breast cancer diagnostic and screening workflow**, which is fundamentally different from lifestyle- or questionnaire-based preventive programmes.

It covers the following clinical domains:

* **Imaging acquisition** (mammography, tomosynthesis, ultrasound),
* **Radiological interpretation and reporting** using **BI-RADS**,
* Explicit modelling of **assessment and workflow decisions**,
* **Follow-up actions** (additional imaging, biopsy),
* **Invasive diagnostic procedures** (image-guided biopsy),
* **Pathological histological examination and diagnostic reporting**.

The guide models breast cancer diagnostics as a **sequential, decision-driven, multi-disciplinary workflow** that integrates radiology and pathology into a single longitudinal information model.

## Key Modelling Principles

The modelling approach is based on the following core principles:

1. **Separation of data acquisition and interpretation**  
   Imaging procedures generate structured datasets, while interpretation and diagnosis are represented separately as diagnostic reports and assessments.

2. **Explicit separation of clinical observation and workflow logic**  
   For example, **BI-RADS assessment** represents what is observed, while follow-up recommendations and referrals represent workflow decisions derived from that assessment.

3. **Domain-specific modelling**  
   Breast imaging, radiology reporting, biopsy, and pathology require domain-specific profiles that are distinct from lifestyle, laboratory, or general preventive models.

4. **Longitudinal coherence**  
   All data elements are designed to support linkage across time, allowing follow-up imaging, biopsies, and pathology to be connected to earlier screening and diagnostic events.

## Content of the Guide

This guide provides:

* **FHIR profiles and extensions** for breast imaging, assessment, and diagnosis,
* **terminology bindings** using **SNOMED CT, LOINC and ICD-10-AM**,
* structured **example instances** illustrating real clinical scenarios,
* mappings from **clinical programme datasets to interoperable FHIR artefacts**,
* and identification of gaps and future development needs.

At the current stage, the guide includes the **core workflow** and a **first set of key profiles and examples**. Further refinement, terminology expansion, and clinical validation will be performed in subsequent iterations.

## Why Use This Guide?

By adopting this guide, implementers and healthcare institutions can:

1. **Interoperability:** Ensure consistent and comparable breast screening and diagnostic data across systems.
2. **Data Quality:** Improve the consistency, completeness, and clinical usefulness of imaging and diagnostic data.
3. **Clinical Utility:** Support structured reporting, quality assurance, population-level monitoring, and future clinical decision support.
4. **Longitudinal Care:** Enable linkage of screening, diagnostics, treatment, and follow-up across time and providers.

Navigate the sections below to access the profiles, terminology bindings, and detailed examples needed to implement the standard.


### IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Contributors

| Name                                             | Role                          | Organization                                    |
| ------------------------------------------------ | ----------------------------- | ----------------------------------------------- |
| [Igor Bossenko](https://about.askigor.eu)     | Primary Author                | [HELEX](https://helex.health) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author                 | [HELEX](https://helex.health)               |
| Martynas Bieliauskas                           | Reviewer                 | [LMB](https://lmb.lt)               |
