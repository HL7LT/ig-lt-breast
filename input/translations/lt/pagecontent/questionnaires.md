### Klausimynai

Šiame puslapyje aprašomos penkios ESPBI (Elektroninių sveikatos paslaugų ir bendradarbiavimo infrastruktūros) klausimynų formos, naudojamos Lietuvos krūties vėžio prevencijos programoje. Kiekvienas klausimynas fiksuoja struktūrizuotą duomenų rinkinį, apibrėžtą ADP (Ankstyvosios diagnostikos ir prevencinių programų) tyrimo specifikacijoje.

Šie „Questionnaire“ ištekliai yra nepriklausomi nuo FHIR profiliais grindžiamo duomenų modelio. Jie atspindi ESPBI formos struktūrą tokią, kokia ji yra, o toliau pateiktose aprašomosiose susiejimo lentelėse parodoma, kaip kiekvienas klausimyno elementas susiejamas su atitinkamu FHIR profiliu ir elementu.

#### Apžvalga

| Klausimynas | ESPBI forma | Klinikinis etapas |
|---|---|---|
| [Mammogram](Questionnaire-questionnaire-mammogram-lt-breast.html) | ADP 7.1 lentelė | Vaizdinimo tyrimas ir radiologinis vertinimas |
| [Tomosynthesis](Questionnaire-questionnaire-tomosynthesis-lt-breast.html) | ADP 7.2 lentelė | Papildomas vaizdinimo tyrimas (kai BI-RADS 0) |
| [Ultrasound](Questionnaire-questionnaire-ultrasound-lt-breast.html) | ADP 7.3 lentelė | Tikslinis tyrimas esant tankiam liaukiniam audiniui ar radiniams |
| [Biopsy](Questionnaire-questionnaire-biopsy-lt-breast.html) | ADP 7.4 lentelė | Vaizdinimo kontrolėje atliekama biopsija (BI-RADS 4–5) |
| [Pathology](Questionnaire-questionnaire-pathology-lt-breast.html) | ADP 7.5 lentelė | Histologinis tyrimas ir diagnozė |

---

#### Mamografijos klausimynas

Mamografijos forma apima visą atrankinės mamografijos darbo eigą: tyrimo kontekstą, iki tyrimo nustatytus klinikinius radinius (apčiuopiami pakitimai, randai, spenelio būklė, chirurginė anamnezė), ACR liaukinio audinio tankio vertinimą, struktūrizuotus kiekvienos krūties radinius (formacijos, kalcifikacijos, deformacijos, audinių asimetrija), palyginimą su ankstesniais tyrimais, BI-RADS išvadą ir rekomendacijas.

