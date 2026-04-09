# Lietuvos krūties vėžio atrankos ir diagnostikos įgyvendinimo vadovas

## Įvadas ir tikslas

Šis įgyvendinimo vadovas nurodo, kaip nuosekliai pateikti ir keistis struktūrizuotais klinikiniais duomenimis, susijusiais su **Krūties vėžio atrankos ir diagnostikos programa**, naudojant **HL7® FHIR® standartą**.

Vadovas remia nacionalinę programą, skirtą **ankstyvai krūties vėžio nustatymui ir diagnostikai**, apibrėžiant sąveikias duomenų struktūras **vaizdinimui, klinikinei interpretacijai, diagnostikos sprendimams, invaziems procedūroms ir patologinių tyrimų ataskaitoms**. Jo tikslas – užtikrinti:

* nuoseklų ir aukštos kokybės duomenų rinkimą visose sveikatos priežiūros įstaigose,
* semantinį sąveikumą tarp **radiologijos, patologijos ir klinikinių sistemų**,
* struktūrizuotas ataskaitas **programos stebėsenai, kokybės užtikrinimui ir antriniam naudojimui**,
* patikimą **ilgalaikį pacientų stebėjimą** per diagnostikos epizodus.

Vadovas sukurtas kaip nacionalinio **ADP projekto** dalis, siekiant palaikyti koordinuotą, duomenimis grindžiamą prevencinių ir ankstyvos diagnostikos programų valdymą Lietuvoje.

## Apimtis

Šis vadovas konkrečiai orientuotas į **krūties vėžio diagnostikos ir atrankos darbo eigą**, kuri iš esmės skiriasi nuo gyvenimo būdo ar apklausomis grindžiamų prevencinių programų.

Jis apima šias klinikinius sritis:

* **Vaizdinimo gavimas** (mamografija, tomosintezė, ultragarsas),
* **Radiologinė interpretacija ir ataskaitų rengimas** naudojant **BI-RADS**,
* Aiškus **vertinimo ir darbo eigos sprendimų** modeliavimas,
* **Tolesnių veiksmų** (papildomų vaizdų, biopsijos) planavimas,
* **Invazinės diagnostikos procedūros** (vaizdu valdomos biopsijos),
* **Patologinis histologinis tyrimas ir diagnostinės ataskaitos**.

Vadovas modeliuoja krūties vėžio diagnostiką kaip **nuoseklią, sprendimais valdomą, daugiadalykinę darbo eigą**, integruojančią radiologiją ir patologiją į vieną ilgalaikį informacijos modelį.

## Pagrindiniai modeliavimo principai

Modeliavimo metodas grindžiamas šiais pagrindiniais principais:

1. **Duomenų gavimo ir interpretacijos atskyrimas**
   Vaizdinimo procedūros generuoja struktūrizuotus duomenų rinkinius, o interpretacija ir diagnozė pateikiamos atskirai kaip diagnostinės ataskaitos ir vertinimai.

2. **Aiškus klinikinio stebėjimo ir darbo eigos logikos atskyrimas**
   Pavyzdžiui, **BI-RADS vertinimas** atspindi tai, kas stebima, o tolesnės rekomendacijos ir nukreipimai atspindi darbo eigos sprendimus, kilusius iš to vertinimo.

3. **Specifinis srities modeliavimas**
   Krūties vaizdavimas, radiologinės ataskaitos, biopsija ir patologija reikalauja specifinių sričiai profilių, kurie skiriasi nuo gyvenimo būdo, laboratorinių ar bendrų prevencinių modelių.

4. **Ilgalaikė nuoseklumas**
   Visi duomenų elementai sukurti taip, kad palaikytų ryšius tarp skirtingų laikotarpių, leidžiant susieti tolesnius vaizdinimus, biopsijas ir patologiją su ankstesniais atrankos ir diagnostikos įvykiais.

## Vadovo turinys

Šis vadovas teikia:

* **FHIR profilius ir plėtinius** krūties vaizdinimui, vertinimui ir diagnostikai,
* **terminologijos siejimus** naudojant **SNOMED CT, LOINC ir ICD-10-AM**,
* struktūrizuotus **pavyzdinius egzempliorius**, iliustruojančius realius klinikinius scenarijus,
* susiejimus iš **klinikinių programos duomenų rinkinių į sąveikius FHIR artefaktus**,
* ir spragų bei būsimų plėtros poreikių nustatymą.

Šiame etape vadovas apima **pagrindinę darbo eigą** ir **pirmąjį pagrindinių profilių ir pavyzdžių rinkinį**. Tolesnis tikslinimas, terminologijos plėtimas ir klinikinis patvirtinimas bus atliekami vėlesnėse iteracijose.

## Kodėl naudoti šį vadovą?

Pritaikę šį vadovą, diegėjai ir sveikatos priežiūros įstaigos gali:

1. **Sąveikumas:** Užtikrinti nuoseklius ir palyginamus krūties atrankos ir diagnostikos duomenis visose sistemose.
2. **Duomenų kokybė:** Pagerinti vaizdinimo ir diagnostikos duomenų nuoseklumą, išsamumą ir klinikinį naudingumą.
3. **Klinikinis naudingumas:** Palaikyti struktūrizuotas ataskaitas, kokybės užtikrinimą, stebėseną populiacijos lygmeniu ir būsimą klinikinę sprendimų paramą.
4. **Ilgalaikė priežiūra:** Įgalinti atrankos, diagnostikos, gydymo ir tolesnio stebėjimo ryšius per laiką ir tarp paslaugų teikėjų.

Naršykite toliau pateiktus skyrius, kad gautumėte prieigą prie profilių, terminologijos siejimų ir išsamių pavyzdžių, reikalingų standartui įgyvendinti.


### IP teiginiai
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Bendraautoriai

| Vardas                                             | Vaidmuo                       | Organizacija                                    |
| -------------------------------------------------- | ----------------------------- | ----------------------------------------------- |
| [Igor Bossenko](https://about.askigor.eu)         | Pagrindinis autorius          | [HELEX Solutions](https://helex.solutions)      |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Bendraautorė             | [HELEX Solutions](https://helex.solutions)      |
| Martynas Bieliauskas                               | Recenzentas                   | [LMB](https://lmb.lt)                           |
