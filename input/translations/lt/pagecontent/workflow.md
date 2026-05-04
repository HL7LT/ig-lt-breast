# Krūties vėžio atrankos ir diagnostikos darbo eiga

Krūties vėžio atrankos ir diagnostikos darbo eiga yra struktūrizuotas, nuoseklus klinikinis procesas, skirtas ankstyvam krūties vėžio nustatymui, diagnozavimui ir klasifikavimui. Šią darbo eigą pirmiausia lemia diagnostinis vaizdinimas ir vėlesnis klinikinių sprendimų priėmimas keliose klinikinėse srityse, įskaitant radiologiją, patologiją ir onkologiją.

Darbo eiga prasideda vizitu, kurio metu atliekami vaizdinimo tyrimai: pacientas fiziškai atvyksta į gydymo įstaigą, o jam atliekama viena ar kelios vaizdinimo procedūros, dažniausiai mamografija ir, kai reikia, tomosintezė ar ultragarsinis tyrimas.

## Vaizdinimo tyrimų atlikimas

Procesas prasideda tuomet, kai gydytojas arba atrankos programa inicijuoja krūties vaizdinimo tyrimą ir pateikia [vaizdinimo užsakymą](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-ImOrder.html), pavyzdžiui, [krūties atrankos užklausą](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ServiceRequest-servicerequest-breast-screening-example.html). Užsakyme nurodomas tyrimo tipas (atrankinis arba diagnostinis), anatominė sritis ir svarbios klinikinės indikacijos.

Vaizdinimo tyrimų atlikimo vizito metu radiologijos technologas atlieka vaizdinimo procedūras, tokias kaip mamografija (pavyzdys: [Mammography Procedure](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Procedure-ExampleMammographyProcedure.html)), tomosintezė arba krūties ultragarsinis tyrimas. Pacientas šiame vizite dalyvauja fiziškai (pavyzdys: [Breast Imaging Acquisition Encounter](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Encounter-ExampleBreastStep2ImagingEncounter.html)).

Gauti vaizdinimo duomenys užfiksuojami kaip struktūrizuoti [ImagingStudy](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ImagingStudy-ExampleMammographyImagingStudy.html) ištekliai kartu su kontekstine informacija, pavyzdžiui, apie krūties pusę, kvadranto lokalizaciją, krūties tankį ir svarbų klinikinį kontekstą. Šiame etape diagnostinė išvada dar nepateikiama.

## Radiologinis vertinimas ir ataskaitų rengimas

Atlikus vaizdinimo tyrimus, juos interpretuoja radiologas, paprastai atskiro vertinimo etapo metu pacientui nedalyvaujant.

Radiologas peržiūri vaizdinimo duomenis ir dokumentuoja radinius, tokius kaip masės, kalcifikacijos, asimetrijos ar architektūrinės deformacijos, kaip struktūrizuotus stebėjimus, pavyzdžiui:

- [Breast Observation Finding](StructureDefinition-breast-observation-finding-lt-breast.html),
- [Breast Ultrasound Findings](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-breast-ultrasound-finding.html),
- [Breast Gland Density](StructureDefinition-breast-gland-density-lt-breast.html).

Tuomet radiologas priskiria BI-RADS kategoriją naudodamas [BI-RADS Assessment](StructureDefinition-birads-assessment-lt-breast.html) (pavyzdys: [BI-RADS 4](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Observation-example-birads-cat4.html)) ir surenka rezultatus į struktūrizuotą [vaizdinimo tyrimo diagnostinę ataskaitą](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-mammography-lt.html).

Diagnostinė ataskaita apima:

- vaizdinimo radinius ir jų lokalizaciją,
- krūties tankį,
- BI-RADS vertinimą kiekvienai krūčiai,
- rekomenduojamus tolesnius veiksmus.

## Tomosintezė

Skaitmeninė krūties tomosintezė (DBT) naudojama kaip papildomas vaizdinimo metodas, kai mamografijos radiniai nėra aiškūs (paprastai BI-RADS 0). Tomosintezės indikacija dažniausiai yra ankstesnis mamografijos vertinimas, rodantis, kad reikia papildomo vaizdinimo.

Tomosintezės radiniai registruojami naudojant [Tomosynthesis Examination Finding](StructureDefinition-tomosynthesis-finding-lt-breast.html) profilį, kuriame fiksuojama:

- radinio tipas (masė, kalcifikacija, architektūrinė deformacija), naudojant tuos pačius radinių kodus kaip ir mamografijoje,
- didžiausias radinio matmuo milimetrais,
- lokalizacija pjūviuose **CC (kraniokaudalinėje) projekcijoje** kaip laisvas tekstas (pvz., 42–58 pjūviai),
- lokalizacija pjūviuose **MLO (mediolateralinėje įstrižinėje) projekcijoje** kaip laisvas tekstas,
- lokalizacija pagal krūties pusę ir kvadrantą, naudojant [BodyStructure](StructureDefinition-body-structure-lt-breast.html),
- radinio evoliucija, palyginti su ankstesniais tyrimais.

Radiologas priskiria BI-RADS kategoriją ir rekomendaciją, naudodamas tuos pačius vertinimo ir siuntimo profilius kaip ir mamografijoje.

Tomosintezės radiniai įtraukiami į [Breast Composition](StructureDefinition-breast-composition-lt-breast.html) kartu su mamografiniais ir ultragarsiniais radiniais.

## Vertinimas ir sprendimų logika pagal BI-RADS

Pagrindinis darbo eigos modeliavimo principas yra aiškus atskyrimas tarp:

- klinikinio vertinimo (kas stebima ir klasifikuojama),
- darbo eigos sprendimų logikos (kas vyksta toliau, remiantis šiuo vertinimu).

BI-RADS kategorija veikia kaip pagrindinis sprendimų taškas:

- **BI-RADS 0** → reikalingas papildomas vaizdinimas,
- **BI-RADS 1–2** → tęsiama įprastinė atranka arba tolesni veiksmai nereikalingi,
- **BI-RADS 3** → reikalinga trumpalaikė stebėsena,
- **BI-RADS 4–5** → reikalingas siuntimas biopsijai.

Rekomenduojamas veiksmas pateikiamas kaip [ServiceRequest](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-breast-service-request.html), pavyzdžiui, [BI-RADS 4 siuntimas](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ServiceRequest-birads-referral-cat4.html).

## Papildomi vaizdinimo tyrimai ir biopsija

Jei rekomenduojami papildomi vaizdinimo tyrimai, sukuriamas naujas vaizdinimo užsakymas, o pacientui atliekami tolesni vaizdinimo tyrimai, sukuriant naujus vaizdinimo duomenų rinkinius ir ataskaitas.

### Biopsijos procedūra

Jei nurodoma biopsija (paprastai BI-RADS 4–5), atliekama vaizdinimo kontrolėje atliekama biopsijos procedūra. Procedūra dokumentuojama naudojant [Breast Biopsy Procedure](StructureDefinition-breast-biopsy-procedure-lt-breast.html) profilį, kuriame fiksuojama:

- **procedūros tipas**: ultragarsu valdoma stambiaadatė biopsija (SNOMED 432550005), ultragarsu valdoma smulkiaadatinė aspiracija (SNOMED 432337008), limfmazgio biopsija ultragarso kontrolėje (SNOMED 702556008) arba kiti biopsijos tipai iš [Breast Biopsy Procedure Type](ValueSet-breast-biopsy-procedure-type.html) reikšmių rinkinio,
- biopsijuojamo pažeidimo **anatominė vieta**,
- **data**, kada procedūra buvo atlikta,
- nuorodos į surinktus **mėginius**.

Vieno seanso metu gali būti biopsijuojami keli pakitimai. Kiekvienam biopsijuotam pakitimui sukuriama atskira mėginio talpykla, kurioje pateikiama informacija apie lokalizaciją (pagal laikrodžio padėtį ultragarsu valdomų procedūrų atveju arba pagal kvadrantą rentgeno kontrolėje atliekamų procedūrų atveju) ir biopsijuojamos struktūros dydį milimetrais.

Jei atliekama limfmazgio biopsija, registruojama lokalizacija (dešinė / kairė), pažeidimo lygis (N1 / N2 / N3) ir limfmazgio dydis.

Išsamūs biopsijos duomenys taip pat renkami per [Biopsy ESPBI Questionnaire](Questionnaire-questionnaire-biopsy-lt-breast.html), kuriame pateikiami papildomi laukai mėginių talpykloms, radiologinei išvadai ir įstaigos informacijai.

## Patologinių tyrimų ataskaitos ir diagnozė