**Atsakymo pavyzdys:** [questionnaireresponse-mammogram-example](QuestionnaireResponse-questionnaireresponse-mammogram-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Tyrimo data | [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | effectiveDateTime |
| Spinduliuotės dozė | ObservationLt | valueQuantity (mGy) |
| Apčiuopiami pakitimai – randai | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | valueCodeableConcept |
| Apčiuopiami pakitimai – spenelis | [BreastNippleInversionLtBreast](StructureDefinition-breast-nipple-inversion-lt-breast.html) | valueCodeableConcept |
| Apčiuopiami pakitimai – chirurginė anamnezė | [BreastHistoryAssessmentLtBreast](StructureDefinition-breast-history-assessment-lt-breast.html) | valueCodeableConcept |
| Liaukinio audinio tankis (ACR) | [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | valueCodeableConcept |
| Radiniai – formacijos | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Type] |
| Radiniai – dydis | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Diameter] |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |
| Rekomendacijos | [BreastServiceRequestLtBreast](StructureDefinition-breast-service-request-lt-breast.html) | code |
| Radiologas | PractitionerLt / PractitionerRoleLt | name |
| Įstaiga | OrganizationLt | name |

---

#### Tomosintezės klausimynas

Tomosintezės forma apima duomenis apie papildomus vaizdinimo tyrimus, kai pradinės mamografijos rezultatas yra BI-RADS 0 (neišsamus). Jos struktūra atitinka mamografijos formą, papildytą informacija apie indikaciją ir radiologijos technologą.

**Atsakymo pavyzdys:** [questionnaireresponse-tomosynthesis-example](QuestionnaireResponse-questionnaireresponse-tomosynthesis-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Tyrimo data | [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | effectiveDateTime |
| Tyrimo indikacija (BI-RADS 0) | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | Ankstesnis vertinimas, lėmęs šio tyrimo paskyrimą |
| Spinduliuotės dozė | ObservationLt | valueQuantity (Gy) |
| Radiniai – lokalizacija | [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | includedStructure.laterality + qualifier |
| Radiniai – formacija / deformacija / kalcifikacija | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Type] |
| Radiniai – dydis | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Diameter] |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |

---

#### Ultragarsinio tyrimo klausimynas

Ultragarsinio tyrimo forma apima tikslinio tyrimo duomenis, kai pacientas nukreipiamas dėl tankaus liaukinio audinio įvertinimo (BI-RADS 1–2 esant tankiai liaukai) arba radinių vertinimo (BI-RADS 0, 4, 5). Joje fiksuojama parenchimos struktūra, radinių lokalizacija pagal laikrodžio padėtį, pažeidimų charakteristikos, latakų būklė ir limfmazgių vertinimas kiekvienai krūčiai.

**Atsakymo pavyzdys:** [questionnaireresponse-ultrasound-example](QuestionnaireResponse-questionnaireresponse-ultrasound-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Parenchimos struktūra | [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | valueCodeableConcept |
| Radinio lokalizacija (laikrodžio padėtis) | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[clock-position] |
| Pakitimo savybės | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[lesion] |
| Dydis (ilgis, plotis) | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[length-mm], component[width-mm] |
| Pakitimo pobūdis | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | valueCodeableConcept |
| Limfmazgių pakitimai | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | component |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |

---

#### Biopsijos klausimynas

Biopsijos forma apima vaizdinimo kontrolėje atliekamos biopsijos procedūros duomenis, kai BI-RADS 4–5 rezultatas lemia audinių mėginių paėmimo rekomendaciją. Joje registruojamas kontrolės modalumas, mėginių talpyklos, pažeidimo lokalizacija ir limfmazgių būklė.

**Atsakymo pavyzdys:** [questionnaireresponse-biopsy-example](QuestionnaireResponse-questionnaireresponse-biopsy-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Procedūros tipas | ProcedureLt | code (ACHI kodai 31548-00, 90724-00) |
| Mėginių talpyklos | Specimen | container |
| Lokalizacija | [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | includedStructure |
| Formacijos dydis | ProcedureLt arba Specimen | note |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |
| Limfmazgių pakitimai | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | component |

---

#### Patologijos klausimynas

Patologijos forma yra išsamiausia – ji apima visą histologinio tyrimo darbo eigą: siuntimo duomenis, informaciją apie mėginį, makroskopinį ir mikroskopinį aprašymą, imunohistochemiją (ER, PR, HER2, Ki67), molekulinius tyrimus (FISH, CISH/SISH) ir galutinę PSO klasifikacija grindžiamą diagnozę su laipsniu, naviko dydžiu ir limfovaskuline invazija.

**Atsakymo pavyzdys:** [questionnaireresponse-pathology-example](QuestionnaireResponse-questionnaireresponse-pathology-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis (kryžminis IG) | Elementas |
|---|---|---|
| Klinikinė diagnozė (ICD-10-AM) | PathologyReportLtLab (ig-lt-lab) | conclusionCode.coding[icd10] |
| Medžiagos fiksacija | Specimen | processing.method |
| Ankstesnės procedūros | ConditionLt | evidence |
| Makroskopinis tyrimas | PathologyCompositionLtLab (ig-lt-lab) | section[macroscopic].text |
| Mikroskopinis tyrimas | PathologyCompositionLtLab (ig-lt-lab) | section[microscopic].text |
| ER / PR statusas | ObservationLt | valueCodeableConcept |
| HER2 statusas | ObservationLt | valueCodeableConcept |
| Ki67 proliferacijos indeksas | ObservationLt | valueQuantity (%) |
| FISH / CISH rezultatas | ObservationLt | valueCodeableConcept |
| PSO diagnozė | PathologyCompositionLtLab (ig-lt-lab) | section[synthesis].text |
| Naviko laipsnis | ObservationLt | valueCodeableConcept (AJCC G1–G3) |
| Naviko dydis | ObservationLt | valueQuantity (mm) |
| Limfovaskulinė invazija | ObservationLt | valueCodeableConcept (pLVI-0 to pLVI-9) |

#### Kryžminės IG nuorodos

Klausimynų susiejimas apima išteklius, apibrėžtus keliuose Lietuvos FHIR IG:

- **[Krūties IG](index.html)** — vaizdinimo radiniai, BI-RADS, liaukinio audinio tankis, kūno struktūra
- **[Laboratorinių tyrimų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)** — patologijos ataskaita ir kompozicija (PathologyReportLtLab, PathologyCompositionLtLab)
- **[Gyvybinių funkcijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — antropometriniai matavimai, renkami vizito metu
- **[Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — rūkymas, alkoholio vartojimas ir šeimos anamnezė, susiję su krūties vėžio rizika