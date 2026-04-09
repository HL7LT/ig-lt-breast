### Klausimynai

Šiame puslapyje aprašomi penki ESPBI (Elektroninių sveikatos paslaugų ir bendradarbiavimo infrastruktūros) klausimynų formos, naudojamos Lietuvos krūties vėžio prevencijos programoje. Kiekvienas klausimynas fiksuoja struktūrizuotą duomenų rinkinį, apibrėžtą ADP (Ankstyvosios diagnostikos ir prevencinių programų) tyrimo specifikacijoje.

Šie Questionnaire ištekliai yra nepriklausomi nuo FHIR profiliais grindžiamo duomenų modelio. Jie atspindi ESPBI formos struktūrą tokią, kokia ji yra, o toliau pateiktos aprašomosios susiejimo lentelės rodo, kaip kiekvienas klausimyno elementas susiejamas su atitinkamu FHIR profiliu ir elementu.

#### Apžvalga

| Klausimynas | ESPBI forma | Klinikinis etapas |
|---|---|---|
| [Mammogram](Questionnaire-questionnaire-mammogram-lt-breast.html) | ADP 7.1 lentelė | Vaizdinimo gavimas ir radiologinis vertinimas |
| [Tomosynthesis](Questionnaire-questionnaire-tomosynthesis-lt-breast.html) | ADP 7.2 lentelė | Papildomas vaizdavimas (kai BIRADS-0) |
| [Ultrasound](Questionnaire-questionnaire-ultrasound-lt-breast.html) | ADP 7.3 lentelė | Tikslinis tyrimas tankiems audiniams ar radiniams |
| [Biopsy](Questionnaire-questionnaire-biopsy-lt-breast.html) | ADP 7.4 lentelė | Vaizdu valdoma biopsija (BIRADS 4–5) |
| [Pathology](Questionnaire-questionnaire-pathology-lt-breast.html) | ADP 7.5 lentelė | Histologinis tyrimas ir diagnozė |

---

#### Mamografijos klausimynas

Mamografijos forma fiksuoja visą atrankos mamografijos darbo eigą: tyrimo kontekstą, ikityrimo klinikinius radinius (apčiuopiami pakitimai, randai, spenelio statusas, chirurginė anamnezė), ACR liaukos tankio vertinimą, struktūrizuotus radinius kiekvienai krūčiai (formacijos, kalcifikaciniai, deformacijos, asimetriniai audiniai), palyginimą su ankstesniais tyrimais, BI-RADS išvadą ir rekomendacijas.

