# Krūties vėžio atrankos ir diagnostikos darbo eiga

Krūties vėžio atrankos ir diagnostikos darbo eiga yra struktūrizuotas, nuoseklus klinikinis procesas, palaikantis ankstyvą krūties vėžio nustatymą, diagnozę ir klasifikaciją. Darbo eiga pirmiausia valdoma diagnostine vizualizacija ir vėlesniu klinikiniu sprendimų priėmimu keliose klinikinėse specialybėse, įskaitant radiologiją, patologiją ir onkologiją.

Darbo eiga prasideda vaizdinimo gavimo vizitu, kurio metu pacientas fiziškai dalyvauja ir atliekamos viena ar kelios vaizdinimo procedūros, paprastai apimančios mamografiją ir, kai nurodyta, tomosintezę ar ultragarsą.

## Vaizdinimo gavimas

Procesas prasideda, kai gydytojas arba atrankos programa inicijuoja krūties vaizdinimo tyrimą pateikdamas [vaizdinimo užsakymą](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-ImOrder.html), pavyzdžiui, [krūties atrankos užklausą](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ServiceRequest-servicerequest-breast-screening-example.html). Užsakyme nurodomas tyrimo tipas (atrankinė arba diagnostinė), anatominė sritis ir aktualios klinikinės indikacijos.

Vaizdinimo gavimo vizito metu radiologijos technikas atlieka vaizdinimo procedūras, tokias kaip mamografija (pavyzdys: [Mammography Procedure](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Procedure-ExampleMammographyProcedure.html)), tomosintezė arba krūties ultragarsas. Pacientas dalyvauja šio susitikimo metu (pavyzdys: [Breast Imaging Acquisition Encounter](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Encounter-ExampleBreastStep2ImagingEncounter.html)).

Gauti vaizdinimo duomenys užfiksuojami kaip struktūrizuoti [ImagingStudy](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ImagingStudy-ExampleMammographyImagingStudy.html) ištekliai kartu su kontekstine informacija, tokia kaip krūties šoniškumas, kvadranto lokalizacija, krūties tankis ir aktualus klinikinis pagrindas. Šiame etape diagnostinė išvada neteikiama.

## Radiologinis vertinimas ir ataskaitų rengimas

Po gavimo vaizdinimo tyrimai interpretuojami radiologo, paprastai atskirame vertinimo susitikime be paciento.

Radiologas peržiūri vaizdinimo duomenis ir dokumentuoja radinius, tokius kaip masės, kalcifikacijos, asimetrijos ar architektūrinės deformacijos, kaip struktūrizuotus stebėjimus, pavyzdžiui:

- [Breast Observation Finding](StructureDefinition-breast-observation-finding-lt-breast.html),
- [Breast Ultrasound Findings](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-breast-ultrasound-finding.html),
- [Breast Gland Density](StructureDefinition-breast-gland-density-lt-breast.html).

Tada radiologas priskiria BI-RADS kategoriją naudodamas [BI-RADS Assessment](StructureDefinition-birads-assessment-lt-breast.html) (pavyzdys: [BI-RADS 4](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/Observation-example-birads-cat4.html)) ir surenka rezultatus į struktūrizuotą [vaizdinimo diagnostikos ataskaitą](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-mammography-lt.html).

Diagnostinė ataskaita apima:

- vaizdinimo radinius ir jų lokalizaciją,
- krūties tankį,
- BI-RADS vertinimą kiekvienai krūčiai,
- ir rekomenduojamus tolesnius veiksmus.

## Tomosintezė

Skaitmeninė krūties tomosintezė (DBT) naudojama kaip papildomas vaizdinimo modalumas, kai mamografijos radiniai yra neaiškūs (paprastai BI-RADS 0). Tomosintezės indikacija dažniausiai yra ankstesnis mamografijos vertinimas, reikalaujantis papildomo vaizdinimo.

Tomosintezės radiniai registruojami naudojant [Tomosynthesis Examination Finding](StructureDefinition-tomosynthesis-finding-lt-breast.html) profilį, kuris fiksuoja:

- radinio tipą (masė, kalcifikacija, architektūrinė deformacija) naudojant tuos pačius radinių kodus kaip mamografijoje,
- didžiausią radinio matmenį milimetrais,
- skerspjūvio lokalizaciją **CC (kraniokaudalinėje) projekcijoje** kaip laisvą tekstą (pvz., 42–58 pjūviai),
- skerspjūvio lokalizaciją **MLO (mediolateraliniu kampu) projekcijoje** kaip laisvą tekstą,
- lokalizaciją pagal krūties pusę ir kvadrantą naudojant [BodyStructure](StructureDefinition-body-structure-lt-breast.html),
- evoliuciją palyginti su ankstesniais tyrimais.

Radiologas priskiria BI-RADS kategoriją ir rekomendaciją naudodamas tuos pačius vertinimo ir nukreipimo profilius kaip mamografijoje.

Tomosintezės radiniai įtraukiami į [Breast Composition](StructureDefinition-breast-composition-lt-breast.html) kartu su mamografiniais ir ultragarsiniais radiniais.

## Vertinimas ir sprendimų logika pagal BI-RADS

Pagrindinis darbo eigos projektavimo principas yra aiškus atskyrimas tarp:

- klinikinio vertinimo (kas stebima ir klasifikuojama), ir
- darbo eigos sprendimų logikos (kas vyksta toliau dėl to vertinimo).

BI-RADS kategorija veikia kaip pagrindinis sprendimų taškas:

- **BI-RADS 0** → reikalingas papildomas vaizdavimas,
- **BI-RADS 1–2** → įprastinė atrankinė arba jokių tolesnių veiksmų nereikia,
- **BI-RADS 3** → trumpo intervalo tolesnė stebėsena,
- **BI-RADS 4–5** → nukreipimas biopsijoje.

