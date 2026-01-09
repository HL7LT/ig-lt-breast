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

// * category[imaging] = $sct#363679005 "Imaging (procedure)"
// Core elements
* status = #active
* intent = #order
* priority = #routine
// Service code
* code = $sct#306300002 "Referral to breast surgeon (procedure)"
// The Reason (ServiceRequest.reasonCode)
* reason.concept = $sct#397144001 "Mammography assessment (Category 4) - Suspicious abnormality, biopsy should be considered (finding)"
// Timing/Occurrence. The recommendation should happen immediately.
* occurrenceDateTime = "2025-12-15T09:00:00Z"

// Subject (The Patient) and Requester (The Radiologist)
* subject = Reference(Patient/example-patient)
* requester = Reference(Practitioner/example-practitioner)

// Based On (Optional): Link back to the Diagnostic Report
* basedOn = Reference(DiagnosticReport/example-birads-cat4)