**Atsakymų pavyzdys:** [questionnaireresponse-mammogram-example](QuestionnaireResponse-questionnaireresponse-mammogram-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Tyrimo data | [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | effectiveDateTime |
| Radiacijos dozė | ObservationLt | valueQuantity (mGy) |
| Apčiuopiami pakitimai – Randai | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | valueCodeableConcept |
| Apčiuopiami pakitimai – Spenelis | [BreastNippleInversionLtBreast](StructureDefinition-breast-nipple-inversion-lt-breast.html) | valueCodeableConcept |
| Apčiuopiami pakitimai – Chirurginė anamnezė | [BreastHistoryAssessmentLtBreast](StructureDefinition-breast-history-assessment-lt-breast.html) | valueCodeableConcept |
| Liaukos tankis (ACR) | [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | valueCodeableConcept |
| Radiniai – Formacijos | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Type] |
| Radiniai – Dydis | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Diameter] |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |
| Rekomendacijos | [BreastServiceRequestLtBreast](StructureDefinition-breast-service-request-lt-breast.html) | code |
| Radiologas | PractitionerLt / PractitionerRoleLt | name |
| Įstaiga | OrganizationLt | name |

---

#### Tomosintezės klausimynas

Tomosintezės forma fiksuoja duomenis apie tolesnius vaizdinimus, kai pradinio mamogramos rezultatas yra BIRADS-0 (neišsamus). Struktūra atitinka mamografijos formą su papildoma informacija apie indikaciją ir radiologijos techniką.

**Atsakymų pavyzdys:** [questionnaireresponse-tomosynthesis-example](QuestionnaireResponse-questionnaireresponse-tomosynthesis-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Tyrimo data | [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | effectiveDateTime |
| Tyrimo indikacija (BIRADS-0) | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | Ankstesnis vertinimas, suaktyvinus šį tyrimą |
| Radiacijos dozė | ObservationLt | valueQuantity (Gy) |
| Radiniai – Lokalizacija | [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | includedStructure.laterality + qualifier |
| Radiniai – Formacija/Deformacija/Kalcifikacija | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Type] |
| Radiniai – Dydis | [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | component[Diameter] |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |

---

#### Ultragarsinio tyrimo klausimynas

Ultragarsinio tyrimo forma fiksuoja tikslinės apžiūros duomenis, kai pacientas nukreiptas dėl tankių audinių peržiūros (BIRADS 1–2 su tankia liauka) arba radinių įvertinimo (BIRADS 0, 4, 5). Ji fiksuoja parenchimos struktūrą, laikrodžio padėties radinius, pažeidimų charakteristikas, latakų būklę ir limfmazgių vertinimą kiekvienai krūčiai.

**Atsakymų pavyzdys:** [questionnaireresponse-ultrasound-example](QuestionnaireResponse-questionnaireresponse-ultrasound-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Parenchimos struktūra | [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | valueCodeableConcept |
| Radinio lokalizacija (laikrodžio rodyklė) | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[clock-position] |
| Pakitimų savybės | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[lesion] |
| Dydis (ilgis, plotis) | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | component[length-mm], component[width-mm] |
| Pakitimo pobūdis | [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | valueCodeableConcept |
| Limfmazgių pakitimai | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | component |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |

---

#### Biopsijos klausimynas

Biopsijos forma fiksuoja vaizdu valdomos biopsijos procedūros duomenis, kai BIRADS 4–5 suaktyvina audinių mėginių ėmimo rekomendaciją. Ji registruoja valdymo modalumą, mėginių indus, pažeidimų lokalizaciją ir limfmazgių statusą.

**Atsakymų pavyzdys:** [questionnaireresponse-biopsy-example](QuestionnaireResponse-questionnaireresponse-biopsy-example.html)

**Aprašomasis susiejimas su FHIR profiliais:**

| Klausimyno elementas | FHIR profilis | Elementas |
|---|---|---|
| Procedūros tipas | ProcedureLt | code (ACHI kodai 31548-00, 90724-00) |
| Mėginių indai | Specimen | container |
| Lokalizacija | [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | includedStructure |
| Formacijos dydis | ProcedureLt arba Specimen | note |
| BI-RADS išvada | [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | valueCodeableConcept |
| Limfmazgių pakitimai | [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | component |

---

#### Patologijos klausimynas

Patologijos forma yra išsamiausia – ji fiksuoja visą histologinio tyrimo darbo eigą: nukreipimo duomenis, mėginio informaciją, makroskopinį ir mikroskopinį aprašymą, imunohistochemiją (ER, PR, HER2, Ki67), molekulinius testus (FISH, CISH/SISH) ir galutinę PSO klasifikacijos diagnozę su laipsniu, naviko dydžiu ir limfovaskuliniu invazijumu.

**Atsakymų pavyzdys:** [questionnaireresponse-pathology-example](QuestionnaireResponse-questionnaireresponse-pathology-example.html)

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
| Limfovaskulinis invaziškumas | ObservationLt | valueCodeableConcept (pLVI-0 to pLVI-9) |

#### Kryžminės IG nuorodos

Klausimyno susiejimas sujungia išteklius, apibrėžtus keliuose Lietuvos FHIR IG:

- **[Krūties IG](index.html)** — vaizdinimo radiniai, BI-RADS, liaukos tankis, kūno struktūra
- **[Laboratorinių tyrimų IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/)** — patologijos ataskaita ir kompozicija (PathologyReportLtLab, PathologyCompositionLtLab)
- **[Gyvybinių funkcijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — antropometriniai matavimai, renkami per vizitą
- **[Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — rūkymas, alkoholis, šeimos anamnezė, susijusi su krūties vėžio rizika
