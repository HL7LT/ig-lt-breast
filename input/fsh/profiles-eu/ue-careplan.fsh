Profile: CarePlanEu
Parent: CarePlan
Id: CarePlanEu
Title: "EU CarePlan"
Description: """Care plan for the patient. 
Contains the narrative containing the plan including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient. In the future it is expected that the care plan could be provided in a structured and coded format."""
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^version = "0.1.0-ballot"
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = $EuCarePlanUrl 
* title.extension contains XhtmlRepresentation named xthml 0..1
* description.extension contains XhtmlRepresentation named xthml 0..1
* subject only Reference($EuPatientUrl or Group)
* custodian only Reference($EuPractitionerRoleUrl or $EuPatientUrl or Device or RelatedPerson or $EuOrganizationUrl or CareTeam)
* contributor only Reference($EuPractitionerRoleUrl or $EuPatientUrl or Device or RelatedPerson or $EuOrganizationUrl or CareTeam)