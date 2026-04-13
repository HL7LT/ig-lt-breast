# Lietuvos krūties vėžio atrankos ir diagnostikos įgyvendinimo vadovas

## Įvadas ir tikslas

Šiame įgyvendinimo vadove nustatoma, kaip nuosekliai pateikti ir keistis struktūrizuotais klinikiniais duomenimis, susijusiais su **krūties vėžio atrankos ir diagnostikos programa**, naudojant **HL7® FHIR® standartą**.

Vadovas remia nacionalinę **ankstyvo krūties vėžio nustatymo ir diagnostikos programą**, apibrėždamas sąveikias duomenų struktūras, skirtas **vaizdinimui, klinikinei interpretacijai, diagnostiniams sprendimams, invazinėms procedūroms ir patologijos ataskaitoms**. Jo paskirtis – užtikrinti:

* nuoseklų ir aukštos kokybės duomenų rinkimą visose sveikatos priežiūros įstaigose,
* semantinį sąveikumą tarp **radiologijos, patologijos ir klinikinių sistemų**,
* struktūrizuotas ataskaitas, skirtas **programos stebėsenai, kokybės užtikrinimui ir antriniam duomenų panaudojimui**,
* patikimą **ilgalaikį pacientų stebėjimą** per diagnostikos epizodus.

Vadovas parengtas kaip nacionalinio **ADP projekto** dalis, siekiant palaikyti koordinuotą, duomenimis grindžiamą prevencinių ir ankstyvos diagnostikos programų valdymą Lietuvoje.

## Apimtis

Šis vadovas konkrečiai orientuotas į **krūties vėžio atrankos ir diagnostikos darbo eigą**, kuri iš esmės skiriasi nuo gyvenimo būdo ar klausimynais grindžiamų prevencinių programų.

Jis apima šias klinikines sritis:

* **Vaizdų gavimas** (mamografija, tomosintezė, ultragarsas),
* **Radiologinė interpretacija ir ataskaitų rengimas** naudojant **BI-RADS**,
* aiškus **vertinimo ir darbo eigos sprendimų** modeliavimas,
* **tolesni veiksmai** (papildomas vaizdinimas, biopsija),
* **invazinės diagnostikos procedūros** (vaizdinimo kontrolėje atliekamos biopsijos),
* **patologinis histologinis tyrimas ir diagnostinės ataskaitos**.

Vadove krūties vėžio diagnostika modeliuojama kaip **nuosekli, sprendimais grindžiama, daugiadalykė darbo eiga**, integruojanti radiologiją ir patologiją į vieną tęstinį informacijos modelį.

## Pagrindiniai modeliavimo principai

Modeliavimo metodas grindžiamas šiais pagrindiniais principais:

1. **Duomenų gavimo ir interpretacijos atskyrimas**  
   Vaizdinimo procedūros generuoja struktūrizuotus duomenų rinkinius, o interpretacija ir diagnozė pateikiamos atskirai – kaip diagnostinės ataskaitos ir vertinimai.

2. **Aiškus klinikinio stebėjimo ir darbo eigos logikos atskyrimas**  
   Pavyzdžiui, **BI-RADS vertinimas** atspindi tai, kas nustatyta, o tolesnės rekomendacijos ir siuntimai atspindi darbo eigos sprendimus, kylančius iš šio vertinimo.

3. **Sritinis modeliavimas**  
   Krūties vaizdinimas, radiologinės ataskaitos, biopsija ir patologija reikalauja sričiai būdingų profilių, kurie skiriasi nuo gyvenimo būdo, laboratorinių ar bendrųjų prevencinių modelių.

4. **Tęstinumas laike**  
   Visi duomenų elementai sukurti taip, kad palaikytų susiejimą laike ir leistų susieti tolesnius vaizdinimo tyrimus, biopsijas ir patologijos duomenis su ankstesniais atrankos ir diagnostikos įvykiais.

## Vadovo turinys

Šiame vadove pateikiami:

* **FHIR profiliai ir plėtiniai**, skirti krūties vaizdinimui, vertinimui ir diagnostikai,
* **terminologiniai susiejimai** naudojant **SNOMED CT, LOINC ir ICD-10-AM**,
* struktūrizuoti **pavyzdžiai**, iliustruojantys realius klinikinius scenarijus,
* susiejimai iš **klinikinių programos duomenų rinkinių į sąveikius FHIR artefaktus**,
* spragų ir būsimų plėtros poreikių nustatymas.

Šiame etape vadovas apima **pagrindinę darbo eigą** ir **pirmąjį pagrindinių profilių bei pavyzdžių rinkinį**. Tolesnis tikslinimas, terminologijos plėtimas ir klinikinis validavimas bus atliekami vėlesnėse iteracijose.

## Kodėl verta naudoti šį vadovą?

Pritaikę šį vadovą, diegėjai ir sveikatos priežiūros įstaigos gali:

1. **Sąveikumas:** užtikrinti nuoseklius ir palyginamus krūties atrankos ir diagnostikos duomenis visose sistemose.
2. **Duomenų kokybė:** pagerinti vaizdinimo ir diagnostikos duomenų nuoseklumą, išsamumą ir klinikinį naudingumą.
3. **Klinikinis naudingumas:** palaikyti struktūrizuotas ataskaitas, kokybės užtikrinimą, stebėseną populiacijos lygmeniu ir būsimą klinikinių sprendimų paramą.
4. **Tęstinė priežiūra:** sudaryti galimybę susieti atrankos, diagnostikos, gydymo ir tolesnio stebėjimo duomenis laike ir tarp paslaugų teikėjų.

Toliau pateiktuose skyriuose rasite profilius, terminologinius susiejimus ir išsamius pavyzdžius, reikalingus standartui įgyvendinti.

### IP pareiškimai
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Prisidėję asmenys

| Vardas | Vaidmuo | Organizacija |
|---|---|---|
| [Igor Bossenko](https://about.askigor.eu) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Bendraautorė | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Recenzentas | [LMB](https://lmb.lt) |