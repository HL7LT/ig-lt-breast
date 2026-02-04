Profile: ImComposition
Parent: $EuComposition
Id: ImComposition
Title: "IM Composition"
Description: "Clinical document used to represent a Imaging Study Report for the scope of the HL7 Europe project."
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* . ^short = "Imaging Report composition"
* . ^definition = "Imaging Study Report composition.\n\nA composition is a set of healthcare-related information that is assembled together into a single logical document that \nprovides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard \nto who is making the statement.\n\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, \nof which the Composition is the first resource contained.\n\n\nThe `text` field of each section SHALL contain a textual representation of all listed entries."
* ^url = $CompositionEuImagingUrl
* extension contains $CompositionDiagnosticReportReferenceUrl named diagnosticreport-reference 1..1
* identifier 1..
* type from $ImImagingReportTypesEuVS (extensible)
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.ordered = false
* type.coding ^slicing.rules = #open
* type.coding contains eu-template 1..1
* type.coding[eu-template] = $Hl7EuDocumentTypes#imaging-report-v0-0-1 "Imaging Report V0.0.1"
* category contains imaging 1..1
* category[imaging] = $loinc#18748-4 "Diagnostic imaging study"
* category[imaging].coding 1..1
* author ^slicing.discriminator.type = #type
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #open
* author contains
    author 0..* and
    authoringDevice 0..*
* author[author] only Reference($EuPractitionerRoleUrl)
* author[authoringDevice] only Reference(Device)
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.ordered = false
* attester ^slicing.rules = #open
* attester contains
    legalAuthenticator 0..* and
    resultValidator 0..*
* attester[legalAuthenticator].mode = $composition-attestation-mode#legal
* attester[legalAuthenticator].time 1..
* attester[legalAuthenticator].party only Reference($EuPractitionerRoleUrl)
* attester[resultValidator].mode = $composition-attestation-mode#professional
* attester[resultValidator].time 1..
* attester[resultValidator].party only Reference($EuPractitionerRoleUrl)
* custodian only Reference($EuOrganizationUrl)
* custodian ^short = "Organization that manages the Imaging Report"
* event ^slicing.discriminator.type = #value
// CHANGE 1: Discriminate based on the System URL, not the whole concept
* event ^slicing.discriminator.path = "detail.concept.coding.system"
* event ^slicing.ordered = false
* event ^slicing.rules = #open
* event contains
    imagingstudy 1..* and
    procedure 1..*

// CHANGE 2: Assign the specific systems to the slices so the validator can match them
// Slice 1: Imaging Study (Modality) uses DICOM
* event[imagingstudy].detail.concept.coding.system = "http://dicom.nema.org/resources/ontology/DCM"

* event[imagingstudy] ^short = "Modality"
* event[imagingstudy] ^definition = "The type of imaging modality used to perform the study."
* event[imagingstudy].detail 1..
* event[imagingstudy].detail only CodeableReference($ImagingStudyEuImagingUrl)
* event[imagingstudy].detail from $sect_CID_33.html (extensible)

* event[procedure].detail.concept.coding.system = "http://snomed.info/sct"

* event[procedure] ^short = "Study Type"
* event[procedure] ^definition = "The type of imaging study performed."
* event[procedure].detail 1..
* event[procedure].detail only CodeableReference($ProcedureEuImagingUrl)
* event[procedure].detail from $valueset-procedure-reason.html (extensible)
* section obeys eu-imaging-composition-1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section.code 1..
* section.emptyReason from $ImSectionEmptyReason (preferred)
* section contains
    imagingstudy 1..1 and
    order 1..1 and
    history 1..1 and
    procedure 1..1 and
    comparison 1..1 and
    findings 1..1 and
    impression 1..1 and
    recommendation 1..1 and
    communication 0..1
