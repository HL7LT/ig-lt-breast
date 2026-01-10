Profile: ConditionEu
Parent: Condition
Id: ConditionEu
Title: "EU Condition"
Description: "A condition profile for the EU."
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
* ^url = $EuConditionUrl
* extension contains ArtifactRelatedArtifact named relatedArtifact 0..*
* bodySite from SNOMEDCTBodyStructures (preferred)
* subject only Reference($EuPatientUrl or Group)
* participant.actor only Reference($EuPractitionerUrl or $EuPractitionerRoleUrl or $EuPatientUrl or Device or RelatedPerson or $EuOrganizationUrl or CareTeam)