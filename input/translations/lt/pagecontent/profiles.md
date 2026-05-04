### Profiliai

Šiame puslapyje pateikiami visi struktūros apibrėžčių profiliai, apibrėžti Lietuvos krūties diagnostikos įgyvendinimo vadove. Šie profiliai palaiko krūties vėžio prevencijos programą – nuo paciento anamnezės rinkimo ir vaizdinimo tyrimų iki radiologinio vertinimo, biopsijos ir patologijos ataskaitų.

#### Ataskaitų ir kompozicijų profiliai

| Profilis | Aprašymas |
|---|---|
| [BreastReportLtBreast](StructureDefinition-breast-report-lt-breast.html) | Bendroji krūties diagnostikos ataskaita, apimanti visą krūties vėžio diagnostikos procesą. Ji sujungia kompoziciją ir struktūrizuotus rezultatus. |
| [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | Diagnostinė ataskaita, skirta mamografijos vaizdinimo tyrimams, su atskirai struktūrizuotais BI-RADS, mamografinių ir ultragarsinių radinių rezultatais. |
| [BreastCompositionLtBreast](StructureDefinition-breast-composition-lt-breast.html) | Krūčiai skirta vaizdinimo kompozicija, išplečianti bazinę vaizdinimo kompoziciją, nustatant radinių, išvadų ir anamnezės skyrių apribojimus. |

#### Vertinimo profiliai

| Profilis | Aprašymas |
|---|---|
| [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | Standartizuotas BI-RADS (Krūties vaizdinimo ataskaitų ir duomenų sistemos) vertinimo stebėjimas. Kategorijos nuo 0 iki 5 kiekvienai krūčiai. |
| [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | ACR BI-RADS krūties liaukinio audinio tankio klasifikacija (A–D). |
| [BreastHistoryAssessmentLtBreast](StructureDefinition-breast-history-assessment-lt-breast.html) | Iki tyrimo iš paciento surenkama krūties anamnezė: ankstesnės operacijos, traumos, ligos ir šeimos anamnezė. |
| [BreastNippleInversionLtBreast](StructureDefinition-breast-nipple-inversion-lt-breast.html) | Spenelio būklės vertinimas (normalus arba įtrauktas). |

#### Radinių profiliai

| Profilis | Aprašymas |
|---|---|
| [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | Bendrieji krūties stebėjimo radiniai, tokie kaip randai, odos pažeidimai ir apčiuopiami pakitimai. |
| [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | Struktūrizuoti mamografiniai radiniai su komponentais radinio tipui, skersmeniui ir evoliucijai aprašyti. |
| [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | Ultragarsinio tyrimo radiniai su komponentais pažeidimo tipui, laikrodinės padėties nuorodai ir matmenims. |

#### Struktūros profiliai

| Profilis | Aprašymas |
|---|---|
| [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | Krūties kūno struktūra su laterališkumu ir kvadrantų lokalizacija. Naudojama konkrečioms anatominėms radinių vietoms nustatyti. |

#### Darbo eigos profiliai

| Profilis | Aprašymas |
|---|---|
| [BreastServiceRequestLtBreast](StructureDefinition-breast-service-request-lt-breast.html) | Klinikinė rekomendacija arba siuntimas krūties tyrimui, stebėjimui ar nukreipimui. Grindžiama BI-RADS vertinimo rezultatais. |

#### Kryžminės IG priklausomybės

Krūties diagnostikos procese remiamasi stebėjimais iš kitų Lietuvos FHIR IG:

- **[Gyvybinių funkcijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — kraujo spaudimo, KMI ir kūno svorio stebėjimai, renkami paciento vizito metu
- **[Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — tabako vartojimo, alkoholio vartojimo, fizinio aktyvumo ir šeimos anamnezės stebėjimai, svarbūs krūties vėžio rizikos vertinimui