Rekomenduojamas veiksmas pateikiamas kaip [ServiceRequest](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/StructureDefinition-breast-service-request.html), pavyzdžiui, [BI-RADS 4 nukreipimas](https://build.fhir.org/ig/HL7LT/ig-lt-breast/en/ServiceRequest-birads-referral-cat4.html).

## Papildomas vaizdavimas ir biopsija

Jei rekomenduojamas papildomas vaizdavimas, sukuriamas naujas vaizdinimo užsakymas ir pacientas atlieka tolesnius vaizdinimo tyrimus, generuodamas naujus vaizdinimo duomenų rinkinius ir ataskaitas.

### Biopsijos procedūra

Jei nurodyta biopsija (paprastai BI-RADS 4–5), atliekama vaizdu valdoma biopsijos procedūra. Procedūra dokumentuojama naudojant [Breast Biopsy Procedure](StructureDefinition-breast-biopsy-procedure-lt-breast.html) profilį, kuris fiksuoja:

- **procedūros tipą**: ultragarsu valdoma stambiaadatė biopsija (SNOMED 432550005), ultragarsu valdoma smulkiaadatė aspiracija (SNOMED 432337008), limfmazgio biopsija ultragarso valdymu (SNOMED 702556008) arba kiti biopsijos tipai iš [Breast Biopsy Procedure Type](ValueSet-breast-biopsy-procedure-type.html) reikšmių rinkinio,
- biopsijuojamo pažeidimo **anatominę vietą**,
- **datą**, kada procedūra buvo atlikta,
- nuorodas į surinktus **mėginius**.

Vieno seanso metu gali būti atlikta biopsija iš kelių pakitimų. Kiekvienas biopsijuotas pakitimas generuoja atskirą mėginio indą su informacija apie lokalizaciją (laikrodžio padėtimi ultragarso valdomiems, arba kvadrantu rentgeno valdomiems) ir biopsijuojamos struktūros dydį milimetrais.

Jei atliekama limfmazgio biopsija, registruojama lokalizacija (dešinė/kairė), pažeidimo lygis (N1/N2/N3) ir limfmazgio dydis.

Išsamūs biopsijos duomenys taip pat renkami per [Biopsy ESPBI Questionnaire](Questionnaire-questionnaire-biopsy-lt-breast.html), kuriame yra papildomų laukų mėginių indams, radiologinei išvadai ir įstaigos informacijai.

## Patologinių tyrimų ataskaitos ir diagnozė

Surinkti audinių mėginiai transportuojami į patologijos laboratoriją ir analizuojami kaip struktūrizuoto diagnostinio ataskaitų rengimo proceso dalis, apibrėžtos [Lietuvos laboratorinių tyrimų IG](https://hl7.lt/fhir/lab).

### Sinoptinė patologijos kompozicija

Patologijos ataskaita atitinka [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-pathology-composition-lt-lab.html) struktūrą iš Laboratorinių tyrimų IG, suskirstytą į keturis LOINC koduotus skyrius:

1. **Ikianalizinis** (LOINC 22636-5): klinikinis kontekstas, paslaugų užklausa, biopsijos procedūra ir pateikti mėginiai,
2. **Makroskopinis** (LOINC 74574-5): bendri mėginio matavimai, mėginio tinkamumas, parafino blokai,
3. **Mikroskopinis** (LOINC 660-1): naviko apibūdinimas, matavimai ir imunohistochemija,
4. **Sintezė** (LOINC 22637-3): pasirašyta diagnostinė ataskaita su PSO klasifikacija ir kodavimu.

### Imunohistochemija (IHC)

Mikroskopiniame skyriuje yra struktūrizuoti stebėjimai imunohistocheminių testų:

- [Estrogen Receptor (ER) Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-estrogen-receptor-status-observation-lt-lab.html) — ekspresijos lygis (neigiamas/silpnas/vidutinis/stiprus) ir teigiamų naviko ląstelių branduolių procentas,
- [Progesterone Receptor (PR) Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-progesterone-receptor-status-observation-lt-lab.html) — ta pati skalė kaip ER,
- [HER2 Receptor Status](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-her2-receptor-status-observation-lt-lab.html) — IHC vertinimas (0+/1+/2+/3+),
- [Ki-67 Proliferation Index](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-ki67-proliferation-observation-lt-lab.html) — dauginančių naviko ląstelių procentas.

### Molekuliniai tyrimai

Kai HER2 IHC rezultatai yra ribiniai (2+), atliekami molekuliniai tyrimai:

- [HER2 FISH/CISH/SISH](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-her2-fish-observation-lt-lab.html) — HER2 vidurkis, CEP17 vidurkis, HER2/CEP17 santykis ir amplifikacijos klasifikacija.

### Naviko laipsniavimas ir invazija

Histologinis laipsniavimas naudoja [Histological Grading](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/ValueSet-histological-grading.html) reikšmių rinkinį (G1–G3, Gx). Limfovaskulinis invaziškumas vertinamas naudojant [pLVI Classification](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/ValueSet-plvi-classification.html) (pLVI-0 iki pLVI-4, pLVI-9).

### Patologinė išvada

Galutinei diagnozei naudojamas [WHO Breast Tumor Classification](ValueSet-breast-tumor-who-classification.html) reikšmių rinkinys, apimantis maždaug 80 navikų tipų iš PSO navikų klasifikacijos, 5-ojo leidimo. Kiekviena diagnozė koduojama SNOMED CT ir papildoma ICD-10-AM ir ICD-O-3 morfologijos kodais [Pathology Report](https://build.fhir.org/ig/HL7LT/ig-lt-lab/en/StructureDefinition-pathology-report-lt-lab.html).

Išsamūs patologijos duomenys taip pat renkami per [Pathology ESPBI Questionnaire](Questionnaire-questionnaire-pathology-lt-breast.html).

## Komunikacija ir diagnostikos ciklo užbaigimas

Patologijos diagnostinę ataskaitą peržiūri ir pasirašo patologas, o ji perduodama nukreipusiam gydytojui. Šiame etape diagnostikos fazė yra baigta ir priklausomai nuo diagnozės pacientas gali būti nukreiptas tolesniam gydymo planavimui, onkologijos konsultacijai ar stebėjimui.

Šis darbo eigos modelis atspindi realią klinikinę praktiką, tuo pat metu užtikrindamas aiškų atskyrimą tarp:

- duomenų gavimo ir interpretacijos,
- klinikinių stebėjimų ir darbo eigos sprendimų,
- procedūrinių žingsnių ir diagnostinių išvadų.

Jis teikia struktūrizuotą ir sąveikų krūties vėžio atrankos ir diagnostikos kelio atvaizdavimą ir palaiko standartizuotą duomenų mainus, ataskaitų rengimą ir programos stebėseną nacionalinėje krūties vėžio atrankos ir diagnostikos programoje.
