### Profiliai

Šiame puslapyje pateikiami visi struktūros apibrėžimų profiliai, apibrėžti Lietuvos krūties diagnostikos įgyvendinimo vadove. Šie profiliai palaiko krūties vėžio prevencijos programą – nuo paciento anamnezės rinkimo ir vaizdinimo gavimo per radiologinį vertinimą, biopsiją iki patologinių tyrimų ataskaitų.

#### Ataskaitos ir kompozicijos profiliai

| Profilis | Aprašymas |
|---|---|
| [BreastReportLtBreast](StructureDefinition-breast-report-lt-breast.html) | Bendra krūties diagnostikos ataskaita, apimanti visą krūties vėžio diagnostikos kelią. Apjungia kompoziciją ir struktūrizuotus rezultatus. |
| [MammographyReportLtBreast](StructureDefinition-mammography-report-lt-breast.html) | Diagnostinė ataskaita, skirta specifiškai mamografijos vaizdinimo tyrimams, su segmentuotais BI-RADS, mamografiniais ir ultragarso radinių rezultatais. |
| [BreastCompositionLtBreast](StructureDefinition-breast-composition-lt-breast.html) | Krūčiai skirta vaizdinimo kompozicija, plečianti bazinę vaizdinimo kompoziciją su apribotais radinių, išvadų ir anamnezės skyriais. |

#### Vertinimo profiliai

| Profilis | Aprašymas |
|---|---|
| [BiradsAssessmentLtBreast](StructureDefinition-birads-assessment-lt-breast.html) | Standartizuotas BI-RADS (Krūties vaizdinimo ataskaitų ir duomenų sistemos) vertinimo stebėjimas. Kategorijos 0–5 kiekvienai krūčiai. |
| [BreastGlandDensityLtBreast](StructureDefinition-breast-gland-density-lt-breast.html) | ACR BI-RADS krūties liaukos tankio klasifikacija (A–D). |
| [BreastHistoryAssessmentLtBreast](StructureDefinition-breast-history-assessment-lt-breast.html) | Ikikontrolinis krūties tyrimas, renkamas iš paciento: ankstesnės operacijos, traumos, ligos ir šeimos anamnezė. |
| [BreastNippleInversionLtBreast](StructureDefinition-breast-nipple-inversion-lt-breast.html) | Spenelio išvaizdos vertinimas (normalus arba įtrauktas). |

#### Radinių profiliai

| Profilis | Aprašymas |
|---|---|
| [BreastObservationFindingLtBreast](StructureDefinition-breast-observation-finding-lt-breast.html) | Bendrieji krūties stebėjimo radiniai, tokie kaip randai, odos pažeidimai ir apčiuopiami pakitimai. |
| [MammographicExaminationFindingLtBreast](StructureDefinition-mammographic-examination-finding-lt-breast.html) | Struktūrizuoti mamografiniai radiniai su komponentais radinio tipui, skersmeniui ir evoliucijai. |
| [BreastUltrasoundFindingLtBreast](StructureDefinition-breast-ultrasound-finding-lt-breast.html) | Ultragarsinio tyrimo pažeidimų radiniai su komponentais pažeidimo tipui, laikrodžio padėčiai ir matmenims. |

#### Struktūros profiliai

| Profilis | Aprašymas |
|---|---|
| [BodyStructureLtBreast](StructureDefinition-body-structure-lt-breast.html) | Krūties kūno struktūra su šoniškumu ir kvadrantų lokalizacija. Naudojama konkrečioms anatominėms radinių vietoms nustatyti. |

#### Darbo eigos profiliai

| Profilis | Aprašymas |
|---|---|
| [BreastServiceRequestLtBreast](StructureDefinition-breast-service-request-lt-breast.html) | Klinikinė rekomendacija arba užsakymas krūties tyrimui, stebėjimui ar nukreipimui. Valdoma BI-RADS vertinimo rezultatų. |

#### Kryžminės IG priklausomybės

Krūties diagnostikos kelyje remiamasi stebėjimais iš kitų Lietuvos FHIR IG:

- **[Gyvybinių funkcijų IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)** — kraujo spaudimas, KMI, kūno svorio stebėjimai, renkami per paciento vizitą
- **[Gyvenimo būdo IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)** — tabako vartojimas, alkoholio suvartojimas, fizinis aktyvumas ir šeimos anamnezė, susijusi su krūties vėžio rizikos vertinimu
