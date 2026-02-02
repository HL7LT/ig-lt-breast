Profile: BreastServiceRequest
Parent: ImOrder
Id: breast-service-request
Title: "Breast Examination Order"
Description: "A profile of ServiceRequest used to capture a clinical recommendation (e.g., follow-up ultrasound, surgical referral)."
* status MS
* subject 1..1 MS
* subject only Reference(LTBasePatient)
* code 1..1 MS
* code from BreastAssessment (required)
// Reason Code: The BI-RADS result that necessitated the recommendation is mandatory.
* reason MS
* reason from BiradsCategory (required)
// Requester (The Clinician/Report Author) is mandatory.
* requester 1..1
* requester only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization)
// Occurrence: Details when the action should happen (e.g., in 6 months, immediately).
* occurrence[x] 1..1
* bodyStructure MS
* bodyStructure only Reference(BodyStructureLtBreast)
* bodySite MS
* bodySite from BreastBodySite (required)

Instance: birads-referral-cat4
InstanceOf: BreastServiceRequest
Title: "Example BI-RADS Category 4 Referral"
Description: "A ServiceRequest instance recommending a referral to a breast surgeon due to a Category 4 (suspicious) BI-RADS finding."
* status = #active
* intent = #order
* priority = #routine
* code = $sct#306300002 "Referral to breast surgeon (procedure)"
* occurrenceDateTime = "2025-12-15T09:00:00Z"
* subject = Reference(Patient/example-patient)
* requester = Reference(Practitioner/example-practitioner)
* reason.concept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
* supportingInfo = Reference(Observation/example-birads-cat4)