* section[imagingstudy] ^short = "Imaging Study"
* section[imagingstudy] ^definition = "This section holds information related to the imaging studies covered by this report."
* section[imagingstudy].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[imagingstudy].code = $loinc#18726-0
* section[imagingstudy].entry ^slicing.discriminator.type = #type
* section[imagingstudy].entry ^slicing.discriminator.path = "resolve()"
* section[imagingstudy].entry ^slicing.ordered = false
* section[imagingstudy].entry ^slicing.rules = #open
* section[imagingstudy].entry contains imagingstudy 1..*
* section[imagingstudy].entry[imagingstudy] only Reference($ImagingStudyEuImagingUrl)
* section[imagingstudy].entry[imagingstudy] ^short = "Imaging Study Reference"
* section[imagingstudy].entry[imagingstudy] ^definition = "This entry holds a reference to the Imaging Study instance that is associated with this Composition."
* section[order] ^short = "Order"
* section[order] ^definition = "This section holds information related to the order for the imaging study."
* section[order].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[order].code = $loinc#55115-0 "Requested imaging studies information Document"
* section[order].entry ^slicing.discriminator.type = #type
* section[order].entry ^slicing.discriminator.path = "resolve()"
* section[order].entry ^slicing.ordered = false
* section[order].entry ^slicing.rules = #open
* section[order].entry contains order 0..*
* section[order].entry[order] only Reference($OrderEuImagingUrl)
* section[order].entry[order] ^short = "Order reference"
* section[order].entry[order] ^definition = "This entry holds a reference to the order for the Imaging Study and report."
* section[history] ^short = "History"
* section[history].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[history].code = $loinc#11329-0 "History general Narrative - Reported"
* section[procedure] ^short = "Procedure"
* section[procedure].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[procedure].code = $loinc#55111-9 "Current imaging procedure descriptions Document"
* section[procedure].entry ^slicing.discriminator.type = #type
* section[procedure].entry ^slicing.discriminator.path = "resolve()"
* section[procedure].entry ^slicing.ordered = false
* section[procedure].entry ^slicing.rules = #open
* section[procedure].entry contains procedure 0..*
* section[procedure].entry[procedure] only Reference($ProcedureEuImagingUrl)
* section[comparison] ^short = "History"
* section[comparison].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[comparison].code = $loinc#18834-2 "Radiology Comparison study (narrative)"
* section[comparison].entry ^slicing.discriminator.type = #type
* section[comparison].entry ^slicing.discriminator.path = "resolve()"
* section[comparison].entry ^slicing.ordered = false
* section[comparison].entry ^slicing.rules = #open
* section[comparison].entry contains 
    compared-study 0..* and
    compared-selection 0..*
* section[comparison].entry[compared-study] only Reference($ImagingStudyEuImagingUrl)
* section[comparison].entry[compared-selection] only Reference($ImagingSelectionEuImagingUrl)
* section[findings] ^short = "Findings"
* section[findings].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[findings].code = $loinc#59776-5 "Findings"
* section[findings].entry ^slicing.discriminator.type = #type
* section[findings].entry ^slicing.discriminator.path = "resolve()"
* section[findings].entry ^slicing.ordered = false
* section[findings].entry ^slicing.rules = #open
* section[findings].entry contains
    finding 0..* and
    keyimage-ref 0..* and
    keyimage-sel 0..*
* section[findings].entry[finding] only Reference($FindingEuImagingUrl)
* section[findings].entry[keyimage-ref] only Reference($DocumentReferenceKeyImageEuImagingUrl)
* section[findings].entry[keyimage-sel] only Reference($KeyImageImagingSelectionEuImagingUrl)
* section[impression] ^short = "Impressions"
* section[impression].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[impression].code = $loinc#19005-8 "Radiology Imaging study [Impression] (narrative)"
* section[impression].entry ^slicing.discriminator.type = #type
* section[impression].entry ^slicing.discriminator.path = "resolve()"
* section[impression].entry ^slicing.ordered = false
* section[impression].entry ^slicing.rules = #open
* section[impression].entry contains
    finding 0..* and
    impression 0..* and
    keyimage-ref 0..* and
    keyimage-sel 0..*
* section[impression].entry[finding] only Reference($FindingEuImagingUrl)
* section[impression].entry[impression] only Reference($EuConditionUrl)
* section[impression].entry[keyimage-ref] only Reference($DocumentReferenceKeyImageEuImagingUrl)
* section[impression].entry[keyimage-sel] only Reference($KeyImageImagingSelectionEuImagingUrl)
* section[recommendation] ^short = "Recommendations"
* section[recommendation].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[recommendation].code = $loinc#18783-1 "Radiology Study recommendation (narrative)"
* section[recommendation].entry ^slicing.discriminator.type = #type
* section[recommendation].entry ^slicing.discriminator.path = "resolve()"
* section[recommendation].entry ^slicing.ordered = false
* section[recommendation].entry ^slicing.rules = #open
* section[recommendation].entry contains careplan 0..*
* section[recommendation].entry[careplan] only Reference($EuCarePlanUrl)
* section[communication] ^short = "Communications"
* section[communication].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* section[communication].code = $loinc#68604-8 "Radiology Diagnostic study note"

Invariant: eu-imaging-composition-1
Description: "When a section is empty, the emptyReason extension SHALL be present."
* severity = #error
* expression = "entry.exists() or emptyReason.exists()"
