# LT Breast Implementation Guide

This repository contains the source content for the **Lithuanian Breast Cancer Screening and Diagnostic FHIR Implementation Guide**.

The guide defines how structured clinical data related to the national breast cancer prevention programme can be represented and exchanged using the **HL7 FHIR standard**.

## Purpose

The purpose of this Implementation Guide is to support:

- Interoperable exchange of breast cancer screening and diagnostic data
- Consistent structured reporting across radiology, pathology, laboratory, and clinical systems
- Use of international terminologies (SNOMED CT, LOINC, ICD-10-AM)
- Longitudinal linkage of screening, diagnostics, biopsy, pathology, and follow-up
- National programme monitoring, quality assurance, and secondary use of data

## Clinical Scope

The guide covers the full diagnostic workflow of the breast cancer prevention programme, including:

- Screening mammography
- Tomosynthesis and breast ultrasound
- Radiological interpretation using BI-RADS
- Diagnostic and follow-up decisions
- Image-guided biopsy procedures
- Pathological histological examination and reporting

The overall workflow is modelled as a **multi-step, decision-driven, multidisciplinary clinical process** spanning screening, diagnostics, confirmation, and referral.

## Repository Structure

- `input/fsh/` — FHIR Shorthand (FSH) profiles, extensions, examples, and rule sets
- `input/pagecontent/` — Markdown content for the IG website (including `index.md`)
- `output/` — Generated Implementation Guide (after build)
- `sushi-config.yaml` — SUSHI configuration
- `ig.ini` — IG Publisher configuration

## Building the Guide

### Prerequisites

- Java (for the HL7 IG Publisher)
- Node.js
- SUSHI (`npm install -g fsh-sushi`)

### Build steps

1. Generate FHIR resources from FSH:
```bash
sushi .
```

2. Run the IG Publisher (macOS/Linux):
```bash
./_build.sh
```

or on Windows:
```bat
_build.bat
```

The generated site will appear in the `output/` folder.

## Status

This guide is under active development and will evolve based on:

- Clinical validation
- Feedback from implementers
- Terminology refinement
- Alignment with European and international standards

## Licence

This project is licensed under the MIT License unless stated otherwise.

## Contributors

- Igor Bossenko — Primary author (HELEX)
- Kati Laidus — Co-author (HELEX)
- Martynas Bieliauskas — Reviewer (Lithuanian Medical Library)
