// BI-RADS assessment profile
Profile: BiradsAssessmentLtBreast
Parent: Observation
Id: birads-assessment-lt-breast
Title: "BI-RADS Assessment"
Description: "Final radiological diagnostic conclusion according to BI-RADS classification." //Each breast is assigned a BI-RADS category, which recommends further actions?
* ^url = $birads-assessment-lt-breast-url
* category = $observation-category#imaging "Imaging"
* code = $sct#146611000146107 "Breast Imaging Reporting and Data System assessment category (observable entity)"
* subject 1..1 MS
* subject only Reference(PatientLt)
* effective[x] 1..1 MS
* effective[x] only dateTime
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from BiradsCategoryLtBreast (required)
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySiteLtBreast (required)