Surinkti audinių mėginiai transportuojami į patologijos laboratoriją ir analizuojami kaip struktūrizuoto diagnostinio ataskaitų rengimo proceso, apibrėžto [Lietuvos laboratorinių tyrimų IG](https://hl7.lt/fhir/lab), dalis.

### Sinoptinė patologijos kompozicija

Patologijos ataskaita atitinka [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-pathology-composition-lt-lab.html) struktūrą iš Laboratorinių tyrimų IG ir yra suskirstyta į keturis LOINC koduotus skyrius:

1. **Preanalitinis** (LOINC 22636-5): klinikinis kontekstas, paslaugos užklausa, biopsijos procedūra ir pateikti mėginiai,
2. **Makroskopinis** (LOINC 74574-5): bendrieji mėginio matmenys, mėginio tinkamumas, parafino blokai,
3. **Mikroskopinis** (LOINC 660-1): naviko apibūdinimas, matavimai ir imunohistochemija,
4. **Sintezė** (LOINC 22637-3): pasirašyta diagnostinė ataskaita su PSO klasifikacija ir kodavimu.

### Imunohistochemija (IHC)

Mikroskopiniame skyriuje pateikiami struktūrizuoti imunohistocheminių tyrimų rezultatai:

- [Estrogen Receptor (ER) Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-estrogen-receptor-status-observation-lt-lab.html) — ekspresijos lygis (neigiamas / silpnas / vidutinis / stiprus) ir teigiamų naviko ląstelių branduolių procentas,
- [Progesterone Receptor (PR) Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-progesterone-receptor-status-observation-lt-lab.html) — ta pati skalė kaip ir ER,
- [HER2 Receptor Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-her2-receptor-status-observation-lt-lab.html) — IHC vertinimas (0+ / 1+ / 2+ / 3+),
- [Ki-67 Proliferation Index](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-ki67-proliferation-observation-lt-lab.html) — proliferuojančių naviko ląstelių procentas.

### Molekuliniai tyrimai

Kai HER2 IHC rezultatai yra ribiniai (2+), atliekami molekuliniai tyrimai:

- [HER2 FISH/CISH/SISH](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-her2-fish-observation-lt-lab.html) — HER2 vidurkis, CEP17 vidurkis, HER2 / CEP17 santykis ir amplifikacijos klasifikacija.

### Naviko laipsniavimas ir invazija

Histologiniam laipsniavimui naudojamas [Histological Grading](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/ValueSet-histological-grading.html) reikšmių rinkinys (G1–G3, Gx). Limfovaskulinė invazija vertinama naudojant [pLVI Classification](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/ValueSet-plvi-classification.html) reikšmių rinkinį (pLVI-0 iki pLVI-4, pLVI-9).

### Patologinė išvada

Galutinei diagnozei nustatyti naudojamas [WHO Breast Tumor Classification](ValueSet-breast-tumor-who-classification.html) reikšmių rinkinys, apimantis apie 80 navikų tipų pagal 5-ąjį PSO navikų klasifikacijos leidimą. Kiekviena diagnozė koduojama naudojant SNOMED CT, o [Pathology Report](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-pathology-report-lt-lab.html) ataskaitoje papildomai pateikiami ICD-10-AM ir ICD-O-3 morfologijos kodai.

Išsamūs patologijos duomenys taip pat renkami per [Pathology ESPBI Questionnaire](Questionnaire-questionnaire-pathology-lt-breast.html).

## Komunikacija ir diagnostikos ciklo užbaigimas

Patologijos diagnostinę ataskaitą peržiūri ir pasirašo patologas, o vėliau ji perduodama siuntusiam gydytojui. Šiame etape diagnostikos etapas laikomas užbaigtu, o pacientas, priklausomai nuo diagnozės, gali būti siunčiamas tolesniam gydymo planavimui, onkologijos konsultacijai ar stebėsenai.

Šis darbo eigos modelis atspindi realią klinikinę praktiką, kartu užtikrindamas aiškų atskyrimą tarp:

- duomenų gavimo ir interpretacijos,
- klinikinių stebėjimų ir darbo eigos sprendimų,
- procedūrinių žingsnių ir diagnostinių išvadų.

Jis pateikia struktūrizuotą ir sąveikią krūties vėžio atrankos ir diagnostikos kelio reprezentaciją bei palaiko standartizuotus duomenų mainus, ataskaitų rengimą ir programos stebėseną nacionalinėje krūties vėžio atrankos ir diagnostikos programoje.