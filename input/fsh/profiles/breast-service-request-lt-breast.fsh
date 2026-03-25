Profile: BreastServiceRequestLtBreast
Parent: ServiceRequestLt
Id: breast-service-request-lt-breast
Title: "Breast Examination Order"
Description: "A profile of ServiceRequest used to capture a clinical recommendation (e.g., follow-up ultrasound, surgical referral)."
* ^url = $breast-service-request-lt-breast-url
* status MS
* subject 1..1 MS
* subject only Reference(PatientLt)
* code 1..1 MS
* code from BreastAssessmentVS (required)
// Reason Code: The BI-RADS result that necessitated the recommendation is mandatory.
* reason MS
* reason from BiradsCategoryVS (required)
// Requester (The Clinician/Report Author) is mandatory.
* requester 1..1
* requester only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt)
// Occurrence: Details when the action should happen (e.g., in 6 months, immediately).
* occurrence[x] 1..1
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySiteVS (required)